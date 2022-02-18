<template>
    <div class="sm:text-center lg:text-left">
      <h1 class="text-4xl tracking-tight font-extrabold text-gray-900 sm:text-5xl md:text-6xl">
        <span class="block xl:inline">Teamkits</span>
        <br/>
        <span class="block text-indigo-600 xl:inline">online tools</span>
      </h1>
      <p class="mt-3 text-base text-gray-500 sm:mt-5 sm:text-lg sm:max-w-xl sm:mx-auto md:mt-5 md:text-xl lg:mx-0">
        信息化与数字化技术快速发展，<br/>
        不知不觉中，已然深入到生活的方方面面。<br/>
        在工作中更是要善用数字化协同工具，才能和小伙伴们一起高效工作、快乐生活！
      </p>
      <div class="mt-5 sm:mt-8 sm:flex sm:justify-center lg:justify-start">
        <div v-for="item in tools" class="rounded-md shadow" :key="item.name" style="margin: 3px;">
          <a :href="item.href"
              class="w-full flex items-center justify-center px-8 py-3 border border-transparent text-base font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 md:py-4 md:text-lg md:px-10">
            {{ item.name }}
          </a>
        </div>
        <div class="mt-3 sm:mt-0 sm:ml-3">
          <a href="#" class="w-full flex items-center justify-center px-8 py-3 border border-transparent text-base font-medium rounded-md text-indigo-700 bg-indigo-100 hover:bg-indigo-200 md:py-4 md:text-lg md:px-10">
            更多...
          </a>
        </div>
      </div>
    </div>
</template>

<script>

const tools = [
  { name: '试试看', href: '#' },
  { name: '开个会', href: '#' },
  { name: '玩一会', href: '#' },
]

export default {
  setup() {
    return {
      tools,
    }
  }
}
</script>
