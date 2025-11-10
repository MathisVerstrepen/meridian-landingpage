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
    <div class="font-outfit text-soft-silk min-h-screen bg-[#ece4d0]">
        <!-- Hero Section -->
        <section
            class="bg-obsidian relative mx-auto flex min-h-[80vh] max-w-400 items-center
                justify-center overflow-hidden rounded-3xl px-6 pt-24 lg:px-8"
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
                            <Icon
                                name="mdi:open-source-initiative"
                                class="text-ember-glow h-4 w-4"
                            />
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
                <div class="ml-5 w-1/2 min-w-[700px] shrink-0 rounded-2xl">
                    <div class="relative h-full w-full rounded-xl">
                        <LandingHeroGraph
                            class="absolute! -top-50! -left-55! scale-[0.48] overflow-visible!"
                        />
                    </div>
                </div>
            </div>
        </section>

        <!-- Problem Section -->
        <section class="mx-auto max-w-400 px-6 py-24 sm:py-32 lg:px-8">
            <div class="mx-auto max-w-4xl text-center">
                <h2 class="text-obsidian text-4xl font-bold tracking-tight sm:text-5xl">
                    The Problem with Traditional AI Chat
                </h2>
                <p class="text-obsidian/80 mt-6 text-lg leading-8">
                    Linear chat doesn't match non-linear thinking. Your ideas branch, merge, and
                    evolve—your AI tools should too.
                </p>
            </div>

            <!-- Visual Comparison -->
            <div class="mt-16 grid grid-cols-1 gap-8 lg:grid-cols-2 lg:gap-12">
                <!-- The Old Way: Linear Chat -->
                <div class="bg-obsidian/10 border-obsidian/10 rounded-2xl border-2 p-8">
                    <h3 class="text-obsidian text-center text-2xl font-semibold">
                        The Old Way: Linear Chat
                    </h3>
                    <div class="mt-6 rounded-lg p-4">
                        <div class="space-y-4">
                            <!-- Chat Bubble 1 -->
                            <div class="text-soft-silk bg-obsidian rounded-lg p-3">
                                <p class="font-semibold">You</p>
                                <p class="text-stone-gray mt-1">
                                    My API endpoint is too slow. How can I optimize it?
                                </p>
                            </div>
                            <!-- Chat Bubble 2 -->
                            <div class="text-soft-silk bg-obsidian rounded-lg p-3">
                                <p class="text-ember-glow font-semibold">AI</p>
                                <p class="text-stone-gray mt-1">
                                    You could optimize the database query by adding an index...
                                </p>
                            </div>
                            <!-- Frustration Point -->
                            <div
                                class="border-merlot-wine/50 text-merlot-wine-dark bg-merlot-wine/10
                                    flex items-center justify-center rounded-md border p-2
                                    text-center text-sm"
                            >
                                <Icon name="mdi:arrow-u-left-top" class="mr-2 inline" />
                                Wait, what if caching is better? You scroll up to reconsider...
                            </div>
                            <!-- Chat Bubble 3 -->
                            <div class="text-soft-silk bg-obsidian rounded-lg p-3">
                                <p class="font-semibold">You</p>
                                <p class="text-stone-gray mt-1">
                                    Actually, could we try a caching strategy instead?
                                </p>
                            </div>
                            <!-- Chat Bubble 4 -->
                            <div class="text-soft-silk bg-obsidian rounded-lg p-3">
                                <p class="text-ember-glow font-semibold">AI</p>
                                <p class="text-stone-gray mt-1">
                                    Sure, here's how to implement Redis caching...
                                </p>
                            </div>
                            <!-- Frustration Point -->
                            <div
                                class="border-golden-ochre/50 text-golden-ochre-dark
                                    bg-golden-ochre/10 flex items-center justify-center rounded-md
                                    border p-2 text-center text-sm"
                            >
                                <Icon name="mdi:call-split" class="mr-2 inline" />
                                Now you have two competing solutions in one messy thread.
                            </div>
                            <!-- Chat Bubble 5 -->
                            <div class="text-soft-silk bg-obsidian rounded-lg p-3">
                                <p class="font-semibold">You</p>
                                <p class="text-stone-gray mt-1">
                                    What about async processing? And can you show me the database
                                    query again?
                                </p>
                            </div>
                            <!-- Frustration Point -->
                            <div
                                class="border-dried-heather/50 text-dried-heather-dark
                                    bg-dried-heather/10 flex items-center justify-center rounded-md
                                    border p-2 text-center text-sm"
                            >
                                <Icon name="mdi:content-copy" class="mr-2 inline" />
                                You've lost the original context. Time to copy-paste everything
                                again.
                            </div>
                        </div>
                    </div>
                </div>

                <!-- The Meridian Way: Visual Workflow -->
                <div class="bg-obsidian/10 border-obsidian/10 rounded-2xl border-2 p-8">
                    <h3 class="text-obsidian text-center text-2xl font-semibold">
                        The Meridian Way: Visual Workflow
                    </h3>
                    <div class="relative mt-6 flex min-h-[400px] items-center justify-center">
                        <svg class="absolute inset-0 h-full w-full" aria-hidden="true">
                            <defs>
                                <marker
                                    id="arrowhead"
                                    markerWidth="10"
                                    markerHeight="10"
                                    refX="8"
                                    refY="3"
                                    orient="auto"
                                >
                                    <polygon points="0 0, 10 3, 0 6" fill="#403d39" />
                                </marker>
                            </defs>
                            <line
                                x1="50%"
                                y1="84"
                                x2="50%"
                                y2="140"
                                stroke="#403d39"
                                stroke-width="2"
                                marker-end="url(#arrowhead)"
                            />
                            <path
                                d="M 50% 140 C 40% 180, 30% 220, 25% 260"
                                stroke="#403d39"
                                stroke-width="2"
                                fill="none"
                                marker-end="url(#arrowhead)"
                            />
                            <path
                                d="M 50% 140 C 50% 180, 50% 220, 50% 260"
                                stroke="#403d39"
                                stroke-width="2"
                                fill="none"
                                marker-end="url(#arrowhead)"
                            />
                            <path
                                d="M 50% 140 C 60% 180, 70% 220, 75% 260"
                                stroke="#403d39"
                                stroke-width="2"
                                fill="none"
                                marker-end="url(#arrowhead)"
                            />
                        </svg>
                        <div
                            class="bg-slate-blue/80 absolute top-4 left-1/2 z-10 w-48
                                -translate-x-1/2 transform rounded-lg p-3 text-center shadow-lg"
                        >
                            <p class="font-bold text-white">Prompt Node</p>
                            <p class="text-sm text-slate-200">"Optimize slow API"</p>
                        </div>
                        <div
                            class="bg-deep-sea-teal/80 absolute top-36 left-1/2 z-10 w-48
                                -translate-x-1/2 transform rounded-lg p-3 text-center shadow-lg"
                        >
                            <p class="font-bold text-white">Context Node</p>
                            <p class="text-sm text-teal-100">`api_endpoint.py`</p>
                        </div>
                        <div
                            class="bg-olive-grove/80 absolute bottom-0 left-4 z-10 w-44 rounded-lg
                                p-3 text-center shadow-lg"
                        >
                            <p class="font-bold text-white">Branch A</p>
                            <p class="text-sm text-lime-100">Database Indexing</p>
                        </div>
                        <div
                            class="bg-golden-ochre/80 absolute bottom-0 left-1/2 z-10 w-44
                                -translate-x-1/2 transform rounded-lg p-3 text-center shadow-lg"
                        >
                            <p class="font-bold text-white">Branch B</p>
                            <p class="text-sm text-yellow-100">Redis Caching</p>
                        </div>
                        <div
                            class="bg-dried-heather/80 absolute right-4 bottom-0 z-10 w-44
                                rounded-lg p-3 text-center shadow-lg"
                        >
                            <p class="font-bold text-white">Branch C</p>
                            <p class="text-sm text-purple-100">Async Processing</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="border-anthracite/20 mt-20 border-t px-6 py-12 lg:px-8">
            <div class="mx-auto max-w-400">
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
