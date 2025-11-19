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
const isFullscreen = ref(false);
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
    if (!isFullscreen.value) {
        startAutoAdvance();
    }
};

const startAutoAdvance = () => {
    if (intervalId) return; // Already running
    // Don't auto-advance if fullscreen is open
    if (isFullscreen.value) return;
    intervalId = setInterval(goToNext, props.autoAdvanceDelay);
};

const stopAutoAdvance = () => {
    if (intervalId) {
        clearInterval(intervalId);
        intervalId = null;
    }
};

const openFullscreen = () => {
    stopAutoAdvance();
    isFullscreen.value = true;
    document.body.style.overflow = 'hidden'; // Prevent background scrolling
};

const closeFullscreen = () => {
    isFullscreen.value = false;
    document.body.style.overflow = ''; // Restore scrolling
    startAutoAdvance();
};

// Handle keyboard events for accessibility
const handleKeydown = (e: KeyboardEvent) => {
    if (!isFullscreen.value) return;
    if (e.key === 'Escape') closeFullscreen();
    if (e.key === 'ArrowRight') goToNext();
    if (e.key === 'ArrowLeft') goToPrev();
};

onMounted(() => {
    window.addEventListener('keydown', handleKeydown);

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
        window.removeEventListener('keydown', handleKeydown);
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
                class="relative h-[500px] w-full shrink-0 cursor-zoom-in"
                role="group"
                aria-roledescription="slide"
                :aria-label="`Image ${index + 1} of ${images.length}`"
                @click="openFullscreen"
            >
                <NuxtImg
                    :src="image.src"
                    :alt="image.label"
                    class="h-full w-full object-contain"
                    loading="lazy"
                />
                <div
                    class="pointer-events-none absolute inset-0 bg-linear-to-t from-black/60
                        via-black/20 to-transparent"
                ></div>
                <div class="pointer-events-none absolute bottom-2 left-0 p-6">
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
                @click.stop="handleManualNavigation('prev')"
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
                @click.stop="handleManualNavigation('next')"
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
        <div class="absolute bottom-4 left-1/2 z-10 flex -translate-x-1/2 space-x-2">
            <button
                v-for="(_, index) in images"
                :key="index"
                @click.stop="currentIndex = index"
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

        <!-- Fullscreen Modal -->
        <Teleport to="body">
            <Transition
                enter-active-class="transition duration-300 ease-out"
                enter-from-class="opacity-0"
                enter-to-class="opacity-100"
                leave-active-class="transition duration-200 ease-in"
                leave-from-class="opacity-100"
                leave-to-class="opacity-0"
            >
                <div
                    v-if="isFullscreen"
                    class="fixed inset-0 z-50 flex items-center justify-center bg-black/95
                        backdrop-blur-md"
                    role="dialog"
                    aria-modal="true"
                    @click="closeFullscreen"
                >
                    <!-- Close Button -->
                    <button
                        @click="closeFullscreen"
                        class="absolute top-6 right-6 z-60 text-white/70 transition-colors
                            hover:text-white"
                        aria-label="Close Fullscreen"
                    >
                        <Icon name="mdi:close" class="h-10 w-10" />
                    </button>

                    <!-- Fullscreen Image Container -->
                    <!-- UPDATED: Removed max-w-7xl, changed to h-full w-full to fill screen -->
                    <div
                        class="relative flex h-full w-full items-center justify-center p-0 md:p-4"
                        @click.stop
                    >
                        <Transition
                            appear
                            enter-active-class="transition duration-500 ease-out delay-150"
                            enter-from-class="opacity-0 scale-95"
                            enter-to-class="opacity-100 scale-100"
                        >
                            <!-- UPDATED: sizes="100vw" forces high-res load. 
                                 h-full w-full object-contain forces it to use available space. -->
                            <NuxtImg
                                :key="currentIndex"
                                :src="images[currentIndex].src"
                                :alt="images[currentIndex].label"
                                class="h-full w-full object-contain shadow-2xl"
                                loading="lazy"
                            />
                        </Transition>

                        <!-- Caption in Fullscreen -->
                        <div
                            class="pointer-events-none absolute bottom-8 left-1/2 -translate-x-1/2
                                text-center"
                        >
                            <p
                                class="rounded-full bg-black/40 px-4 py-2 text-xl font-medium
                                    tracking-wide text-white/90 backdrop-blur-sm"
                            >
                                {{ images[currentIndex].label }}
                            </p>
                        </div>

                        <!-- Fullscreen Navigation Arrows -->
                        <button
                            @click.stop="handleManualNavigation('prev')"
                            class="absolute top-1/2 left-4 -translate-y-1/2 rounded-full p-2
                                text-white/50 transition-colors hover:bg-white/10 hover:text-white"
                        >
                            <Icon name="mdi:chevron-left" class="h-12 w-12" />
                        </button>
                        <button
                            @click.stop="handleManualNavigation('next')"
                            class="absolute top-1/2 right-4 -translate-y-1/2 rounded-full p-2
                                text-white/50 transition-colors hover:bg-white/10 hover:text-white"
                        >
                            <Icon name="mdi:chevron-right" class="h-12 w-12" />
                        </button>
                    </div>
                </div>
            </Transition>
        </Teleport>
    </section>
</template>
