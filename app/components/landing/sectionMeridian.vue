<script lang="ts" setup>
const { t } = useI18n();

const differentiators = [
    {
        icon: 'mdi:sitemap',
        key: 'visual',
    },
    {
        icon: 'mdi:source-branch',
        key: 'context',
    },
    {
        icon: 'mdi:cogs',
        key: 'orchestration',
    },
    {
        icon: 'mdi:code-tags',
        key: 'developer',
    },
];
</script>

<template>
    <section class="mx-auto max-w-400 px-6 py-24 sm:py-32 lg:px-8">
        <!-- Section Header -->
        <div class="mx-auto max-w-275 text-center">
            <div
                class="bg-obsidian/5 mb-6 inline-flex items-center space-x-2 rounded-full px-4 py-2"
            >
                <Icon name="mdi:star-circle-outline" class="text-ember-glow h-5 w-5" />
                <span class="text-obsidian/70 text-sm font-semibold">{{
                    t('meridian.header.badge')
                }}</span>
            </div>
            <h2
                class="text-obsidian mb-6 text-4xl font-bold tracking-tight sm:text-5xl lg:text-6xl"
            >
                {{ t('meridian.header.title1') }} <br />
                {{ t('meridian.header.title2') }}
            </h2>
            <p class="text-obsidian/70 mx-auto max-w-3xl text-lg leading-8 sm:text-xl">
                {{ t('meridian.header.subtitle') }}
            </p>
        </div>

        <!-- Differentiators Grid -->
        <div class="mx-auto mt-20 max-w-275">
            <h3 class="text-obsidian text-center text-3xl font-bold tracking-tight sm:text-4xl">
                {{ t('meridian.differentiators.title') }}
            </h3>
            <div
                class="mx-auto mt-16 grid max-w-lg grid-cols-1 gap-x-16 gap-y-10 lg:max-w-none
                    lg:grid-cols-2"
            >
                <div
                    v-for="item in differentiators"
                    :key="item.key"
                    class="bg-obsidian relative rounded-xl p-4 pl-18"
                >
                    <div
                        class="text-ember-glow bg-soft-silk/5 absolute top-4 left-4 flex h-10 w-10
                            items-center justify-center rounded-lg"
                    >
                        <Icon :name="item.icon" class="h-6 w-6" aria-hidden="true" />
                    </div>
                    <div class="text-soft-silk mt-1.5 text-lg leading-7 font-semibold">
                        {{ t(`meridian.differentiators.items.${item.key}.title`) }}
                    </div>
                    <div class="text-stone-gray mt-4 font-sans text-sm leading-6">
                        {{ t(`meridian.differentiators.items.${item.key}.text`) }}
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<style scoped></style>
