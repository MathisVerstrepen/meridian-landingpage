<script lang="ts" setup>
const { t } = useI18n();

defineProps<{
    featureRefs: Record<string, HTMLElement>;
}>();
</script>

<template>
    <div
        id="integrated-experience"
        :ref="(el) => (featureRefs['integrated-experience'] = el as HTMLElement)"
        class="scroll-mt-24"
    >
        <div class="flex items-center space-x-4">
            <div
                class="bg-ember-glow/10 text-ember-glow flex h-10 w-10 shrink-0 items-center
                    justify-center rounded-lg"
            >
                <Icon name="mdi:swap-horizontal-bold" class="h-6 w-6" />
            </div>
            <h3 class="text-obsidian text-2xl font-bold tracking-tight sm:text-3xl">
                {{ t('coreFeatures.integratedExperience.title') }}
            </h3>
        </div>
        <p class="text-obsidian/70 mt-4 text-lg leading-relaxed">
            {{ t('coreFeatures.integratedExperience.description') }}
        </p>

        <!-- Side-by-Side View Comparison -->
        <div class="mt-8 grid grid-cols-1 gap-6 lg:grid-cols-2">
            <!-- Graph View -->
            <div
                class="bg-obsidian border-obsidian/10 relative flex items-center justify-center
                    overflow-hidden rounded-2xl border shadow-sm transition-all hover:shadow-md"
            >
                <div
                    class="bg-obsidian/80 absolute top-4 left-4 z-10 rounded-md px-3 py-1.5 text-xs
                        font-semibold text-white backdrop-blur-md"
                >
                    Graph View
                </div>
                <NuxtImg
                    src="/images/integrated_chat_1.png"
                    alt="Graph View Interface"
                    class="h-auto w-full object-cover"
                />
            </div>

            <!-- Chat View -->
            <div
                class="bg-obsidian border-obsidian/10 relative flex items-center justify-center
                    overflow-hidden rounded-2xl border shadow-sm transition-all hover:shadow-md"
            >
                <div
                    class="bg-obsidian/80 absolute top-4 left-4 z-10 rounded-md px-3 py-1.5 text-xs
                        font-semibold text-white backdrop-blur-md"
                >
                    Chat View
                </div>
                <NuxtImg
                    src="/images/integrated_chat_2.png"
                    alt="Chat View Interface"
                    class="h-auto w-full object-cover"
                />
            </div>
        </div>
    </div>
</template>

<style scoped></style>
