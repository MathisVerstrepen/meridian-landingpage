<script lang="ts" setup>
defineProps<{
    featureRefs: Record<string, HTMLElement>;
}>();
</script>

<template>
    <div
        id="visual-canvas"
        :ref="(el) => (featureRefs['visual-canvas'] = el as HTMLElement)"
        class="scroll-mt-24"
    >
        <div class="flex items-center space-x-4">
            <div
                class="bg-ember-glow/10 text-ember-glow flex h-10 w-10 shrink-0 items-center
                    justify-center rounded-lg"
            >
                <Icon name="mdi:sitemap-outline" class="h-6 w-6" />
            </div>
            <h3 class="text-obsidian text-2xl font-bold tracking-tight sm:text-3xl">
                Visual Graph Canvas
            </h3>
        </div>
        <p class="text-obsidian/70 mt-4 text-lg leading-relaxed">
            The heart of Meridian is an infinite, interactive canvas where you architect AI
            workflows by connecting nodes. Drag, drop, and arrange components to visualize complex
            logic that would be impossible to follow in a linear chat. Watch execution flow in
            real-time with animated connections and live status indicators.
        </p>
        <div class="mt-8 space-y-10">
            <div>
                <h4 class="text-obsidian mb-4 text-xl font-semibold">Execution Control</h4>
                <p class="text-obsidian/70 mb-4">
                    Select any node to execute precisely what you need:
                </p>
                <ul class="space-y-4">
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">Run Upstream</span>: Execute
                            all parent nodes feeding into your selection.
                        </p>
                    </li>
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">Run Downstream</span>: Execute
                            selected nodes and all their children.
                        </p>
                    </li>
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">Run Selected</span>: Execute
                            only specific nodes.
                        </p>
                    </li>
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">Run All</span>: Process the
                            entire graph from start to finish.
                        </p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</template>

<style scoped></style>
