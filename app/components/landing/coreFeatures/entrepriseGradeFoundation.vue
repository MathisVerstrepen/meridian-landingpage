<script lang="ts" setup>
defineProps<{
    featureRefs: Record<string, HTMLElement>;
}>();
</script>

<template>
    <div
        id="enterprise-foundation"
        :ref="(el) => (featureRefs['enterprise-foundation'] = el as HTMLElement)"
        class="scroll-mt-24"
    >
        <div class="flex items-center space-x-4">
            <div
                class="bg-ember-glow/10 text-ember-glow flex h-10 w-10 shrink-0 items-center
                    justify-center rounded-lg"
            >
                <Icon name="mdi:shield-check-outline" class="h-6 w-6" />
            </div>
            <h3 class="text-obsidian text-2xl font-bold tracking-tight sm:text-3xl">
                Enterprise-Grade Foundation
            </h3>
        </div>
        <p class="text-obsidian/70 mt-4 text-lg leading-relaxed">
            Built from the ground up with security, scalability, and observability in mind.
        </p>
        <div class="mt-8 space-y-10">
            <div>
                <ul class="space-y-4">
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">Secure Authentication</span>:
                            OAuth 2.0 (GitHub, Google) + username/password with JWT and rotating
                            refresh tokens.
                        </p>
                    </li>
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">Hybrid Data Storage</span>:
                            PostgreSQL for structured data, Neo4j for graph relationships—optimal
                            performance for both queries and traversals.
                        </p>
                    </li>
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">Cost Tracking</span>: Every
                            API call shows exact cost and token usage in the chat footer. Monitor
                            spending at glance.
                        </p>
                    </li>
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">Sentry Integration</span>:
                            Optional real-time error tracking and performance monitoring for both
                            frontend and backend.
                        </p>
                    </li>
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">Docker Deployment</span>:
                            Production-ready setup with pre-built images or source builds.
                            One-command deployment with persistent data volumes.
                        </p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</template>

<style scoped></style>
