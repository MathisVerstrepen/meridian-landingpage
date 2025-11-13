<script lang="ts" setup>
const { t } = useI18n();

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
                {{ t('coreFeatures.technicalTooling.title') }}
            </h3>
        </div>
        <p class="text-obsidian/70 mt-4 text-lg leading-relaxed">
            {{ t('coreFeatures.technicalTooling.description') }}
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
                                t('coreFeatures.technicalTooling.items.markdown.title')
                            }}</span
                            >:
                            {{ t('coreFeatures.technicalTooling.items.markdown.description') }}
                        </p>
                    </li>
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">{{
                                t('coreFeatures.technicalTooling.items.latex.title')
                            }}</span
                            >:
                            {{ t('coreFeatures.technicalTooling.items.latex.description') }}
                        </p>
                    </li>
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">{{
                                t('coreFeatures.technicalTooling.items.syntax.title')
                            }}</span
                            >:
                            {{ t('coreFeatures.technicalTooling.items.syntax.description') }}
                        </p>
                    </li>
                    <li class="flex items-start">
                        <Icon
                            name="mdi:check-circle-outline"
                            class="text-ember-glow mt-1 mr-3 h-5 w-5 shrink-0"
                        />
                        <p class="text-obsidian/80">
                            <span class="text-obsidian font-semibold">{{
                                t('coreFeatures.technicalTooling.items.diagrams.title')
                            }}</span
                            >:
                            {{ t('coreFeatures.technicalTooling.items.diagrams.description') }}
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
