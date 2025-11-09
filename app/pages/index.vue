<script lang="ts" setup>
const { t } = useI18n();
</script>

<template>
    <div class="font-outfit text-soft-silk min-h-screen bg-[#ece4d0]">
        <!-- Hero Section -->
        <section
            class="bg-obsidian relative mx-auto w-fit overflow-hidden rounded-3xl px-6 pt-24
                lg:px-8"
        >
            <div class="max-w-8xl mx-auto flex pb-24 sm:pb-32">
                <!-- Main Heading -->
                <div class="text-center">
                    <!-- Badge -->
                    <div class="mb-8 flex justify-center">
                        <div
                            class="border-stone-gray/20 bg-anthracite/30 inline-flex items-center
                                space-x-2 rounded-full border px-4 py-1.5 backdrop-blur-sm"
                        >
                            <Icon
                                name="mdi:open-source-initiative"
                                class="text-ember-glow h-4 w-4"
                            />
                            <span class="text-ember-glow text-sm">{{ t('hero.badge') }}</span>
                        </div>
                    </div>

                    <h1 class="mb-6 text-5xl font-bold tracking-tight sm:text-7xl">
                        <span
                            class="from-soft-silk to-stone-gray bg-linear-to-r bg-clip-text
                                text-transparent"
                        >
                            {{ t('hero.title') }}
                        </span>
                    </h1>
                    <p
                        class="text-stone-gray mx-auto mb-10 max-w-3xl text-lg leading-relaxed
                            sm:text-xl"
                    >
                        {{ t('hero.subtitle') }}
                    </p>

                    <!-- CTA Buttons -->
                    <div class="flex flex-col items-center justify-center gap-4 sm:flex-row">
                        <button
                            class="bg-ember-glow text-soft-silk hover:bg-ember-glow/90 flex
                                items-center space-x-2 rounded-lg px-8 py-4 text-base font-semibold
                                transition"
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
                <div
                    class="border-stone-gray/10 bg-anthracite/30 mt-20 w-1/2 rounded-2xl border p-2
                        backdrop-blur-sm"
                >
                    <div class="bg-obsidian overflow-hidden rounded-xl">
                        <NuxtImg
                            src="/docs/imgs/main-canvas-view.png"
                            alt="Meridian Canvas View"
                            class="w-full"
                        />
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="border-anthracite/20 mt-20 border-t px-6 py-12 lg:px-8">
            <div class="mx-auto max-w-7xl">
                <div
                    class="flex flex-col items-center justify-between space-y-4 sm:flex-row
                        sm:space-y-0"
                >
                    <div class="text-ember-glow flex items-center space-x-2">
                        <div
                            class="bg-ember-glow/10 flex h-8 w-8 items-center justify-center
                                rounded-lg"
                        >
                            <Icon name="local:logo" class="h-5 w-5" />
                        </div>
                        <span class="text-xl font-semibold">Meridian</span>
                    </div>
                    <p class="text-anthracite text-sm">
                        Made with <span class="text-ember-glow">❤️</span> by Mathis Verstrepen • MIT
                        Licensed
                    </p>
                    <div class="flex items-center space-x-6">
                        <a
                            href="https://github.com/MathisVerstrepen/Meridian"
                            target="_blank"
                            class="text-anthracite hover:text-ember-glow transition"
                        >
                            <Icon name="mdi:github" class="h-8 w-8" />
                        </a>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</template>

<style scoped></style>
