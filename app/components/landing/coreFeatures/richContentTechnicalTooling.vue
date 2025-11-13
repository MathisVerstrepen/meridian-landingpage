<script lang="ts" setup>
defineProps<{
    featureRefs: Record<string, HTMLElement>;
}>();
</script>

<template>
    <div
        id="technical-tooling"
        :ref="(el) => (featureRefs['technical-tooling'] = el as HTMLElement)"
        class="scroll-mt-24"
    >
        <div class="flex items-center space-x-4">
            <div
                class="bg-ember-glow/10 text-ember-glow flex h-10 w-10 shrink-0 items-center
                    justify-center rounded-lg"
            >
                <Icon name="mdi:tools" class="h-6 w-6" />
            </div>
            <h3 class="text-obsidian text-2xl font-bold tracking-tight sm:text-3xl">
                Rich Content & Technical Tooling
            </h3>
        </div>
        <p class="text-obsidian/70 mt-4 text-lg leading-relaxed">
            Meridian is built for technical workflows with first-class support for developer-centric
            content.
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
                            <span class="text-obsidian font-semibold">Full Markdown Support</span>:
                            Headers, tables, lists, and formatting rendered beautifully.
                        </p>
                    </li>
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">LaTeX Rendering</span>:
                            Complex mathematical notation with KaTeX integration.
                        </p>
                    </li>
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">Syntax Highlighting</span>:
                            220+ programming languages with dynamic grammar loading for minimal
                            footprint.
                        </p>
                    </li>
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">AI-Powered Diagrams</span>:
                            Generate Mermaid.js flowcharts, sequence diagrams, Gantt charts, and
                            entity diagrams directly in chat. Export as PNG or edit the source code.
                        </p>
                    </li>
                    <!-- <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">Context Windows</span>: Visual
                            indicators show token usage vs. model limits per node.
                        </p>
                    </li> -->
                </ul>
            </div>
        </div>
    </div>
</template>

<style scoped></style>
