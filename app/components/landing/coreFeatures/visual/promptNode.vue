<script lang="ts" setup></script>

<template>
    <div
        data-id="69231660-8c5f-4b70-9552-f6579073aec5"
        class="nopan draggable selectable relative"
        tabindex="0"
        role="group"
        aria-describedby="vue-flow__node-desc-main-graph-208f03f6-4630-45f1-86fa-0afd0e31a88f"
        aria-roledescription="node"
        style="visibility: visible; z-index: 0; pointer-events: all; height: 200px; width: 500px"
    >
        <div
            class="bg-slate-blue border-slate-blue-dark relative flex h-full w-full flex-col
                rounded-3xl border-2 p-4 pt-3 font-sans shadow-lg transition-all duration-200
                ease-in-out"
        >
            <div class="mb-2 flex w-full items-center justify-between">
                <label class="flex w-fit items-center gap-2"
                    ><span
                        data-v-cdcee947=""
                        aria-hidden="true"
                        role="img"
                        focusable="false"
                        class="icon-wrapper dark:text-soft-silk text-anthracite inline-block h-6 w-6
                            align-middle opacity-80"
                        ><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                            <path
                                fill="currentColor"
                                d="M5 14q-.425 0-.712-.288T4 13t.288-.712T5 12h5q.425 0 .713.288T11 13t-.288.713T10 14zm0-4q-.425 0-.712-.288T4 9t.288-.712T5 8h9q.425 0 .713.288T15 9t-.288.713T14 10zm0-4q-.425 0-.712-.288T4 5t.288-.712T5 4h9q.425 0 .713.288T15 5t-.288.713T14 6zm8 13v-1.65q0-.2.075-.387t.225-.338l5.225-5.2q.225-.225.5-.325t.55-.1q.3 0 .575.113t.5.337l.925.925q.2.225.313.5t.112.55-.1.563-.325.512l-5.2 5.2q-.15.15-.337.225T15.65 20H14q-.425 0-.712-.287T13 19m7.5-5.575l-.925-.925zm-6 5.075h.95l3.025-3.05-.45-.475-.475-.45-3.05 3.025zm3.525-3.525l-.475-.45.925.925z"
                            ></path></svg></span
                    ><span
                        class="dark:text-soft-silk/80 text-anthracite -translate-y-0.5 text-lg
                            font-bold"
                        >Prompt</span
                    ></label
                >
            </div>
            <div class="relative flex h-full w-full flex-col overflow-hidden">
                <!----><textarea
                    class="dark:text-soft-silk text-anthracite nodrag nowheel hide-scrollbar h-full
                        w-full flex-grow resize-none rounded-2xl bg-[#49545f] px-3 py-2 text-sm
                        caret-current focus:ring-0 focus:outline-none"
                    placeholder="Enter your prompt here"
                    value="You are an expert Python developer specializing in performance and clean code. Analyze the provided code from the attached GitHub file. Your task is to refactor it to improve three key areas:

Performance: Identify and optimize any bottlenecks.
Readability: Improve variable names, add comments where necessary, and simplify complex logic.
Pythonic Idioms: Replace any verbose or non-standard patterns with more idiomatic Python code.
Provide the complete refactored code block and a brief, bulleted list explaining the specific changes you made and why they are beneficial."
                ></textarea>
            </div>
        </div>
        <div class="absolute top-0 left-0 z-20 flex h-0 w-full flex-col">
            <div
                data-id="main-graph-208f03f6-4630-45f1-86fa-0afd0e31a88f-69231660-8c5f-4b70-9552-f6579073aec5-prompt_69231660-8c5f-4b70-9552-f6579073aec5-target"
                data-handleid="prompt_69231660-8c5f-4b70-9552-f6579073aec5"
                data-nodeid="69231660-8c5f-4b70-9552-f6579073aec5"
                data-handlepos="top"
                class="vue-flow__handle vue-flow__handle-top
                    vue-flow__handle-prompt_69231660-8c5f-4b70-9552-f6579073aec5 nodrag nopan target
                    connectable connectablestart connectableend connectionindicator handletop z-30"
                style="background: var(--color-node-cat-prompt)"
            ></div>
            <div
                class="drop-zone drop-zone-blue absolute bottom-0 left-1/2 z-0 h-10 w-[90%] shrink-0
                    -translate-x-1/2 rounded-t-2xl duration-200 ease-in-out"
                style="display: none"
            ></div>
        </div>
        <div class="absolute bottom-0 left-0 z-20 flex h-0 w-full flex-col">
            <div
                data-id="main-graph-208f03f6-4630-45f1-86fa-0afd0e31a88f-69231660-8c5f-4b70-9552-f6579073aec5-prompt_69231660-8c5f-4b70-9552-f6579073aec5-source"
                data-handleid="prompt_69231660-8c5f-4b70-9552-f6579073aec5"
                data-nodeid="69231660-8c5f-4b70-9552-f6579073aec5"
                data-handlepos="bottom"
                class="vue-flow__handle vue-flow__handle-bottom
                    vue-flow__handle-prompt_69231660-8c5f-4b70-9552-f6579073aec5 nodrag nopan source
                    connectable connectablestart connectableend connectionindicator handlebottom
                    z-30"
                style="background: var(--color-node-cat-prompt)"
            ></div>
            <div
                class="drop-zone drop-zone-blue absolute top-0 left-1/2 z-0 h-10 w-[90%] shrink-0
                    -translate-x-1/2 rounded-b-2xl duration-200 ease-in-out"
                style="display: none"
            ></div>
        </div>
    </div>
</template>

<style scoped></style>
