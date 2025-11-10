<script lang="ts" setup>
import type { FunctionalComponent } from 'vue';

const props = defineProps<{
    glowX: number;
    glowY: number;
    showGlow: boolean;
}>();

const patternId = 'static-dot-pattern';
const glowPatternId = 'glow-dot-pattern';
const maskId = 'glow-mask';
const dotGap = 20;
const dotRadius = 0.5;

interface DotPatternProps {
    radius: number;
    fillColor?: string;
}

const DotPattern: FunctionalComponent<DotPatternProps> = ({
    radius,
    fillColor = 'color-mix(in oklab, var(--color-stone-gray) 50%, transparent)',
}) => {
    return h('circle', {
        cx: radius,
        cy: radius,
        r: radius,
        fill: fillColor,
    });
};
</script>

<template>
    <div class="h-full w-full">
        <svg
            class="vue-flow__background vue-flow__container bg-anthracite dark:bg-obsidian absolute
                inset-0 h-full w-full"
        >
            <!-- Normal dot pattern -->
            <pattern
                :id="patternId"
                x="0"
                y="0"
                :width="dotGap"
                :height="dotGap"
                patternUnits="userSpaceOnUse"
            >
                <DotPattern :radius="dotRadius" />
            </pattern>

            <!-- Glow dot pattern -->
            <pattern
                :id="glowPatternId"
                x="0"
                y="0"
                :width="dotGap"
                :height="dotGap"
                patternUnits="userSpaceOnUse"
            >
                <DotPattern :radius="dotRadius" fillColor="var(--color-ember-glow)" />
            </pattern>

            <!-- Mask for glow effect -->
            <mask :id="maskId">
                <rect width="100%" height="100%" fill="black" />
                <circle
                    :cx="glowX"
                    :cy="glowY"
                    r="80"
                    fill="white"
                    :style="{ opacity: showGlow ? 1 : 0 }"
                    class="transition-opacity duration-300 ease-out"
                />
            </mask>

            <!-- Background with normal dots -->
            <rect width="100%" height="100%" :fill="`url(#${patternId})`" />

            <!-- Glow dots layer with mask -->
            <rect
                width="100%"
                height="100%"
                :fill="`url(#${glowPatternId})`"
                :mask="`url(#${maskId})`"
            />
        </svg>

        <div
            class="dot-glow pointer-events-none absolute -translate-x-1/2 -translate-y-1/2
                rounded-full transition-opacity duration-300 ease-out"
            :class="showGlow ? 'opacity-100' : 'opacity-0'"
            :style="{
                left: `${glowX}px`,
                top: `${glowY}px`,
            }"
        />
    </div>
</template>

<style scoped>
.dot-glow {
    width: 200px;
    height: 200px;
    background: radial-gradient(circle, var(--color-ember-glow) 0%, transparent 50%);
    mix-blend-mode: screen;
    filter: blur(100px);
}
</style>
