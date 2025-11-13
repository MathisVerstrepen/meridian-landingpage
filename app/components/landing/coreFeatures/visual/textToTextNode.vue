<script lang="ts" setup>
import {
    PARALLELIZATION_REPONSE_4,
} from '@/consts/modelResponses';
</script>

<template>
    <div
        data-id="a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02"
        class="nopan draggable selectable relative font-sans"
        tabindex="0"
        role="group"
        aria-describedby="vue-flow__node-desc-main-graph-208f03f6-4630-45f1-86fa-0afd0e31a88f"
        aria-roledescription="node"
        style="visibility: visible; z-index: 0; pointer-events: all; width: 600px; height: 300px"
    >
        <div
            class="bg-olive-grove border-olive-grove-dark flex h-full w-full flex-col rounded-3xl
                border-2 p-4 pt-3 text-black shadow-lg transition-all duration-200 ease-in-out"
        >
            <div class="mb-2 flex w-full items-center justify-between">
                <label class="flex w-fit items-center gap-2"
                    ><span
                        data-v-cdcee947=""
                        aria-hidden="true"
                        role="img"
                        focusable="false"
                        class="icon-wrapper dark:text-soft-silk text-anthracite inline-block h-7 w-7
                            align-middle opacity-80"
                        ><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
                            <path
                                fill="currentColor"
                                d="M1.75 2.5a.75.75 0 000 1.5h5a.75.75 0 000-1.5zm3 3a.75.75 0 000 1.5h3.5a.75.75 0 000-1.5zM3 9.25a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5A.75.75 0 013 9.25M1.75 11.5a.75.75 0 000 1.5h7a.75.75 0 000-1.5zm8.75-5.25a.75.75 0 01.75-.75h2a.75.75 0 010 1.5h-2a.75.75 0 01-.75-.75M9.75 2.5a.75.75 0 000 1.5h4.5a.75.75 0 000-1.5z"
                            ></path></svg></span
                    ><span
                        class="dark:text-soft-silk/80 text-anthracite -translate-y-0.5 text-lg
                            font-bold"
                        >Text to Text</span
                    >
                    <div class="flex gap-1"></div
                ></label>
                <div class="flex items-center space-x-2">
                    <button
                        class="hover:bg-olive-grove-dark/50 flex items-center justify-center
                            rounded-lg p-1 transition-colors duration-200 ease-in-out"
                    >
                        <span
                            data-v-cdcee947=""
                            aria-hidden="true"
                            role="img"
                            focusable="false"
                            class="icon-wrapper dark:text-soft-silk text-anthracite inline-block h-5
                                w-5 align-middle"
                            ><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                <path
                                    fill="currentColor"
                                    d="M2 22V9q0-.825.588-1.413Q3.175 7 4 7h2V4q0-.825.588-1.413Q7.175 2 8 2h12q.825 0 1.413.587Q22 3.175 22 4v8q0 .825-.587 1.412Q20.825 14 20 14h-2v3q0 .825-.587 1.413Q16.825 19 16 19H5zm6-10h8V9H8zm-4 5h12v-3H8q-.825 0-1.412-.588Q6 12.825 6 12V9H4zm14-5h2V4H8v3h8q.825 0 1.413.587Q18 8.175 18 9z"
                                ></path></svg
                        ></span>
                    </button>
                </div>
            </div>
            <div class="mb-2 flex h-fit items-center justify-between">
                <div class="relative h-8 w-2/3" data-headlessui-state="">
                    <div
                        class="bg-soft-silk/15 border-olive-grove-dark dark:text-olive-grove-dark
                            text-anthracite relative h-full w-full cursor-default overflow-hidden
                            rounded-2xl border-2 text-left focus:outline-none"
                    >
                        <div class="flex items-center">
                            <span class="ml-3 flex flex-shrink-0 items-center"
                                ><span
                                    data-v-cdcee947=""
                                    aria-hidden="true"
                                    role="img"
                                    focusable="false"
                                    class="icon-wrapper inline-block h-4 w-4 align-middle"
                                    ><svg
                                        fill="currentColor"
                                        fill-rule="evenodd"
                                        height="1em"
                                        style="flex: none; line-height: 1"
                                        viewBox="0 0 24 24"
                                        width="1em"
                                        xmlns="http://www.w3.org/2000/svg"
                                    >
                                        <title>Google</title>
                                        <path
                                            d="M23 12.245c0-.905-.075-1.565-.236-2.25h-10.54v4.083h6.186c-.124 1.014-.797 2.542-2.294 3.569l-.021.136 3.332 2.53.23.022C21.779 18.417 23 15.593 23 12.245z"
                                        ></path>
                                        <path
                                            d="M12.225 23c3.03 0 5.574-.978 7.433-2.665l-3.542-2.688c-.948.648-2.22 1.1-3.891 1.1a6.745 6.745 0 01-6.386-4.572l-.132.011-3.465 2.628-.045.124C4.043 20.531 7.835 23 12.225 23z"
                                        ></path>
                                        <path
                                            d="M5.84 14.175A6.65 6.65 0 015.463 12c0-.758.138-1.491.361-2.175l-.006-.147-3.508-2.67-.115.054A10.831 10.831 0 001 12c0 1.772.436 3.447 1.197 4.938l3.642-2.763z"
                                        ></path>
                                        <path
                                            d="M12.225 5.253c2.108 0 3.529.892 4.34 1.638l3.167-3.031C17.787 2.088 15.255 1 12.225 1 7.834 1 4.043 3.469 2.197 7.062l3.63 2.763a6.77 6.77 0 016.398-4.572z"
                                        ></path></svg></span></span
                            ><input
                                value="Google: Gemini 2.5 Pro"
                                id="headlessui-combobox-input-v-2-761"
                                aria-expanded="false"
                                aria-autocomplete="list"
                                role="combobox"
                                type="text"
                                tabindex="0"
                                data-headlessui-state=""
                                class="relative w-full border-none py-1 pr-10 pl-2 text-sm leading-5
                                    font-bold focus:ring-0 focus:outline-none"
                                aria-labelledby="headlessui-combobox-button-v-2-762"
                            />
                        </div>
                        <button
                            id="headlessui-combobox-button-v-2-762"
                            type="button"
                            tabindex="-1"
                            aria-haspopup="listbox"
                            aria-expanded="false"
                            data-headlessui-state=""
                            class="absolute inset-y-0 right-0 flex cursor-pointer items-center pr-1"
                        >
                            <span
                                data-v-cdcee947=""
                                aria-hidden="true"
                                role="img"
                                focusable="false"
                                class="icon-wrapper inline-block h-7 w-7 align-middle"
                                ><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                    <path
                                        fill="none"
                                        stroke="currentColor"
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                        stroke-width="2"
                                        d="M8 10l4 4 4-4"
                                    ></path></svg
                            ></span>
                        </button>
                    </div>
                </div>
                <button
                    class="nodrag bg-olive-grove-dark hover:bg-olive-grove-dark/80
                        dark:text-soft-silk text-anthracite flex h-8 w-8 flex-shrink-0
                        cursor-pointer items-center justify-center rounded-2xl transition-all
                        duration-200 ease-in-out disabled:cursor-not-allowed disabled:opacity-50"
                >
                    <span
                        data-v-cdcee947=""
                        aria-hidden="true"
                        role="img"
                        focusable="false"
                        class="icon-wrapper inline-block h-5 w-5 align-middle opacity-80"
                        ><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                            <path
                                fill="currentColor"
                                fill-rule="evenodd"
                                d="M3.402 6.673c-.26-2.334 2.143-4.048 4.266-3.042l11.944 5.658c2.288 1.083 2.288 4.339 0 5.422L7.668 20.37c-2.123 1.006-4.525-.708-4.266-3.042L3.882 13H12a1 1 0 100-2H3.883z"
                                clip-rule="evenodd"
                            ></path></svg
                    ></span>
                </button>
            </div>
            <div class="relative flex h-full w-full flex-col overflow-hidden">
                <textarea
                    readonly="false"
                    class="dark:text-soft-silk text-anthracite nodrag nowheel hide-scrollbar h-full
                        w-full flex-grow resize-none rounded-2xl bg-[#545d48] px-3 py-2 text-sm
                        caret-current focus:ring-0 focus:outline-none"
                    placeholder="AI response will appear here..."
                    :value="PARALLELIZATION_REPONSE_4"
                ></textarea>
            </div>
        </div>
        <div class="absolute top-0 left-0 z-20 flex h-0 w-full flex-col">
            <div
                data-id="main-graph-208f03f6-4630-45f1-86fa-0afd0e31a88f-a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02-context_a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02-target"
                data-handleid="context_a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02"
                data-nodeid="a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02"
                data-handlepos="top"
                class="vue-flow__handle vue-flow__handle-top
                    vue-flow__handle-context_a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02 nodrag nopan
                    target connectable connectablestart connectableend connectionindicator handletop
                    z-30"
                style="background: var(--color-node-cat-context); left: 66%"
            ></div>
            <div
                class="drop-zone drop-zone-golden absolute bottom-0 left-1/2 z-0 h-10 w-[90%]
                    shrink-0 -translate-x-1/2 rounded-t-2xl duration-200 ease-in-out"
                style="display: none"
            ></div>
        </div>
        <div class="absolute top-0 left-0 z-20 flex h-0 w-full flex-col">
            <div
                data-id="main-graph-208f03f6-4630-45f1-86fa-0afd0e31a88f-a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02-prompt_a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02-target"
                data-handleid="prompt_a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02"
                data-nodeid="a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02"
                data-handlepos="top"
                class="vue-flow__handle vue-flow__handle-top
                    vue-flow__handle-prompt_a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02 nodrag nopan target
                    connectable connectablestart connectableend connectionindicator handletop z-30"
                style="background: var(--color-node-cat-prompt); left: 33%"
            ></div>
            <div
                class="drop-zone drop-zone-blue absolute bottom-0 left-1/2 z-0 h-10 w-[90%] shrink-0
                    -translate-x-1/2 rounded-t-2xl duration-200 ease-in-out"
                style="display: none"
            ></div>
        </div>
        <div class="absolute top-0 left-0 z-20 flex h-full w-0 flex-col">
            <div
                data-id="main-graph-208f03f6-4630-45f1-86fa-0afd0e31a88f-a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02-attachment_a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02-target"
                data-handleid="attachment_a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02"
                data-nodeid="a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02"
                data-handlepos="left"
                class="vue-flow__handle vue-flow__handle-left
                    vue-flow__handle-attachment_a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02 nodrag nopan
                    target connectable connectablestart connectableend connectionindicator
                    handleleft z-30"
                style="background: var(--color-node-cat-attachment)"
            ></div>
            <div
                class="drop-zone drop-zone-heather absolute top-1/2 right-0 z-0 h-[80%] w-10
                    shrink-0 -translate-y-1/2 rounded-l-2xl duration-200 ease-in-out"
                style="display: none"
            ></div>
        </div>
        <div class="absolute bottom-0 left-0 z-20 flex h-0 w-full flex-col">
            <div
                data-id="main-graph-208f03f6-4630-45f1-86fa-0afd0e31a88f-a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02-context_a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02-source"
                data-handleid="context_a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02"
                data-nodeid="a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02"
                data-handlepos="bottom"
                class="vue-flow__handle vue-flow__handle-bottom
                    vue-flow__handle-context_a7e1a5e9-5e4e-4c53-8c85-1edd194f5e02 nodrag nopan
                    source connectable connectablestart connectableend connectionindicator
                    handlebottom z-30"
                style="background: var(--color-node-cat-context)"
            ></div>
            <div
                class="drop-zone drop-zone-golden absolute top-0 left-1/2 z-0 h-10 w-[90%] shrink-0
                    -translate-x-1/2 rounded-b-2xl duration-200 ease-in-out"
                style="display: none"
            ></div>
        </div>
    </div>
</template>

<style scoped></style>
