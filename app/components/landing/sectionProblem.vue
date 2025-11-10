<script lang="ts" setup></script>

<template>
    <section class="mx-auto max-w-400 px-6 py-24 sm:py-32 lg:px-8">
        <!-- Section Header -->
        <div class="mx-auto max-w-4xl text-center">
            <div
                class="bg-obsidian/5 mb-6 inline-flex items-center space-x-2 rounded-full px-4 py-2"
            >
                <Icon name="mdi:lightbulb-outline" class="text-ember-glow h-5 w-5" />
                <span class="text-obsidian/70 text-sm font-semibold">The Challenge</span>
            </div>
            <h2
                class="text-obsidian mb-6 text-4xl font-bold tracking-tight sm:text-5xl lg:text-6xl"
            >
                Why Linear Chat Falls Short
            </h2>
            <p class="text-obsidian/70 mx-auto max-w-2xl text-lg leading-8 sm:text-xl">
                Your thinking isn't a straight line—it branches, explores, and iterates. Traditional
                AI chat forces you into a single thread, losing context and clarity.
            </p>
        </div>

        <!-- Visual Comparison -->
        <div
            class="bg-obsidian mt-12 grid grid-cols-1 gap-6 rounded-3xl p-8 lg:grid-cols-2 lg:gap-8"
        >
            <!-- The Old Way: Linear Chat -->
            <div
                class="group relative overflow-hidden rounded-3xl border-2 border-red-900/20
                    bg-linear-to-br from-red-950/10 to-red-900/5 p-8 shadow-xl transition-all
                    duration-300 hover:shadow-2xl"
            >
                <div class="relative flex h-full flex-col">
                    <!-- Header -->
                    <div
                        class="text-merlot-wine mb-8 flex items-center justify-between
                            brightness-200"
                    >
                        <h3 class="flex items-center text-2xl font-bold">
                            <div
                                class="mr-2 flex h-10 w-10 items-center justify-center rounded-full"
                            >
                                <Icon name="mdi:close-circle" class="h-6 w-6" />
                            </div>
                            Linear Chat
                        </h3>
                    </div>

                    <!-- Chat Messages -->
                    <div class="space-y-3">
                        <!-- Message 1 -->
                        <div class="bg-soft-silk/5 transform rounded-xl p-4 shadow-sm">
                            <p class="text-soft-silk mb-1 text-sm font-bold">You</p>
                            <p class="text-soft-silk text-sm">
                                My API endpoint is too slow. How can I optimize it?
                            </p>
                        </div>

                        <!-- Message 2 -->
                        <div class="bg-soft-silk/5 rounded-xl p-4 shadow-sm">
                            <p class="text-ember-glow mb-1 text-sm font-bold">AI</p>
                            <p class="text-soft-silk text-sm">
                                You could optimize the database query by adding an index...
                            </p>
                        </div>

                        <!-- Frustration Point 1 -->
                        <div
                            class="border-merlot-wine bg-merlot-wine-dark/10 flex items-start
                                space-x-2 rounded-lg border-l-4 p-3 brightness-200"
                        >
                            <Icon
                                name="mdi:alert-circle"
                                class="text-merlot-wine mt-0.5 h-5 w-5 shrink-0"
                            />
                            <p class="text-merlot-wine text-sm font-medium">
                                Wait, what if caching is better? You scroll up to reconsider...
                            </p>
                        </div>

                        <!-- Message 3 -->
                        <div class="bg-soft-silk/5 transform rounded-xl p-4 shadow-sm">
                            <p class="text-soft-silk mb-1 text-sm font-bold">You</p>
                            <p class="text-soft-silk text-sm">
                                Actually, could we try a caching strategy instead?
                            </p>
                        </div>

                        <!-- Message 4 -->
                        <div class="bg-soft-silk/5 rounded-xl p-4 shadow-sm">
                            <p class="text-ember-glow mb-1 text-sm font-bold">AI</p>
                            <p class="text-soft-silk text-sm">
                                Sure, here's how to implement Redis caching...
                            </p>
                        </div>

                        <!-- Frustration Point 2 -->
                        <div
                            class="flex items-start space-x-2 rounded-lg border-l-4
                                border-orange-400 bg-orange-400/10 p-3"
                        >
                            <Icon
                                name="mdi:alert-circle"
                                class="mt-0.5 h-5 w-5 shrink-0 text-orange-400"
                            />
                            <p class="text-sm font-medium text-orange-400">
                                Now you have two competing solutions in one messy thread.
                            </p>
                        </div>

                        <!-- Message 5 -->
                        <div class="bg-soft-silk/5 transform rounded-xl p-4 shadow-sm">
                            <p class="text-soft-silk mb-1 text-sm font-bold">You</p>
                            <p class="text-soft-silk text-sm">
                                What about async processing? And can you show me the database query
                                again?
                            </p>
                        </div>

                        <!-- Frustration Point 3 -->
                        <div
                            class="border-merlot-wine bg-merlot-wine-dark/10 flex items-start
                                space-x-2 rounded-lg border-l-4 p-3 brightness-200"
                        >
                            <Icon
                                name="mdi:close-octagon"
                                class="text-merlot-wine mt-0.5 h-5 w-5 shrink-0"
                            />
                            <p class="text-merlot-wine text-sm font-medium">
                                Context lost. You're copy-pasting and starting over.
                            </p>
                        </div>
                    </div>

                    <span class="grow"></span>

                    <!-- Bottom summary -->
                    <div class="bg-merlot-wine-dark/10 mt-6 rounded-xl p-4 brightness-200">
                        <p class="text-merlot-wine text-center text-sm font-semibold">
                            Result:
                            <span class="text-merlot-wine"
                                >Lost context, wasted time, confusion</span
                            >
                        </p>
                    </div>
                </div>
            </div>

            <!-- The Meridian Way: Visual Workflow -->
            <div
                class="group relative overflow-hidden rounded-3xl border-2 border-green-900/20
                    bg-linear-to-br from-green-950/10 to-emerald-900/5 p-8 shadow-xl transition-all
                    duration-300 hover:shadow-2xl"
            >
                <div class="relative">
                    <!-- Header -->
                    <div class="mb-8 flex items-center justify-between">
                        <h3 class="flex items-center text-2xl font-bold text-green-600">
                            <div
                                class="mr-3 flex h-10 w-10 items-center justify-center rounded-full"
                            >
                                <Icon name="mdi:check-circle" class="h-6 w-6 text-green-600" />
                            </div>
                            Visual Workflow
                        </h3>
                    </div>

                    <!-- Visual Graph -->
                    <div
                        class="from-obsidian/5 to-obsidian/10 relative mt-6 flex min-h-[450px]
                            items-center justify-center rounded-2xl bg-linear-to-b p-6"
                    >
                        <svg
                            class="absolute inset-0 h-full w-full"
                            viewBox="0 0 600 450"
                            preserveAspectRatio="xMidYMid meet"
                            aria-hidden="true"
                        >
                            <!-- Main vertical line -->
                            <line
                                x1="173"
                                y1="75"
                                x2="195"
                                y2="75"
                                stroke="#ccc5b9"
                                stroke-width="2"
                                stroke-dasharray="5,5"
                            >
                                <animate
                                    attributeName="stroke-dashoffset"
                                    from="10"
                                    to="0"
                                    dur="1s"
                                    repeatCount="indefinite"
                                />
                            </line>

                            <!-- Connecting lines -->
                            <path
                                d="M 300 132 C 300 270, 104 200, 70 319"
                                stroke="#ccc5b9"
                                stroke-width="2"
                                fill="none"
                            />
                            <path
                                d="M 300 132 L 300 319"
                                stroke="#ccc5b9"
                                stroke-width="2"
                                fill="none"
                            />
                            <path
                                d="M 300 132 C 300 270, 496 200, 530 319"
                                stroke="#ccc5b9"
                                stroke-width="2"
                                fill="none"
                            />
                        </svg>

                        <!-- Root Node -->
                        <div
                            class="absolute top-4 left-1/2 z-10 w-52 -translate-x-1/2 transform
                                rounded-xl border-2 border-green-200/50 bg-green-200/10 p-4
                                text-center shadow-lg"
                        >
                            <div class="mb-2 flex justify-center">
                                <div
                                    class="flex h-8 w-8 items-center justify-center rounded-full
                                        bg-green-200/10"
                                >
                                    <Icon name="mdi:message-text" class="h-4 w-4 text-white" />
                                </div>
                            </div>
                            <p class="text-soft-silk text-sm font-bold">Initial Prompt</p>
                            <p class="text-stone-gray mt-1 text-xs">"Optimize slow API"</p>
                        </div>

                        <!-- Context Node -->
                        <div
                            class="absolute top-4 left-24 z-10 w-52 -translate-x-1/2 transform
                                rounded-xl border-2 border-cyan-200/50 bg-cyan-200/10 p-4
                                text-center shadow-lg"
                        >
                            <div class="mb-2 flex justify-center">
                                <div
                                    class="flex h-8 w-8 items-center justify-center rounded-full
                                        bg-cyan-200/10"
                                >
                                    <Icon name="mdi:file-code" class="h-4 w-4 text-white" />
                                </div>
                            </div>
                            <p class="text-soft-silk text-sm font-bold">Context</p>
                            <p class="text-stone-gray mt-1 font-mono text-xs">api_endpoint.py</p>
                        </div>

                        <!-- Branch A (Left) -->
                        <div
                            class="absolute bottom-8 left-4 z-10 w-40 rounded-xl border-2
                                border-purple-200/50 bg-purple-200/10 p-3 text-center shadow-lg"
                        >
                            <div class="mb-2 flex justify-center">
                                <div
                                    class="flex h-7 w-7 items-center justify-center rounded-full
                                        bg-purple-200/10"
                                >
                                    <Icon name="mdi:database" class="h-4 w-4 text-white" />
                                </div>
                            </div>
                            <p class="text-soft-silk text-xs font-bold">Branch A</p>
                            <p class="text-stone-gray mt-1 text-xs">DB Indexing</p>
                        </div>

                        <!-- Branch B (Center) -->
                        <div
                            class="absolute bottom-8 left-1/2 z-10 w-40 -translate-x-1/2 transform
                                rounded-xl border-2 border-amber-200/50 bg-amber-200/10 p-3
                                text-center shadow-lg"
                        >
                            <div class="mb-2 flex justify-center">
                                <div
                                    class="flex h-7 w-7 items-center justify-center rounded-full
                                        bg-amber-200/10"
                                >
                                    <Icon name="mdi:cached" class="h-4 w-4 text-white" />
                                </div>
                            </div>
                            <p class="text-soft-silk text-xs font-bold">Branch B</p>
                            <p class="text-stone-gray mt-1 text-xs">Redis Cache</p>
                        </div>

                        <!-- Branch C (Right) -->
                        <div
                            class="absolute right-4 bottom-8 z-10 w-40 rounded-xl border-2
                                border-rose-200/50 bg-rose-200/10 p-3 text-center shadow-lg"
                        >
                            <div class="mb-2 flex justify-center">
                                <div
                                    class="flex h-7 w-7 items-center justify-center rounded-full
                                        bg-rose-200/10"
                                >
                                    <Icon name="mdi:timer-sand" class="h-4 w-4 text-white" />
                                </div>
                            </div>
                            <p class="text-soft-silk text-xs font-bold">Branch C</p>
                            <p class="text-stone-gray mt-1 text-xs">Async Process</p>
                        </div>
                    </div>

                    <!-- Benefits List -->
                    <div class="mt-6 space-y-2">
                        <div class="flex items-center space-x-2 rounded-lg bg-green-50/5 p-3">
                            <Icon name="mdi:check-bold" class="h-5 w-5 shrink-0 text-green-600" />
                            <p class="text-soft-silk text-sm">
                                <span class="font-semibold">Parallel exploration</span> of multiple
                                solutions
                            </p>
                        </div>
                        <div class="flex items-center space-x-2 rounded-lg bg-green-50/5 p-3">
                            <Icon name="mdi:check-bold" class="h-5 w-5 shrink-0 text-green-600" />
                            <p class="text-soft-silk text-sm">
                                <span class="font-semibold">Context preserved</span> in every branch
                            </p>
                        </div>
                        <div class="flex items-center space-x-2 rounded-lg bg-green-50/5 p-3">
                            <Icon name="mdi:check-bold" class="h-5 w-5 shrink-0 text-green-600" />
                            <p class="text-soft-silk text-sm">
                                <span class="font-semibold">Visual clarity</span> of your entire
                                workflow
                            </p>
                        </div>
                    </div>

                    <!-- Bottom summary -->
                    <div class="mt-6 rounded-xl bg-green-500/5 p-4">
                        <p class="text-center text-sm font-semibold text-green-600">
                            Result:
                            <span class="text-green-600">All ideas organized, nothing lost</span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<style scoped></style>
