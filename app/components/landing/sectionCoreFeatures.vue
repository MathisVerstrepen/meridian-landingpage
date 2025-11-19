<script setup lang="ts">
import { ref, onMounted, onBeforeUnmount } from 'vue';

const activeFeature = ref('visual-canvas');
const featureRefs = ref<Record<string, HTMLElement>>({});
let observer: IntersectionObserver | null = null;

onMounted(() => {
    const observerOptions = {
        root: null,
        rootMargin: '-30% 0px -60% 0px',
        threshold: 0,
    };

    observer = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
            if (entry.isIntersecting) {
                activeFeature.value = entry.target.id;
            }
        });
    }, observerOptions);

    Object.values(featureRefs.value).forEach((el) => {
        if (el) observer?.observe(el);
    });
});

onBeforeUnmount(() => {
    observer?.disconnect();
});

function scrollToFeature(id: string) {
    featureRefs.value[id]?.scrollIntoView({
        behavior: 'smooth',
        block: 'start',
    });
    activeFeature.value = id;
}
</script>

<template>
    <section class="mx-auto max-w-400 px-6 py-24 sm:py-32 lg:px-8">
        <!-- Section Header -->
        <div class="mx-auto max-w-2xl text-center">
            <div
                class="bg-obsidian/5 mb-6 inline-flex items-center space-x-2 rounded-full px-4 py-2"
            >
                <Icon name="mdi:star-four-points-outline" class="text-ember-glow h-5 w-5" />
                <span class="text-obsidian/70 text-sm font-semibold">{{
                    $t('coreFeatures.header.badge')
                }}</span>
            </div>
            <h2
                class="text-obsidian mb-6 text-4xl font-bold tracking-tight sm:text-5xl lg:text-6xl"
            >
                {{ $t('coreFeatures.header.title') }}
            </h2>
            <p class="text-obsidian/70 mx-auto max-w-3xl text-lg leading-8 sm:text-xl">
                {{ $t('coreFeatures.header.subtitle') }}
            </p>
        </div>

        <!-- Features Grid -->
        <div class="mt-20 grid grid-cols-1 gap-x-12 gap-y-16 lg:grid-cols-4">
            <!-- Sticky Nav -->
            <div class="lg:col-span-1">
                <div class="lg:sticky lg:top-24">
                    <ul class="space-y-2">
                        <li>
                            <button
                                @click="scrollToFeature('visual-canvas')"
                                :class="[
                                    `flex w-full items-center space-x-3 rounded-lg p-3 text-left
                                    transition-colors duration-200`,
                                    activeFeature === 'visual-canvas'
                                        ? 'bg-obsidian text-soft-silk'
                                        : 'text-obsidian/60 hover:bg-obsidian/5 hover:text-obsidian',
                                ]"
                            >
                                <Icon name="mdi:sitemap-outline" class="h-6 w-6 shrink-0" />
                                <span class="font-semibold">{{
                                    $t('coreFeatures.nav.visualCanvas')
                                }}</span>
                            </button>
                        </li>
                        <li>
                            <button
                                @click="scrollToFeature('node-system')"
                                :class="[
                                    `flex w-full items-center space-x-3 rounded-lg p-3 text-left
                                    transition-colors duration-200`,
                                    activeFeature === 'node-system'
                                        ? 'bg-obsidian text-soft-silk'
                                        : 'text-obsidian/60 hover:bg-obsidian/5 hover:text-obsidian',
                                ]"
                            >
                                <Icon name="mdi:toy-brick-outline" class="h-6 w-6 shrink-0" />
                                <span class="font-semibold">{{
                                    $t('coreFeatures.nav.nodeSystem')
                                }}</span>
                            </button>
                        </li>
                        <li>
                            <button
                                @click="scrollToFeature('integrated-experience')"
                                :class="[
                                    `flex w-full items-center space-x-3 rounded-lg p-3 text-left
                                    transition-colors duration-200`,
                                    activeFeature === 'integrated-experience'
                                        ? 'bg-obsidian text-soft-silk'
                                        : 'text-obsidian/60 hover:bg-obsidian/5 hover:text-obsidian',
                                ]"
                            >
                                <Icon name="mdi:swap-horizontal-bold" class="h-6 w-6 shrink-0" />
                                <span class="font-semibold">{{
                                    $t('coreFeatures.nav.integratedExperience')
                                }}</span>
                            </button>
                        </li>
                        <li>
                            <button
                                @click="scrollToFeature('model-management')"
                                :class="[
                                    `flex w-full items-center space-x-3 rounded-lg p-3 text-left
                                    transition-colors duration-200`,
                                    activeFeature === 'model-management'
                                        ? 'bg-obsidian text-soft-silk'
                                        : 'text-obsidian/60 hover:bg-obsidian/5 hover:text-obsidian',
                                ]"
                            >
                                <Icon name="mdi:tune-variant" class="h-6 w-6 shrink-0" />
                                <span class="font-semibold">{{
                                    $t('coreFeatures.nav.modelManagement')
                                }}</span>
                            </button>
                        </li>
                        <li>
                            <button
                                @click="scrollToFeature('technical-tooling')"
                                :class="[
                                    `flex w-full items-center space-x-3 rounded-lg p-3 text-left
                                    transition-colors duration-200`,
                                    activeFeature === 'technical-tooling'
                                        ? 'bg-obsidian text-soft-silk'
                                        : 'text-obsidian/60 hover:bg-obsidian/5 hover:text-obsidian',
                                ]"
                            >
                                <Icon name="mdi:tools" class="h-6 w-6 shrink-0" />
                                <span class="font-semibold">{{
                                    $t('coreFeatures.nav.technicalTooling')
                                }}</span>
                            </button>
                        </li>
                        <li>
                            <button
                                @click="scrollToFeature('enterprise-foundation')"
                                :class="[
                                    `flex w-full items-center space-x-3 rounded-lg p-3 text-left
                                    transition-colors duration-200`,
                                    activeFeature === 'enterprise-foundation'
                                        ? 'bg-obsidian text-soft-silk'
                                        : 'text-obsidian/60 hover:bg-obsidian/5 hover:text-obsidian',
                                ]"
                            >
                                <Icon name="mdi:shield-check-outline" class="h-6 w-6 shrink-0" />
                                <span class="font-semibold">{{
                                    $t('coreFeatures.nav.enterpriseFoundation')
                                }}</span>
                            </button>
                        </li>
                    </ul>
                </div>
            </div>

            <!-- Content -->
            <div class="lg:col-span-3">
                <div class="space-y-24">
                    <!-- Feature: Visual Graph Canvas -->
                    <LandingCoreFeaturesVisualGraphCanvas :feature-refs="featureRefs" />

                    <!-- Feature: Modular Node System -->
                    <LandingCoreFeaturesModularNodeSystem :feature-refs="featureRefs" />

                    <!-- Feature: Integrated Chat & Graph Experience -->
                    <LandingCoreFeaturesIntegratedChatGraphExperience :feature-refs="featureRefs" />

                    <!-- Feature: Advanced Model Management -->
                    <LandingCoreFeaturesAdvancedModelManagement :feature-refs="featureRefs" />

                    <!-- Feature: Rich Content & Technical Tooling -->
                    <LandingCoreFeaturesRichContentTechnicalTooling :feature-refs="featureRefs" />

                    <!-- Feature: Enterprise-Grade Foundation -->
                    <LandingCoreFeaturesEntrepriseGradeFoundation :feature-refs="featureRefs" />
                </div>
            </div>
        </div>
    </section>
</template>