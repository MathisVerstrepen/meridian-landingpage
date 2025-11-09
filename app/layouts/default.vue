<script lang="ts" setup>
const { t } = useI18n();
</script>

<template>
    <div class="hide-scrollbar m-0 min-h-screen w-full overflow-y-auto bg-[#ece4d0] p-0">
        <nav class="fixed top-0 z-50 w-full backdrop-blur-xl">
            <div class="mx-auto max-w-7xl px-6 lg:px-8">
                <div class="flex h-16 items-center justify-between">
                    <!-- Logo -->
                    <div class="text-ember-glow flex items-center space-x-2">
                        <div
                            class="bg-ember-glow/10 flex h-8 w-8 items-center justify-center
                                rounded-lg"
                        >
                            <Icon name="local:logo" class="h-5 w-5" />
                        </div>
                        <span class="text-xl font-semibold">Meridian</span>
                    </div>

                    <!-- Nav Links -->
                    <div class="hidden items-center space-x-8 md:flex">
                        <NuxtLink
                            to="/"
                            class="text-obsidian hover:text-ember-glow text-sm font-medium
                                transition"
                        >
                            {{ t('nav.home') }}
                        </NuxtLink>
                        <NuxtLink
                            to="/use-cases"
                            class="text-obsidian hover:text-obsidian text-sm font-medium transition"
                        >
                            {{ t('nav.useCases') }}
                        </NuxtLink>
                        <NuxtLink
                            to="/features"
                            class="text-obsidian hover:text-obsidian text-sm font-medium transition"
                        >
                            {{ t('nav.features') }}
                        </NuxtLink>
                        <NuxtLink
                            to="/docs"
                            class="text-obsidian hover:text-obsidian text-sm font-medium transition"
                        >
                            {{ t('nav.docs') }}
                        </NuxtLink>
                    </div>

                    <!-- CTA Buttons -->
                    <div class="flex items-center space-x-4">
                        <a
                            href="https://github.com/MathisVerstrepen/Meridian"
                            target="_blank"
                            class="text-obsidian hover:text-obsidian hidden text-sm font-medium
                                transition md:block"
                        >
                            {{ t('cta.viewGithub') }}
                        </a>
                        <button
                            class="bg-ember-glow text-soft-silk hover:bg-ember-glow/90 rounded-lg
                                px-4 py-2 text-sm font-semibold transition"
                        >
                            {{ t('cta.getStarted') }}
                        </button>
                    </div>
                </div>
            </div>
        </nav>

        <span class="block h-20"></span>

        <div class="px-16">
            <slot />
        </div>
    </div>
</template>

<style scoped></style>
