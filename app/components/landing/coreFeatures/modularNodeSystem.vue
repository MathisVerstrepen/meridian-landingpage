<script lang="ts" setup>
defineProps<{
    featureRefs: Record<string, HTMLElement>;
}>();
</script>

<template>
    <div
        id="node-system"
        :ref="(el) => (featureRefs['node-system'] = el as HTMLElement)"
        class="scroll-mt-24"
    >
        <div class="flex items-center space-x-4">
            <div
                class="bg-ember-glow/10 text-ember-glow flex h-10 w-10 shrink-0 items-center
                    justify-center rounded-lg"
            >
                <Icon name="mdi:toy-brick-outline" class="h-6 w-6" />
            </div>
            <h3 class="text-obsidian text-2xl font-bold tracking-tight sm:text-3xl">
                Modular Node System
            </h3>
        </div>
        <p class="text-obsidian/70 mt-4 text-lg leading-relaxed">
            Combine a wide array of specialized nodes to feed your AI rich context, perform complex
            processing, and build adaptive logic.
        </p>
        <div class="mt-8 space-y-10">
            <div>
                <h4 class="text-obsidian mb-4 text-xl font-semibold">
                    Input Nodes: Feed Your AI Rich Context
                </h4>
                <div class="grid grid-cols-1 gap-4 sm:grid-cols-1">
                    <div class="bg-obsidian/5 rounded-xl p-6">
                        <p class="text-obsidian font-semibold">Prompt Node</p>
                        <p class="text-obsidian/70 mt-1 text-sm">
                            Structured text input with templating support.
                        </p>
                    </div>
                    <div class="bg-obsidian/5 rounded-xl p-6">
                        <p class="text-obsidian font-semibold">Attachment Node</p>
                        <p class="text-obsidian/70 mt-1 text-sm">
                            Upload PDFs, images, CSVs, and documents that become part of your
                            workflow context.
                        </p>
                    </div>
                    <div class="bg-obsidian/5 rounded-xl p-6">
                        <p class="text-obsidian font-semibold">GitHub Node</p>
                        <p class="text-obsidian/70 mt-1 text-sm">
                            Connect your GitHub account to browse repositories and inject entire
                            codebases, specific files, or directories as context. Perfect for code
                            review, documentation generation, and architecture analysis.
                        </p>
                    </div>
                </div>
            </div>
            <div>
                <h4 class="text-obsidian mb-4 text-xl font-semibold">
                    Generator Nodes: Intelligent Processing Units
                </h4>
                <div class="grid grid-cols-1 gap-4 sm:grid-cols-1">
                    <div class="bg-obsidian/5 rounded-xl p-6">
                        <p class="text-obsidian font-semibold">Text-to-Text</p>
                        <p class="text-obsidian/70 mt-1 text-sm">
                            Standard LLM calls with full parameter control. Connect multiple models
                            in sequence for specialized processing.
                        </p>
                    </div>
                    <div class="bg-obsidian/5 rounded-xl p-6">
                        <p class="text-obsidian font-semibold">Parallelization</p>
                        <p class="text-obsidian/70 mt-1 text-sm">
                            Execute one prompt against multiple AI models simultaneously (e.g.,
                            GPT-5, Claude, and Gemini at once), then use an aggregator model to
                            synthesize a single, superior answer. Ideal for fact-checking, diverse
                            perspective synthesis, and robust analysis.
                        </p>
                    </div>
                    <div class="bg-obsidian/5 rounded-xl p-6">
                        <p class="text-obsidian font-semibold">Routing</p>
                        <p class="text-obsidian/70 mt-1 text-sm">
                            Create conditional logic that dynamically selects the next node or model
                            based on input content. Build stateful agents that adapt their strategy,
                            route to specialized models, or escalate complex queries automatically.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped></style>
