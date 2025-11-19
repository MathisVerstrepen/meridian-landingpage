# Stage 1: Build the static application
FROM node:22-alpine AS builder

# Enable pnpm via corepack (included in Node 20+)
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

WORKDIR /app

# Copy package configuration
COPY package.json pnpm-lock.yaml* ./

# Install dependencies (frozen-lockfile ensures exact versions from lockfile)
RUN pnpm install --frozen-lockfile

# Copy the rest of the application code
COPY . .

# Generate the static site
# This runs "nuxt generate" as defined in your package.json
RUN pnpm run generate

# Stage 2: Serve with Nginx
FROM nginx:alpine AS production

# Copy the static files generated in the builder stage to Nginx's html directory
COPY --from=builder /app/.output/public /usr/share/nginx/html

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]