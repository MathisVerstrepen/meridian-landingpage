<script setup lang="ts">
import { ref, computed, onMounted, onBeforeUnmount } from 'vue';

interface CarouselImage {
    src: string;
    label: string;
}

const props = withDefaults(
    defineProps<{
        images: CarouselImage[];
        autoAdvanceDelay?: number;
    }>(),
    {
        autoAdvanceDelay: 5000, // 5 seconds
    },
);

const currentIndex = ref(0);
const carouselRef = ref<HTMLElement | null>(null);
let intervalId: ReturnType<typeof setInterval> | null = null;

const trackStyle = computed(() => ({
    transform: `translateX(-${currentIndex.value * 100}%)`,
}));

const goToNext = () => {
    currentIndex.value = (currentIndex.value + 1) % props.images.length;
};

const goToPrev = () => {
    currentIndex.value = (currentIndex.value - 1 + props.images.length) % props.images.length;
};

const handleManualNavigation = (direction: 'next' | 'prev') => {
    if (direction === 'next') {
        goToNext();
    } else {
        goToPrev();
    }
    // Reset the interval on manual interaction
    stopAutoAdvance();
    startAutoAdvance();
};

const startAutoAdvance = () => {
    if (intervalId) return; // Already running
    intervalId = setInterval(goToNext, props.autoAdvanceDelay);
};

const stopAutoAdvance = () => {
    if (intervalId) {
        clearInterval(intervalId);
        intervalId = null;
    }
};

onMounted(() => {
    const observer = new IntersectionObserver(
        ([entry]) => {
            if (entry.isIntersecting) {
                startAutoAdvance();
            } else {
                stopAutoAdvance();
            }
        },
        { threshold: 0.5 }, // Start when 50% of the element is visible
    );

    if (carouselRef.value) {
        observer.observe(carouselRef.value);
    }

    onBeforeUnmount(() => {
        stopAutoAdvance();
        if (carouselRef.value) {
            observer.unobserve(carouselRef.value);
        }
    });
});
</script>

<template>
    <section
        ref="carouselRef"
        class="bg-obsidian relative mx-auto w-full max-w-5xl overflow-hidden rounded-2xl shadow-2xl"
        aria-roledescription="carousel"
        aria-label="Image Carousel"
    >
        <!-- Slides Track -->
        <div class="flex transition-transform duration-700 ease-in-out" :style="trackStyle">
            <div
                v-for="(image, index) in images"
                :key="index"
                class="relative h-[500px] w-full shrink-0"
                role="group"
                aria-roledescription="slide"
                :aria-label="`Image ${index + 1} of ${images.length}`"
            >
                <NuxtImg :src="image.src" :alt="image.label" class="h-full w-full object-contain" />
                <div
                    class="absolute inset-0 bg-linear-to-t from-black/60 via-black/20
                        to-transparent"
                ></div>
                <div class="absolute bottom-0 left-0 p-6">
                    <h3 class="text-soft-silk text-2xl font-bold tracking-tight">
                        {{ image.label }}
                    </h3>
                </div>
            </div>
        </div>

        <!-- Manual Controls -->
        <template v-if="images.length > 1">
            <!-- Previous Button -->
            <button
                @click="handleManualNavigation('prev')"
                class="bg-obsidian/40 text-soft-silk/80 hover:bg-obsidian/60 hover:text-soft-silk
                    focus:ring-soft-silk/20 focus:ring-offset-obsidian absolute top-1/2 left-4 z-10
                    flex h-12 w-12 -translate-y-1/2 items-center justify-center rounded-full
                    backdrop-blur-sm transition focus:ring-2 focus:ring-offset-2 focus:outline-none"
                aria-label="Previous Slide"
            >
                <Icon name="mdi:chevron-left" class="h-8 w-8" />
            </button>

            <!-- Next Button -->
            <button
                @click="handleManualNavigation('next')"
                class="bg-obsidian/40 text-soft-silk/80 hover:bg-obsidian/60 hover:text-soft-silk
                    focus:ring-soft-silk/20 focus:ring-offset-obsidian absolute top-1/2 right-4 z-10
                    flex h-12 w-12 -translate-y-1/2 items-center justify-center rounded-full
                    backdrop-blur-sm transition focus:ring-2 focus:ring-offset-2 focus:outline-none"
                aria-label="Next Slide"
            >
                <Icon name="mdi:chevron-right" class="h-8 w-8" />
            </button>
        </template>

        <!-- Navigation Dots -->
        <div class="absolute bottom-6 left-1/2 z-10 flex -translate-x-1/2 space-x-2">
            <button
                v-for="(_, index) in images"
                :key="index"
                @click="currentIndex = index"
                :class="[
                    'h-2 w-2 rounded-full transition-all duration-300',
                    currentIndex === index
                        ? 'bg-ember-glow w-4'
                        : 'bg-soft-silk/50 hover:bg-soft-silk/80',
                ]"
                :aria-label="`Go to slide ${index + 1}`"
                :aria-current="currentIndex === index ? 'true' : 'false'"
            ></button>
        </div>
    </section>
</template>
