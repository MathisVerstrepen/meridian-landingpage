<script lang="ts" setup>
const { t } = useI18n();

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
                {{ t('coreFeatures.nodeSystem.title') }}
            </h3>
        </div>
        <p class="text-obsidian/70 mt-4 text-lg leading-relaxed">
            {{ t('coreFeatures.nodeSystem.description') }}
        </p>
        <div class="mt-8 space-y-10">
            <div>
                <h4 class="text-obsidian mb-4 text-xl font-semibold">
                    {{ t('coreFeatures.nodeSystem.inputNodes.title') }}
                </h4>
                <div class="grid grid-cols-1 gap-4 sm:grid-cols-1">
                    <div class="bg-obsidian/5 rounded-xl p-6">
                        <p class="text-obsidian font-semibold">
                            {{ t('coreFeatures.nodeSystem.inputNodes.items.prompt.title') }}
                        </p>
                        <p class="text-obsidian/70 mt-1 text-sm">
                            {{ t('coreFeatures.nodeSystem.inputNodes.items.prompt.description') }}
                        </p>
                    </div>
                    <div class="bg-obsidian/5 rounded-xl p-6">
                        <p class="text-obsidian font-semibold">
                            {{ t('coreFeatures.nodeSystem.inputNodes.items.attachment.title') }}
                        </p>
                        <p class="text-obsidian/70 mt-1 text-sm">
                            {{
                                t('coreFeatures.nodeSystem.inputNodes.items.attachment.description')
                            }}
                        </p>
                    </div>
                    <div class="bg-obsidian/5 rounded-xl p-6">
                        <p class="text-obsidian font-semibold">
                            {{ t('coreFeatures.nodeSystem.inputNodes.items.github.title') }}
                        </p>
                        <p class="text-obsidian/70 mt-1 text-sm">
                            {{ t('coreFeatures.nodeSystem.inputNodes.items.github.description') }}
                        </p>
                    </div>
                </div>
            </div>
            <div>
                <h4 class="text-obsidian mb-4 text-xl font-semibold">
                    {{ t('coreFeatures.nodeSystem.generatorNodes.title') }}
                </h4>
                <div class="grid grid-cols-1 gap-4 sm:grid-cols-1">
                    <div class="bg-obsidian/5 rounded-xl p-6">
                        <p class="text-obsidian font-semibold">
                            {{ t('coreFeatures.nodeSystem.generatorNodes.items.textToText.title') }}
                        </p>
                        <p class="text-obsidian/70 mt-1 text-sm">
                            {{
                                t(
                                    'coreFeatures.nodeSystem.generatorNodes.items.textToText.description',
                                )
                            }}
                        </p>
                    </div>
                    <div class="bg-obsidian/5 rounded-xl p-6">
                        <p class="text-obsidian font-semibold">
                            {{
                                t(
                                    'coreFeatures.nodeSystem.generatorNodes.items.parallelization.title',
                                )
                            }}
                        </p>
                        <p class="text-obsidian/70 mt-1 text-sm">
                            {{
                                t(
                                    'coreFeatures.nodeSystem.generatorNodes.items.parallelization.description',
                                )
                            }}
                        </p>
                    </div>
                    <div class="bg-obsidian/5 rounded-xl p-6">
                        <p class="text-obsidian font-semibold">
                            {{ t('coreFeatures.nodeSystem.generatorNodes.items.routing.title') }}
                        </p>
                        <p class="text-obsidian/70 mt-1 text-sm">
                            {{
                                t(
                                    'coreFeatures.nodeSystem.generatorNodes.items.routing.description',
                                )
                            }}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped></style>
