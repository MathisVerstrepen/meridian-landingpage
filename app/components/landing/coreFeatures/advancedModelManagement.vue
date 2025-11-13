<script lang="ts" setup>
const { t } = useI18n();

defineProps<{
    featureRefs: Record<string, HTMLElement>;
}>();
</script>

<template>
    <div
        id="model-management"
        :ref="(el) => (featureRefs['model-management'] = el as HTMLElement)"
        class="scroll-mt-24"
    >
        <div class="flex items-center space-x-4">
            <div
                class="bg-ember-glow/10 text-ember-glow flex h-10 w-10 shrink-0 items-center
                    justify-center rounded-lg"
            >
                <Icon name="mdi:tune-variant" class="h-6 w-6" />
            </div>
            <h3 class="text-obsidian text-2xl font-bold tracking-tight sm:text-3xl">
                {{ t('coreFeatures.modelManagement.title') }}
            </h3>
        </div>
        <p class="text-obsidian/70 mt-4 text-lg leading-relaxed">
            {{ t('coreFeatures.modelManagement.description') }}
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
                            <span class="text-obsidian font-semibold">{{
                                t('coreFeatures.modelManagement.items.pinning.title')
                            }}</span
                            >:
                            {{ t('coreFeatures.modelManagement.items.pinning.description') }}
                        </p>
                    </li>
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">{{
                                t('coreFeatures.modelManagement.items.filtering.title')
                            }}</span
                            >:
                            {{ t('coreFeatures.modelManagement.items.filtering.description') }}
                        </p>
                    </li>
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">{{
                                t('coreFeatures.modelManagement.items.transparency.title')
                            }}</span
                            >:
                            {{ t('coreFeatures.modelManagement.items.transparency.description') }}
                        </p>
                    </li>
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">{{
                                t('coreFeatures.modelManagement.items.control.title')
                            }}</span
                            >:
                            {{ t('coreFeatures.modelManagement.items.control.description') }}
                        </p>
                    </li>
                </ul>
            </div>
            <div>
                <p class="text-obsidian/70 bg-obsidian/5 rounded-lg p-4 text-sm font-medium">
                    {{ t('coreFeatures.modelManagement.supported') }}
                </p>
            </div>
        </div>
    </div>
</template>

<style scoped></style>
