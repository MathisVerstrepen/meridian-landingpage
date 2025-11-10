<script lang="ts" setup>
const { t } = useI18n();
</script>

<template>
    <footer class="border-anthracite/20 mt-20 border-t px-6 py-12 lg:px-8">
        <div class="mx-auto max-w-400">
            <div
                class="flex flex-col items-center justify-between space-y-4 sm:flex-row
                    sm:space-y-0"
            >
                <div class="text-ember-glow flex items-center space-x-2">
                    <div
                        class="bg-ember-glow/10 flex h-8 w-8 items-center justify-center rounded-lg"
                    >
                        <Icon name="local:logo" class="h-5 w-5" />
                    </div>
                    <span class="text-xl font-semibold">{{ t('footer.brand') }}</span>
                </div>
                <p class="text-anthracite text-sm">
                    <i18n-t keypath="footer.credits">
                        <template #heart>
                            <span class="text-ember-glow">❤️</span>
                        </template>
                    </i18n-t>
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
</template>

<style scoped></style>
