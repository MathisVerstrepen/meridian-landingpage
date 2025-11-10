<script lang="ts" setup>
const { t } = useI18n();

const mouseX = ref(0);
const mouseY = ref(0);
const isHoveringHero = ref(false);

const handleHeroMouseMove = (event: MouseEvent) => {
    const rect = (event.currentTarget as HTMLElement).getBoundingClientRect();
    mouseX.value = event.clientX - rect.left;
    mouseY.value = event.clientY - rect.top;
};

const handleHeroMouseEnter = () => {
    isHoveringHero.value = true;
};

const handleHeroMouseLeave = () => {
    isHoveringHero.value = false;
};
</script>

<template>
    <section
        class="bg-obsidian relative mx-auto flex min-h-[80vh] max-w-400 items-center justify-center
            overflow-hidden rounded-3xl px-6 pt-24 lg:px-8"
        @mousemove="handleHeroMouseMove"
        @mouseenter="handleHeroMouseEnter"
        @mouseleave="handleHeroMouseLeave"
    >
        <LandingDotBackground
            class="absolute inset-0 z-0"
            :glow-x="mouseX"
            :glow-y="mouseY"
            :show-glow="isHoveringHero"
        />

        <div class="z-10 mx-auto flex pb-24 sm:pb-32">
            <!-- Main Heading -->
            <div class="text-center">
                <!-- Badge -->
                <div class="mb-8 flex justify-center">
                    <div
                        class="border-stone-gray/20 bg-anthracite/30 inline-flex items-center
                            space-x-2 rounded-full border px-4 py-1.5 backdrop-blur-sm"
                    >
                        <Icon name="mdi:open-source-initiative" class="text-ember-glow h-4 w-4" />
                        <span class="text-ember-glow text-sm">{{ t('hero.badge') }}</span>
                    </div>
                </div>

                <h1 class="mb-10 text-5xl font-bold tracking-tight sm:text-7xl">
                    <span
                        class="from-soft-silk to-stone-gray bg-linear-to-r bg-clip-text
                            text-transparent"
                    >
                        {{ t('hero.title') }}
                    </span>
                </h1>
                <p
                    class="text-stone-gray mx-auto mb-16 max-w-3xl text-lg leading-relaxed
                        sm:text-xl"
                >
                    {{ t('hero.subtitle') }}
                </p>

                <!-- CTA Buttons -->
                <div class="flex flex-col items-center justify-center gap-4 sm:flex-row">
                    <button
                        class="bg-ember-glow text-soft-silk hover:bg-ember-glow/90 flex items-center
                            space-x-2 rounded-lg px-8 py-4 text-base font-semibold transition"
                    >
                        <span>{{ t('cta.getStarted') }}</span>
                        <Icon name="mdi:arrow-right" class="h-5 w-5" />
                    </button>
                    <a
                        href="https://github.com/MathisVerstrepen/Meridian"
                        target="_blank"
                        class="border-stone-gray/30 bg-anthracite/30 text-soft-silk
                            hover:border-stone-gray/50 hover:bg-anthracite/50 flex items-center
                            space-x-2 rounded-lg border px-8 py-4 text-base font-semibold
                            backdrop-blur-sm transition"
                    >
                        <Icon name="mdi:github" class="h-5 w-5" />
                        <span>{{ t('cta.viewGithub') }}</span>
                    </a>
                </div>
            </div>

            <!-- Hero Visual -->
            <div class="ml-5 w-1/2 min-w-[700px] shrink-0 rounded-2xl">
                <div class="relative h-full w-full rounded-xl">
                    <LandingHeroGraph
                        class="absolute! -top-50! -left-55! scale-[0.48] overflow-visible!"
                    />
                </div>
            </div>
        </div>
    </section>
</template>

<style scoped></style>
