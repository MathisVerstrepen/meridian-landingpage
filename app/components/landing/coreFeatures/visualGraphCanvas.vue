<script lang="ts" setup>
const { t } = useI18n();

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
                {{ t('coreFeatures.visualCanvas.title') }}
            </h3>
        </div>
        <p class="text-obsidian/70 mt-4 text-lg leading-relaxed">
            {{ t('coreFeatures.visualCanvas.description') }}
        </p>
        <div class="mt-8 space-y-10">
            <div>
                <h4 class="text-obsidian mb-4 text-xl font-semibold">
                    {{ t('coreFeatures.visualCanvas.executionControl.title') }}
                </h4>
                <p class="text-obsidian/70 mb-4">
                    {{ t('coreFeatures.visualCanvas.executionControl.description') }}
                </p>
                <ul class="space-y-4">
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">{{
                                t(
                                    'coreFeatures.visualCanvas.executionControl.items.runUpstream.title',
                                )
                            }}</span
                            >:
                            {{
                                t(
                                    'coreFeatures.visualCanvas.executionControl.items.runUpstream.description',
                                )
                            }}
                        </p>
                    </li>
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">{{
                                t(
                                    'coreFeatures.visualCanvas.executionControl.items.runDownstream.title',
                                )
                            }}</span
                            >:
                            {{
                                t(
                                    'coreFeatures.visualCanvas.executionControl.items.runDownstream.description',
                                )
                            }}
                        </p>
                    </li>
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">{{
                                t(
                                    'coreFeatures.visualCanvas.executionControl.items.runSelected.title',
                                )
                            }}</span
                            >:
                            {{
                                t(
                                    'coreFeatures.visualCanvas.executionControl.items.runSelected.description',
                                )
                            }}
                        </p>
                    </li>
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">{{
                                t('coreFeatures.visualCanvas.executionControl.items.runAll.title')
                            }}</span
                            >:
                            {{
                                t(
                                    'coreFeatures.visualCanvas.executionControl.items.runAll.description',
                                )
                            }}
                        </p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</template>

<style scoped></style>
