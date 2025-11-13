<script lang="ts" setup>
import {
    PARALLELIZATION_REPONSE_1,
    PARALLELIZATION_REPONSE_2,
    PARALLELIZATION_REPONSE_3,
    PARALLELIZATION_REPONSE_4,
} from '@/consts/modelResponses';
</script>

<template>
    <div class="nopan draggable selectable relative font-sans" style="width: 660px">
        <div
            class="bg-terracotta-clay border-terracotta-clay-dark relative flex h-full w-full
                flex-col rounded-3xl border-2 p-4 pt-3 text-black shadow-lg transition-all
                duration-200 ease-in-out"
        >
            <div class="mb-2 flex w-full items-center justify-between">
                <label
                    class="dark:text-soft-silk/80 text-anthracite mb-2 flex w-fit items-center gap-2
                        text-lg font-bold"
                    for="prompt-textarea-f0d71f2a-3519-41d7-942a-e5b4ed8743c2"
                    ><span
                        data-v-cdcee947=""
                        aria-hidden="true"
                        role="img"
                        focusable="false"
                        class="icon-wrapper dark:text-soft-silk text-anthracite inline-block h-6 w-6
                            align-middle opacity-80"
                        ><svg
                            xmlns="http://www.w3.org/2000/svg"
                            width="24"
                            height="24"
                            viewBox="0 0 24 24"
                        >
                            <path
                                fill="none"
                                stroke="currentColor"
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                stroke-width="2"
                                d="M7 5V2m0 17v3M17 8.002c.844 0 1.818-.083 2.299.75.201.348.201.816.201 1.75v3c0 .935 0 1.402-.201 1.75-.481.834-1.455.75-2.299.75s-1.818.084-2.299-.75c-.201-.348-.201-.815-.201-1.75v-3c0-.934 0-1.402.201-1.75.481-.833 1.455-.75 2.299-.75m-10-3c.844 0 1.818-.083 2.299.75.201.348.201.816.201 1.75v9c0 .935 0 1.402-.201 1.75-.481.834-1.455.75-2.299.75s-1.818.084-2.299-.75c-.201-.348-.201-.815-.201-1.75v-9c0-.934 0-1.402.201-1.75.481-.833 1.455-.75 2.299-.75M17 8V2m0 14v6"
                                color="currentColor"
                            ></path></svg
                    ></span>
                    Parallelization</label
                >
                <div class="flex items-center space-x-2">
                    <button
                        class="hover:bg-obsidian/25 flex items-center justify-center rounded-lg p-1
                            transition-colors duration-200 ease-in-out"
                    >
                        <span
                            data-v-cdcee947=""
                            aria-hidden="true"
                            role="img"
                            focusable="false"
                            class="icon-wrapper dark:text-soft-silk text-anthracite inline-block h-5
                                w-5 align-middle"
                            ><svg
                                xmlns="http://www.w3.org/2000/svg"
                                width="24"
                                height="24"
                                viewBox="0 0 24 24"
                            >
                                <path
                                    fill="currentColor"
                                    d="M2 22V9q0-.825.588-1.413Q3.175 7 4 7h2V4q0-.825.588-1.413Q7.175 2 8 2h12q.825 0 1.413.587Q22 3.175 22 4v8q0 .825-.587 1.412Q20.825 14 20 14h-2v3q0 .825-.587 1.413Q16.825 19 16 19H5zm6-10h8V9H8zm-4 5h12v-3H8q-.825 0-1.412-.588Q6 12.825 6 12V9H4zm14-5h2V4H8v3h8q.825 0 1.413.587Q18 8.175 18 9z"
                                ></path></svg
                        ></span>
                    </button>
                </div>
            </div>
            <div class="relative mb-5 flex h-fit w-fit flex-wrap justify-between gap-2">
                <div class="bg-terracotta-clay-dark h-40 w-76 shrink-0 rounded-2xl">
                    <div class="relative h-8 w-full" data-headlessui-state="">
                        <div
                            class="dark:bg-soft-silk/50 border-terracotta-clay-dark
                                dark:text-terracotta-clay-dark text-anthracite relative h-full
                                w-full cursor-default overflow-hidden rounded-2xl border-2
                                bg-[#612411]/50 text-left focus:outline-none"
                        >
                            <div class="flex items-center">
                                <span class="ml-3 flex shrink-0 items-center"
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
                                            <title>OpenAI</title>
                                            <path
                                                d="M21.55 10.004a5.416 5.416 0 00-.478-4.501c-1.217-2.09-3.662-3.166-6.05-2.66A5.59 5.59 0 0010.831 1C8.39.995 6.224 2.546 5.473 4.838A5.553 5.553 0 001.76 7.496a5.487 5.487 0 00.691 6.5 5.416 5.416 0 00.477 4.502c1.217 2.09 3.662 3.165 6.05 2.66A5.586 5.586 0 0013.168 23c2.443.006 4.61-1.546 5.361-3.84a5.553 5.553 0 003.715-2.66 5.488 5.488 0 00-.693-6.497v.001zm-8.381 11.558a4.199 4.199 0 01-2.675-.954c.034-.018.093-.05.132-.074l4.44-2.53a.71.71 0 00.364-.623v-6.176l1.877 1.069c.02.01.033.029.036.05v5.115c-.003 2.274-1.87 4.118-4.174 4.123zM4.192 17.78a4.059 4.059 0 01-.498-2.763c.032.02.09.055.131.078l4.44 2.53c.225.13.504.13.73 0l5.42-3.088v2.138a.068.068 0 01-.027.057L9.9 19.288c-1.999 1.136-4.552.46-5.707-1.51h-.001zM3.023 8.216A4.15 4.15 0 015.198 6.41l-.002.151v5.06a.711.711 0 00.364.624l5.42 3.087-1.876 1.07a.067.067 0 01-.063.005l-4.489-2.559c-1.995-1.14-2.679-3.658-1.53-5.63h.001zm15.417 3.54l-5.42-3.088L14.896 7.6a.067.067 0 01.063-.006l4.489 2.557c1.998 1.14 2.683 3.662 1.529 5.633a4.163 4.163 0 01-2.174 1.807V12.38a.71.71 0 00-.363-.623zm1.867-2.773a6.04 6.04 0 00-.132-.078l-4.44-2.53a.731.731 0 00-.729 0l-5.42 3.088V7.325a.068.068 0 01.027-.057L14.1 4.713c2-1.137 4.555-.46 5.707 1.513.487.833.664 1.809.499 2.757h.001zm-11.741 3.81l-1.877-1.068a.065.065 0 01-.036-.051V6.559c.001-2.277 1.873-4.122 4.181-4.12.976 0 1.92.338 2.671.954-.034.018-.092.05-.131.073l-4.44 2.53a.71.71 0 00-.365.623l-.003 6.173v.002zm1.02-2.168L12 9.25l2.414 1.375v2.75L12 14.75l-2.415-1.375v-2.75z"
                                            ></path></svg></span></span
                                ><input
                                    value="OpenAI: GPT-5"
                                    id="headlessui-combobox-input-v-1-520"
                                    aria-expanded="false"
                                    aria-autocomplete="list"
                                    role="combobox"
                                    type="text"
                                    tabindex="0"
                                    data-headlessui-state=""
                                    class="relative w-full border-none py-1 pr-10 pl-2 text-sm
                                        leading-5 font-bold focus:ring-0 focus:outline-none"
                                    aria-labelledby="headlessui-combobox-button-v-1-521"
                                />
                            </div>
                            <button
                                id="headlessui-combobox-button-v-1-521"
                                type="button"
                                tabindex="-1"
                                aria-haspopup="listbox"
                                aria-expanded="false"
                                data-headlessui-state=""
                                class="absolute inset-y-0 right-0 flex cursor-pointer items-center
                                    pr-1"
                            >
                                <span
                                    data-v-cdcee947=""
                                    aria-hidden="true"
                                    role="img"
                                    focusable="false"
                                    class="icon-wrapper inline-block h-7 w-7 align-middle"
                                    ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        width="28"
                                        height="28"
                                        viewBox="0 0 24 24"
                                    >
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
                    <div class="group relative">
                        <div
                            class="relative flex h-full w-full flex-col overflow-hidden"
                            style="height: 8rem"
                        >
                            <textarea
                                readonly="true"
                                class="dark:text-soft-silk text-anthracite nodrag nowheel
                                    hide-scrollbar h-full w-full grow resize-none rounded-2xl px-3
                                    py-2 text-sm caret-current focus:ring-0 focus:outline-none"
                                placeholder="Model #1 response will appear here..."
                                :value="PARALLELIZATION_REPONSE_1"
                            ></textarea>
                        </div>
                    </div>
                </div>
                <div class="bg-terracotta-clay-dark h-40 w-76 shrink-0 rounded-2xl">
                    <div class="relative h-8 w-full" data-headlessui-state="">
                        <div
                            class="dark:bg-soft-silk/50 border-terracotta-clay-dark
                                dark:text-terracotta-clay-dark text-anthracite relative h-full
                                w-full cursor-default overflow-hidden rounded-2xl border-2
                                bg-[#612411]/50 text-left focus:outline-none"
                        >
                            <div class="flex items-center">
                                <span class="ml-3 flex shrink-0 items-center"
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
                                            <title>MoonshotAI</title>
                                            <path
                                                d="M1.052 16.916l9.539 2.552a21.007 21.007 0 00.06 2.033l5.956 1.593a11.997 11.997 0 01-5.586.865l-.18-.016-.044-.004-.084-.009-.094-.01a11.605 11.605 0 01-.157-.02l-.107-.014-.11-.016a11.962 11.962 0 01-.32-.051l-.042-.008-.075-.013-.107-.02-.07-.015-.093-.019-.075-.016-.095-.02-.097-.023-.094-.022-.068-.017-.088-.022-.09-.024-.095-.025-.082-.023-.109-.03-.062-.02-.084-.025-.093-.028-.105-.034-.058-.019-.08-.026-.09-.031-.066-.024a6.293 6.293 0 01-.044-.015l-.068-.025-.101-.037-.057-.022-.08-.03-.087-.035-.088-.035-.079-.032-.095-.04-.063-.028-.063-.027a5.655 5.655 0 01-.041-.018l-.066-.03-.103-.047-.052-.024-.096-.046-.062-.03-.084-.04-.086-.044-.093-.047-.052-.027-.103-.055-.057-.03-.058-.032a6.49 6.49 0 01-.046-.026l-.094-.053-.06-.034-.051-.03-.072-.041-.082-.05-.093-.056-.052-.032-.084-.053-.061-.039-.079-.05-.07-.047-.053-.035a7.785 7.785 0 01-.054-.036l-.044-.03-.044-.03a6.066 6.066 0 01-.04-.028l-.057-.04-.076-.054-.069-.05-.074-.054-.056-.042-.076-.057-.076-.059-.086-.067-.045-.035-.064-.052-.074-.06-.089-.073-.046-.039-.046-.039a7.516 7.516 0 01-.043-.037l-.045-.04-.061-.053-.07-.062-.068-.06-.062-.058-.067-.062-.053-.05-.088-.084a13.28 13.28 0 01-.099-.097l-.029-.028-.041-.042-.069-.07-.05-.051-.05-.053a6.457 6.457 0 01-.168-.179l-.08-.088-.062-.07-.071-.08-.042-.049-.053-.062-.058-.068-.046-.056a7.175 7.175 0 01-.027-.033l-.045-.055-.066-.082-.041-.052-.05-.064-.02-.025a11.99 11.99 0 01-1.44-2.402zm-1.02-5.794l11.353 3.037a20.468 20.468 0 00-.469 2.011l10.817 2.894a12.076 12.076 0 01-1.845 2.005L.657 15.923l-.016-.046-.035-.104a11.965 11.965 0 01-.05-.153l-.007-.023a11.896 11.896 0 01-.207-.741l-.03-.126-.018-.08-.021-.097-.018-.081-.018-.09-.017-.084-.018-.094c-.026-.141-.05-.283-.071-.426l-.017-.118-.011-.083-.013-.102a12.01 12.01 0 01-.019-.161l-.005-.047a12.12 12.12 0 01-.034-2.145zm1.593-5.15l11.948 3.196c-.368.605-.705 1.231-1.01 1.875l11.295 3.022c-.142.82-.368 1.612-.668 2.365l-11.55-3.09L.124 10.26l.015-.1.008-.049.01-.067.015-.087.018-.098c.026-.148.056-.295.088-.442l.028-.124.02-.085.024-.097c.022-.09.045-.18.07-.268l.028-.102.023-.083.03-.1.025-.082.03-.096.026-.082.031-.095a11.896 11.896 0 011.01-2.232zm4.442-4.4L17.352 4.59a20.77 20.77 0 00-1.688 1.721l7.823 2.093c.267.852.442 1.744.513 2.665L2.106 5.213l.045-.065.027-.04.04-.055.046-.065.055-.076.054-.072.064-.086.05-.065.057-.073.055-.07.06-.074.055-.069.065-.077.054-.066.066-.077.053-.06.072-.082.053-.06.067-.074.054-.058.073-.078.058-.06.063-.067.168-.17.1-.098.059-.056.076-.071a12.084 12.084 0 012.272-1.677zM12.017 0h.097l.082.001.069.001.054.002.068.002.046.001.076.003.047.002.06.003.054.002.087.005.105.007.144.011.088.007.044.004.077.008.082.008.047.005.102.012.05.006.108.014.081.01.042.006.065.01.207.032.07.012.065.011.14.026.092.018.11.022.046.01.075.016.041.01L14.7.3l.042.01.065.015.049.012.071.017.096.024.112.03.113.03.113.032.05.015.07.02.078.024.073.023.05.016.05.016.076.025.099.033.102.036.048.017.064.023.093.034.11.041.116.045.1.04.047.02.06.024.041.018.063.026.04.018.057.025.11.048.1.046.074.035.075.036.06.028.092.046.091.045.102.052.053.028.049.026.046.024.06.033.041.022.052.029.088.05.106.06.087.051.057.034.053.032.096.059.088.055.098.062.036.024.064.041.084.056.04.027.062.042.062.043.023.017c.054.037.108.075.161.114l.083.06.065.048.056.043.086.065.082.064.04.03.05.041.086.069.079.065.085.071c.712.6 1.353 1.283 1.909 2.031L7.222.994l.062-.027.065-.028.081-.034.086-.035c.113-.045.227-.09.341-.131l.096-.035.093-.033.084-.03.096-.031c.087-.03.176-.058.264-.085l.091-.027.086-.025.102-.03.085-.023.1-.026L9.04.37l.09-.023.091-.022.095-.022.09-.02.098-.021.091-.02.095-.018.092-.018.1-.018.091-.016.098-.017.092-.014.097-.015.092-.013.102-.013.091-.012.105-.012.09-.01.105-.01c.093-.01.186-.018.28-.024l.106-.008.09-.005.11-.006.093-.004.1-.004.097-.002.099-.002.197-.002z"
                                            ></path></svg></span></span
                                ><input
                                    value="MoonshotAI: Kimi K2 Thinking"
                                    id="headlessui-combobox-input-v-1-522"
                                    aria-expanded="false"
                                    aria-autocomplete="list"
                                    role="combobox"
                                    type="text"
                                    tabindex="0"
                                    data-headlessui-state=""
                                    class="relative w-full border-none py-1 pr-10 pl-2 text-sm
                                        leading-5 font-bold focus:ring-0 focus:outline-none"
                                    aria-labelledby="headlessui-combobox-button-v-1-523"
                                />
                            </div>
                            <button
                                id="headlessui-combobox-button-v-1-523"
                                type="button"
                                tabindex="-1"
                                aria-haspopup="listbox"
                                aria-expanded="false"
                                data-headlessui-state=""
                                class="absolute inset-y-0 right-0 flex cursor-pointer items-center
                                    pr-1"
                            >
                                <span
                                    data-v-cdcee947=""
                                    aria-hidden="true"
                                    role="img"
                                    focusable="false"
                                    class="icon-wrapper inline-block h-7 w-7 align-middle"
                                    ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        width="28"
                                        height="28"
                                        viewBox="0 0 24 24"
                                    >
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
                    <div class="group relative">
                        <div
                            class="relative flex h-full w-full flex-col overflow-hidden"
                            style="height: 8rem"
                        >
                            <textarea
                                readonly="true"
                                class="dark:text-soft-silk text-anthracite nodrag nowheel
                                    hide-scrollbar h-full w-full grow resize-none rounded-2xl px-3
                                    py-2 text-sm caret-current focus:ring-0 focus:outline-none"
                                placeholder="Model #2 response will appear here..."
                                :value="PARALLELIZATION_REPONSE_2"
                            ></textarea>
                        </div>
                    </div>
                </div>
                <div class="bg-terracotta-clay-dark h-40 w-76 shrink-0 rounded-2xl">
                    <div class="relative h-8 w-full" data-headlessui-state="">
                        <div
                            class="dark:bg-soft-silk/50 border-terracotta-clay-dark
                                dark:text-terracotta-clay-dark text-anthracite relative h-full
                                w-full cursor-default overflow-hidden rounded-2xl border-2
                                bg-[#612411]/50 text-left focus:outline-none"
                        >
                            <div class="flex items-center">
                                <span class="ml-3 flex shrink-0 items-center"
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
                                            <title>Anthropic</title>
                                            <path
                                                d="M13.827 3.52h3.603L24 20h-3.603l-6.57-16.48zm-7.258 0h3.767L16.906 20h-3.674l-1.343-3.461H5.017l-1.344 3.46H0L6.57 3.522zm4.132 9.959L8.453 7.687 6.205 13.48H10.7z"
                                            ></path></svg></span></span
                                ><input
                                    value="Anthropic: Claude Sonnet 4.5"
                                    id="headlessui-combobox-input-v-1-524"
                                    aria-expanded="false"
                                    aria-autocomplete="list"
                                    role="combobox"
                                    type="text"
                                    tabindex="0"
                                    data-headlessui-state=""
                                    class="relative w-full border-none py-1 pr-10 pl-2 text-sm
                                        leading-5 font-bold focus:ring-0 focus:outline-none"
                                    aria-labelledby="headlessui-combobox-button-v-1-525"
                                />
                            </div>
                            <button
                                id="headlessui-combobox-button-v-1-525"
                                type="button"
                                tabindex="-1"
                                aria-haspopup="listbox"
                                aria-expanded="false"
                                data-headlessui-state=""
                                class="absolute inset-y-0 right-0 flex cursor-pointer items-center
                                    pr-1"
                            >
                                <span
                                    data-v-cdcee947=""
                                    aria-hidden="true"
                                    role="img"
                                    focusable="false"
                                    class="icon-wrapper inline-block h-7 w-7 align-middle"
                                    ><svg
                                        xmlns="http://www.w3.org/2000/svg"
                                        width="28"
                                        height="28"
                                        viewBox="0 0 24 24"
                                    >
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
                    <div class="group relative">
                        <div
                            class="relative flex h-full w-full flex-col overflow-hidden"
                            style="height: 8rem"
                        >
                            <textarea
                                readonly="true"
                                class="dark:text-soft-silk text-anthracite nodrag nowheel
                                    hide-scrollbar h-full w-full grow resize-none rounded-2xl px-3
                                    py-2 text-sm caret-current focus:ring-0 focus:outline-none"
                                placeholder="Model #3 response will appear here..."
                                :value="PARALLELIZATION_REPONSE_3"
                            ></textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mb-2 flex h-fit gap-4">
                <button
                    class="bg-obsidian/25 hover:bg-obsidian/40 flex h-8 w-8 shrink-0 cursor-pointer
                        items-center justify-center rounded-2xl transition-colors duration-200
                        ease-in-out disabled:cursor-not-allowed disabled:opacity-50"
                    aria-disabled="false"
                >
                    <span
                        data-v-cdcee947=""
                        aria-hidden="true"
                        role="img"
                        focusable="false"
                        class="icon-wrapper dark:text-soft-silk text-anthracite inline-block h-4 w-4
                            align-middle"
                        ><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                            <path
                                fill="currentColor"
                                d="M256 80c0-17.7-14.3-32-32-32s-32 14.3-32 32v144H48c-17.7 0-32 14.3-32 32s14.3 32 32 32h144v144c0 17.7 14.3 32 32 32s32-14.3 32-32V288h144c17.7 0 32-14.3 32-32s-14.3-32-32-32H256z"
                            ></path></svg
                    ></span>
                </button>
                <div class="bg-obsidian/25 flex items-center rounded-2xl">
                    <span class="dark:text-soft-silk text-anthracite px-4 text-sm font-bold"
                        >Aggregator</span
                    >
                    <div class="relative h-8 w-full" data-headlessui-state="">
                        <div
                            class="dark:bg-soft-silk/50 border-terracotta-clay-dark
                                dark:text-terracotta-clay-dark text-anthracite relative h-full
                                w-full cursor-default overflow-hidden rounded-2xl border-2
                                bg-[#612411]/50 text-left focus:outline-none"
                        >
                            <div class="flex items-center">
                                <span class="ml-3 flex shrink-0 items-center"
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
                                    id="headlessui-combobox-input-v-1-526"
                                    aria-expanded="false"
                                    aria-autocomplete="list"
                                    role="combobox"
                                    type="text"
                                    tabindex="0"
                                    data-headlessui-state=""
                                    class="relative w-full border-none py-1 pr-10 pl-2 text-sm
                                        leading-5 font-bold focus:ring-0 focus:outline-none"
                                    aria-labelledby="headlessui-combobox-button-v-1-527"
                                />
                            </div>
                            <button
                                id="headlessui-combobox-button-v-1-527"
                                type="button"
                                tabindex="-1"
                                aria-haspopup="listbox"
                                aria-expanded="false"
                                data-headlessui-state=""
                                class="absolute inset-y-0 right-0 flex cursor-pointer items-center
                                    pr-1"
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
                </div>
                <button
                    class="nodrag bg-obsidian/25 hover:bg-obsidian/40 relative flex h-8 w-8
                        cursor-pointer items-center justify-center rounded-2xl transition-colors
                        duration-200 ease-in-out disabled:cursor-not-allowed disabled:opacity-50"
                >
                    <span
                        data-v-cdcee947=""
                        aria-hidden="true"
                        role="img"
                        focusable="false"
                        class="icon-wrapper dark:text-soft-silk text-anthracite inline-block h-5 w-5
                            align-middle opacity-80"
                        ><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                            <path
                                fill="currentColor"
                                fill-rule="evenodd"
                                d="M3.402 6.673c-.26-2.334 2.143-4.048 4.266-3.042l11.944 5.658c2.288 1.083 2.288 4.339 0 5.422L7.668 20.37c-2.123 1.006-4.525-.708-4.266-3.042L3.882 13H12a1 1 0 100-2H3.883z"
                                clip-rule="evenodd"
                            ></path></svg></span
                    ><span
                        class="dark:bg-soft-silk bg-soft-silk/20 dark:text-terracotta-clay-dark
                            text-anthracite absolute top-0 right-0 h-3 w-3 rounded-full
                            text-[0.5rem] font-bold backdrop-blur-lg"
                        >3</span
                    >
                </button>
            </div>
            <div class="group relative h-full">
                <div
                    class="relative flex h-full w-full flex-col overflow-hidden"
                    style="height: 100%"
                >
                    <textarea
                        readonly="true"
                        class="dark:text-soft-silk text-anthracite nodrag nowheel hide-scrollbar
                            bg-terracotta-clay-dark h-32 w-full grow resize-none rounded-2xl px-3
                            py-2 text-sm caret-current focus:ring-0 focus:outline-none"
                        placeholder="Aggregator response will appear here..."
                        :value="PARALLELIZATION_REPONSE_4"
                    ></textarea>
                </div>
            </div>
        </div>
        <div class="absolute top-0 left-0 z-20 flex h-0 w-full flex-col">
            <div
                data-id="main-graph-208f03f6-4630-45f1-86fa-0afd0e31a88f-f0d71f2a-3519-41d7-942a-e5b4ed8743c2-prompt_f0d71f2a-3519-41d7-942a-e5b4ed8743c2-target"
                data-handleid="prompt_f0d71f2a-3519-41d7-942a-e5b4ed8743c2"
                data-nodeid="f0d71f2a-3519-41d7-942a-e5b4ed8743c2"
                data-handlepos="top"
                class="vue-flow__handle vue-flow__handle-top
                    vue-flow__handle-prompt_f0d71f2a-3519-41d7-942a-e5b4ed8743c2 nodrag nopan target
                    connectablestart connectableend handletop z-30"
                style="background: var(--color-node-cat-prompt); left: 33%"
            ></div>
            <div
                class="drop-zone drop-zone-blue absolute bottom-0 left-1/2 z-0 h-10 w-[90%] shrink-0
                    -translate-x-1/2 rounded-t-2xl duration-200 ease-in-out"
                style="display: none"
            ></div>
        </div>
        <div class="absolute top-0 left-0 z-20 flex h-0 w-full flex-col">
            <div
                data-id="main-graph-208f03f6-4630-45f1-86fa-0afd0e31a88f-f0d71f2a-3519-41d7-942a-e5b4ed8743c2-context_f0d71f2a-3519-41d7-942a-e5b4ed8743c2-target"
                data-handleid="context_f0d71f2a-3519-41d7-942a-e5b4ed8743c2"
                data-nodeid="f0d71f2a-3519-41d7-942a-e5b4ed8743c2"
                data-handlepos="top"
                class="vue-flow__handle vue-flow__handle-top
                    vue-flow__handle-context_f0d71f2a-3519-41d7-942a-e5b4ed8743c2 nodrag nopan
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
        <div class="absolute top-0 left-0 z-20 flex h-full w-0 flex-col">
            <div
                data-id="main-graph-208f03f6-4630-45f1-86fa-0afd0e31a88f-f0d71f2a-3519-41d7-942a-e5b4ed8743c2-attachment_f0d71f2a-3519-41d7-942a-e5b4ed8743c2-target"
                data-handleid="attachment_f0d71f2a-3519-41d7-942a-e5b4ed8743c2"
                data-nodeid="f0d71f2a-3519-41d7-942a-e5b4ed8743c2"
                data-handlepos="left"
                class="vue-flow__handle vue-flow__handle-left
                    vue-flow__handle-attachment_f0d71f2a-3519-41d7-942a-e5b4ed8743c2 nodrag nopan
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
                data-id="main-graph-208f03f6-4630-45f1-86fa-0afd0e31a88f-f0d71f2a-3519-41d7-942a-e5b4ed8743c2-context_f0d71f2a-3519-41d7-942a-e5b4ed8743c2-source"
                data-handleid="context_f0d71f2a-3519-41d7-942a-e5b4ed8743c2"
                data-nodeid="f0d71f2a-3519-41d7-942a-e5b4ed8743c2"
                data-handlepos="bottom"
                class="vue-flow__handle vue-flow__handle-bottom
                    vue-flow__handle-context_f0d71f2a-3519-41d7-942a-e5b4ed8743c2 nodrag nopan
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
