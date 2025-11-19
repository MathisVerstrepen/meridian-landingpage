<script lang="ts" setup>
const { t } = useI18n();

// Define sections with their IDs and display labels for the navigation button
const sections = [
    { id: 'hero', label: '', icon: 'mdi:home-variant-outline' },
    { id: 'problem', label: 'problem.header.badge', icon: 'mdi:lightbulb-outline' },
    { id: 'meridian', label: 'meridian.header.badge', icon: 'mdi:star-circle-outline' },
    { id: 'features', label: 'coreFeatures.header.badge', icon: 'mdi:star-four-points-outline' },
];

const activeSection = ref(sections[0].id);
let observer: IntersectionObserver | null = null;

onMounted(() => {
    const options = {
        root: null,
        rootMargin: '-45% 0px -45% 0px', // Detect intersection at the center of the screen
        threshold: 0,
    };

    observer = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
            if (entry.isIntersecting) {
                activeSection.value = entry.target.id;
            }
        });
    }, options);

    sections.forEach((section) => {
        const el = document.getElementById(section.id);
        if (el) observer?.observe(el);
    });
});

onBeforeUnmount(() => {
    if (observer) observer.disconnect();
});

// Compute the next section object based on the current active section
const nextSection = computed(() => {
    const currentIndex = sections.findIndex((s) => s.id === activeSection.value);
    if (currentIndex !== -1 && currentIndex < sections.length - 1) {
        return sections[currentIndex + 1];
    }
    return null;
});

const scrollToNext = () => {
    if (nextSection.value) {
        const el = document.getElementById(nextSection.value.id);
        if (el) {
            el.scrollIntoView({ behavior: 'smooth' });
        }
    }
};
</script>

<template>
    <div class="font-outfit text-soft-silk bg-[#ece4d0]">
        <!-- Hero Section -->
        <div
            id="hero"
            class="relative flex min-h-[calc(100vh-128px)] w-full flex-col justify-center"
        >
            <LandingSectionHero />
        </div>

        <!-- Problem Section -->
        <div
            id="problem"
            class="relative flex min-h-[calc(100vh-128px)] w-full flex-col justify-center"
        >
            <LandingSectionProblem />
        </div>

        <!-- Meridian Section -->
        <div
            id="meridian"
            class="relative flex min-h-[calc(100vh-128px)] w-full flex-col justify-center"
        >
            <LandingSectionMeridian />
        </div>

        <!-- Core Features Section -->
        <div
            id="features"
            class="relative flex min-h-[calc(100vh-128px)] w-full flex-col justify-center"
        >
            <LandingSectionCoreFeatures />
        </div>

        <!-- Footer -->
        <div id="footer" class="relative flex w-full flex-col justify-center">
            <LandingFooter />
        </div>

        <!-- Next Section Navigation Button -->
        <ClientOnly>
            <Teleport to="body">
                <Transition
                    enter-active-class="transition duration-300 ease-out"
                    enter-from-class="translate-y-10 opacity-0"
                    enter-to-class="translate-y-0 opacity-100"
                    leave-active-class="transition duration-200 ease-in"
                    leave-from-class="translate-y-0 opacity-100"
                    leave-to-class="translate-y-10 opacity-0"
                >
                    <button
                        v-if="nextSection"
                        @click="scrollToNext"
                        class="bg-obsidian/80 text-soft-silk hover:bg-ember-glow group fixed
                            bottom-8 left-1/2 z-50 flex -translate-x-1/2 cursor-pointer items-center
                            gap-3 rounded-full px-6 py-3 shadow-lg backdrop-blur-md transition-all
                            hover:scale-105"
                        :aria-label="`Scroll to ${t(nextSection.label)}`"
                    >
                        <Icon
                            :name="nextSection.icon"
                            class="text-ember-glow h-5 w-5 transition-colors group-hover:text-white"
                        />
                        <span class="text-sm font-semibold tracking-wide">{{
                            t(nextSection.label)
                        }}</span>
                        <Icon
                            name="mdi:chevron-down"
                            class="h-5 w-5 opacity-70 group-hover:opacity-100"
                        />
                    </button>
                </Transition>
            </Teleport>
        </ClientOnly>
    </div>
</template>

<style scoped></style>
