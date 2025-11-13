<script lang="ts" setup>
defineProps<{
    featureRefs: Record<string, HTMLElement>;
}>();
</script>

<template>
    <div
        id="integrated-experience"
        :ref="(el) => (featureRefs['integrated-experience'] = el as HTMLElement)"
        class="scroll-mt-24"
    >
        <div class="flex items-center space-x-4">
            <div
                class="bg-ember-glow/10 text-ember-glow flex h-10 w-10 shrink-0 items-center
                    justify-center rounded-lg"
            >
                <Icon name="mdi:swap-horizontal-bold" class="h-6 w-6" />
            </div>
            <h3 class="text-obsidian text-2xl font-bold tracking-tight sm:text-3xl">
                Integrated Chat & Graph Experience
            </h3>
        </div>
        <p class="text-obsidian/70 mt-4 text-lg leading-relaxed">
            Seamlessly switch between visual graph and clean chat interface. The chat view presents
            a user-friendly conversation while the graph captures the underlying complexity. Start a
            conversation in chat, then hop into the graph to branch, merge, or modify the workflow
            mid-stream. Every message in chat corresponds to a node in your graph—full transparency,
            zero abstraction loss.
        </p>
    </div>
</template>

<style scoped></style>
