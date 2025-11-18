<script lang="ts" setup>
const { t } = useI18n();
const route = useRoute();

// Mobile menu state
const isMobileMenuOpen = ref(false);

// Close mobile menu when route changes
watch(
    () => route.fullPath,
    () => {
        isMobileMenuOpen.value = false;
    },
);

const toggleMobileMenu = () => {
    isMobileMenuOpen.value = !isMobileMenuOpen.value;
};

// Navigation links data for cleaner template
const navLinks = [
    { to: '/', label: 'nav.home' },
    { to: '/use-cases', label: 'nav.useCases' },
    { to: '/features', label: 'nav.features' },
    { to: '/docs', label: 'nav.docs' },
];
</script>

<template>
    <div
        class="hide-scrollbar text-obsidian m-0 h-screen w-full overflow-y-auto
            bg-[rgb(236,228,208)] p-0"
    >
        <nav
            class="border-obsidian/5 fixed top-0 z-50 w-full border-b bg-[rgb(236,228,208)]/80
                backdrop-blur-md transition-all duration-300"
        >
            <div class="mx-auto max-w-7xl px-6 lg:px-8">
                <div class="flex h-20 items-center justify-between">
                    <!-- Logo -->
                    <NuxtLink to="/" class="group flex items-center space-x-3">
                        <div
                            class="bg-ember-glow/10 text-ember-glow group-hover:bg-ember-glow flex
                                h-10 w-10 items-center justify-center rounded-xl transition-colors
                                group-hover:text-white"
                        >
                            <Icon name="local:logo" class="h-6 w-6" />
                        </div>
                        <span class="text-obsidian text-xl font-bold tracking-tight">Meridian</span>
                    </NuxtLink>

                    <!-- Desktop Nav Links -->
                    <div class="hidden items-center space-x-1 md:flex">
                        <NuxtLink
                            v-for="link in navLinks"
                            :key="link.to"
                            :to="link.to"
                            active-class="bg-obsidian/5 text-ember-glow font-semibold"
                            class="text-obsidian/70 hover:bg-obsidian/5 hover:text-obsidian
                                rounded-lg px-4 py-2 text-sm font-medium transition-all"
                        >
                            {{ t(link.label) }}
                        </NuxtLink>
                    </div>

                    <!-- Desktop CTA Buttons -->
                    <div class="hidden items-center space-x-6 md:flex">
                        <a
                            href="https://github.com/MathisVerstrepen/Meridian"
                            target="_blank"
                            class="text-obsidian/70 hover:text-obsidian flex items-center space-x-2
                                text-sm font-medium transition-colors"
                        >
                            <Icon name="simple-icons:github" class="h-5 w-5" />
                            <!-- Assuming icon set -->
                            <span>{{ t('cta.viewGithub') }}</span>
                        </a>
                        <button
                            class="bg-ember-glow text-soft-silk hover:bg-ember-glow/90 rounded-lg
                                px-5 py-2.5 text-sm font-bold shadow-sm transition-transform
                                hover:shadow active:scale-95"
                        >
                            {{ t('cta.getStarted') }}
                        </button>
                    </div>

                    <!-- Mobile Menu Button -->
                    <div class="flex md:hidden">
                        <button
                            @click="toggleMobileMenu"
                            type="button"
                            class="text-obsidian hover:bg-obsidian/10 inline-flex items-center
                                justify-center rounded-md p-2 focus:outline-none"
                            aria-controls="mobile-menu"
                            :aria-expanded="isMobileMenuOpen"
                        >
                            <span class="sr-only">Open main menu</span>
                            <Icon
                                :name="isMobileMenuOpen ? 'heroicons:x-mark' : 'heroicons:bars-3'"
                                class="h-6 w-6"
                            />
                        </button>
                    </div>
                </div>
            </div>

            <!-- Mobile Menu Dropdown -->
            <transition
                enter-active-class="transition duration-200 ease-out"
                enter-from-class="transform -translate-y-2 opacity-0"
                enter-to-class="transform translate-y-0 opacity-100"
                leave-active-class="transition duration-150 ease-in"
                leave-from-class="transform translate-y-0 opacity-100"
                leave-to-class="transform -translate-y-2 opacity-0"
            >
                <div
                    v-if="isMobileMenuOpen"
                    class="border-obsidian/5 border-b bg-[rgb(236,228,208)] md:hidden"
                    id="mobile-menu"
                >
                    <div class="space-y-1 px-4 pt-2 pb-6">
                        <NuxtLink
                            v-for="link in navLinks"
                            :key="link.to"
                            :to="link.to"
                            active-class="bg-obsidian/5 text-ember-glow font-semibold"
                            class="text-obsidian/80 hover:bg-obsidian/5 hover:text-obsidian block
                                rounded-md px-3 py-3 text-base font-medium"
                        >
                            {{ t(link.label) }}
                        </NuxtLink>

                        <div class="border-obsidian/10 mt-4 border-t pt-4">
                            <a
                                href="https://github.com/MathisVerstrepen/Meridian"
                                target="_blank"
                                class="text-obsidian/80 hover:bg-obsidian/5 flex w-full items-center
                                    space-x-2 rounded-md px-3 py-3 text-base font-medium"
                            >
                                <Icon name="simple-icons:github" class="h-5 w-5" />
                                <span>{{ t('cta.viewGithub') }}</span>
                            </a>
                            <button
                                class="bg-ember-glow text-soft-silk hover:bg-ember-glow/90 mt-4
                                    w-full rounded-lg px-4 py-3 text-center text-base font-bold
                                    shadow-sm"
                            >
                                {{ t('cta.getStarted') }}
                            </button>
                        </div>
                    </div>
                </div>
            </transition>
        </nav>

        <span class="block h-16"></span>

        <div class="px-16">
            <slot />
        </div>
    </div>
</template>

<style scoped>
/* Ensure smooth scrolling if not already set globally */
html {
    scroll-behavior: smooth;
}
</style>
