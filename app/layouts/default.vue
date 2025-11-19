<script lang="ts" setup>
const { t, locale, locales, setLocale } = useI18n();
const route = useRoute();

// Mobile menu state
const isMobileMenuOpen = ref(false);
const isLangMenuOpen = ref(false);

// Close menus when route changes
watch(
    () => route.fullPath,
    () => {
        isMobileMenuOpen.value = false;
        isLangMenuOpen.value = false;
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
                <div class="flex h-18 items-center justify-between">
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
                        <!-- Language Selector -->
                        <div class="relative">
                            <button
                                @click="isLangMenuOpen = !isLangMenuOpen"
                                class="text-obsidian/70 hover:text-obsidian flex items-center
                                    space-x-1 text-sm font-medium transition-colors"
                            >
                                <Icon name="heroicons:language" class="h-5 w-5" />
                                <span class="uppercase">{{ locale }}</span>
                                <Icon name="heroicons:chevron-down" class="h-3 w-3 opacity-50" />
                            </button>

                            <!-- Backdrop for closing dropdown -->
                            <div
                                v-if="isLangMenuOpen"
                                class="fixed inset-0 z-10"
                                @click="isLangMenuOpen = false"
                            ></div>

                            <!-- Dropdown -->
                            <div
                                v-if="isLangMenuOpen"
                                class="border-obsidian/10 absolute right-0 z-20 mt-2
                                    w-32 origin-top-right rounded-lg border bg-[rgb(236,228,208)]
                                    p-1 shadow-lg focus:outline-none flex flex-col space-y-1"
                            >
                                <button
                                    v-for="l in locales"
                                    :key="l.code"
                                    @click="
                                        setLocale(l.code);
                                        isLangMenuOpen = false;
                                    "
                                    class="flex w-full items-center justify-between rounded-md px-3
                                        py-2 text-sm"
                                    :class="
                                        locale === l.code
                                            ? 'bg-obsidian/5 text-ember-glow font-semibold'
                                            : `text-obsidian/70 hover:bg-obsidian/5
                                                hover:text-obsidian`
                                    "
                                >
                                    {{ l.name }}
                                    <Icon
                                        v-if="locale === l.code"
                                        name="heroicons:check"
                                        class="h-4 w-4"
                                    />
                                </button>
                            </div>
                        </div>

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
                            <!-- Mobile Language Selector -->
                            <div class="mb-4 flex items-center justify-between px-3">
                                <span
                                    class="text-obsidian/80 flex items-center space-x-2 font-medium"
                                >
                                    <Icon name="heroicons:language" class="h-5 w-5" />
                                    <span>Language</span>
                                </span>
                                <div class="bg-obsidian/5 flex rounded-lg p-1">
                                    <button
                                        v-for="l in locales"
                                        :key="l.code"
                                        @click="setLocale(l.code)"
                                        class="rounded-md px-3 py-1 text-sm font-medium
                                            transition-all"
                                        :class="
                                            locale === l.code
                                                ? 'text-ember-glow bg-white shadow-sm'
                                                : 'text-obsidian/60 hover:text-obsidian'
                                        "
                                    >
                                        {{ l.code.toUpperCase() }}
                                    </button>
                                </div>
                            </div>

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

<style>
html {
    scroll-behavior: smooth;
}
</style>
