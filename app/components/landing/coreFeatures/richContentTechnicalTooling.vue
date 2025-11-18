<script lang="ts" setup>
const { t } = useI18n();

defineProps<{
    featureRefs: Record<string, HTMLElement>;
}>();

const syntaxShowcase = [
    {
        key: 'markdown',
        label: 'Markdown',
        src: '/images/syntax-markdown.png',
    },
    {
        key: 'latex',
        label: 'LaTeX',
        src: '/images/syntax-latex.png',
    },
    {
        key: 'code',
        label: 'Code',
        src: '/images/syntax-code.png',
    },
    {
        key: 'diagram',
        label: 'Mermaid',
        src: '/images/syntax-diagram.png',
    },
];
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
            <!-- 2x2 Image Grid -->
            <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
                <div
                    v-for="item in syntaxShowcase"
                    :key="item.key"
                    class="border-obsidian/10 bg-obsidian/5 relative overflow-hidden rounded-xl
                        border shadow-sm transition-all hover:shadow-md"
                >
                    <!-- Aspect Ratio Container -->
                    <div class="w-full overflow-hidden">
                        <NuxtImg
                            :src="item.src"
                            :alt="item.label"
                            class="h-full w-full object-cover object-top"
                        />
                    </div>
                    <!-- Overlay Label -->
                    <div
                        class="absolute inset-x-0 bottom-0 bg-linear-to-t from-black/80
                            to-transparent px-4 py-3 pt-8"
                    >
                        <span class="text-soft-silk text-sm font-semibold drop-shadow-md">
                            {{ item.label }}
                        </span>
                    </div>
                </div>
            </div>

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
                </ul>
            </div>
        </div>
    </div>
</template>

<style scoped></style>
