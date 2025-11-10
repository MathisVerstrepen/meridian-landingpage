<script lang="ts" setup>
import type { FunctionalComponent } from 'vue';

const patternId = 'static-dot-pattern';
const dotGap = 20; // Gap between dots
const dotRadius = 0.5; // Radius of each dot

interface DotPatternProps {
    radius: number;
}
const DotPattern: FunctionalComponent<DotPatternProps> = ({ radius }) => {
    return h('circle', {
        cx: radius,
        cy: radius,
        r: radius,
        fill: 'var(--color-stone-gray)',
    });
};
</script>

<template>
    <svg
        class="vue-flow__background vue-flow__container bg-anthracite dark:bg-obsidian h-full
            w-full"
    >
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

        <rect width="100%" height="100%" :fill="`url(#${patternId})`" />
    </svg>
</template>
