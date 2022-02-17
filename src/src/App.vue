<script>
import { MenuIcon, XIcon } from '@heroicons/vue/outline'
import { Popover, PopoverButton, PopoverPanel } from '@headlessui/vue'

const navigation = [
  { name: 'Services', href: '#' },
  { name: 'Tags', href: '#' },
  { name: 'Search', href: '#' },
  { name: 'About', href: '#' },
]

export default {
  components: {
    Popover, PopoverButton, PopoverPanel, MenuIcon, XIcon,
  },
  setup() {
    return {
      navigation,
    }
  }
}
</script>

<template>
  <div class="relative bg-white overflow-hidden">
    <div class="max-w-7xl mx-auto">
      <div class="relative z-10 pb-8 bg-white sm:pb-16 md:pb-20 lg:max-w-2xl lg:w-full lg:pb-28 xl:pb-32">
        <svg class="hidden lg:block absolute right-0 inset-y-0 h-full w-48 text-white transform translate-x-1/2" fill="currentColor" viewBox="0 0 100 100" preserveAspectRatio="none" aria-hidden="true">
          <polygon points="50,0 100,0 50,100 0,100" />
        </svg>
        <Popover>
          <div class="relative pt-6 px-4 sm:px-6 lg:px-8">
            <nav class="relative flex items-center justify-between sm:h-10 lg:justify-start" aria-label="Global">
              <div class="flex items-center flex-grow flex-shrink-0 lg:flex-grow-0">
                <div class="flex items-center justify-between w-full md:w-auto">
                  <a href="#">
                    <span class="sr-only">Workflow</span>
                    <svg class="" preserveAspectRatio="none" aria-hidden="true" width="64px" height="64px" viewBox="0 0 64 64">
                      <path d="M59.5 30.6C59.5 54.1 32 62 32 62S4.5 54.1 4.5 30.6C4.5 13.1 15.5 2 32 2s27.5 11.1 27.5 28.6z" fill="#c7e755"></path>
                      <g fill="#454749">
                        <path d="M23.4 26.4c4 3.8 5.1 8.9 2.6 11.4c-2.5 2.4-7.8 1.3-11.7-2.5c-4-3.8-5.1-8.9-2.6-11.4c2.5-2.5 7.7-1.4 11.7 2.5"></path>
                        <path d="M26.4 30.6c-2.6-2.3-5.2-4.1-8-5.7c-1.4-.8-2.9-1.5-4.4-2.1c-1.5-.6-3.1-1.2-4.7-1.8c1.7-.2 3.5-.1 5.2.3c1.7.4 3.4 1 4.9 1.8c1.5.8 2.9 1.9 4.2 3.2c1.1 1.2 2.2 2.6 2.8 4.3"></path>
                      </g>
                      <path d="M20.4 25c2 1.2 3.1 3.1 2.5 4.1c-.7 1-2.9.8-4.9-.4c-2-1.2-3.1-3.1-2.5-4.1c.7-1 2.8-.8 4.9.4" fill="#fff"></path>
                      <g fill="#454749">
                        <path d="M40.6 26.4c-4 3.8-5.1 8.9-2.6 11.4c2.5 2.4 7.8 1.3 11.7-2.5c4-3.8 5.1-8.9 2.6-11.4c-2.5-2.5-7.7-1.4-11.7 2.5"></path>
                        <path d="M37.6 30.6c.6-1.6 1.7-3 2.9-4.3c1.2-1.2 2.6-2.3 4.2-3.2c1.5-.9 3.2-1.5 4.9-1.8c1.7-.4 3.4-.5 5.2-.3c-1.6.6-3.2 1.1-4.7 1.8c-1.5.6-3 1.3-4.4 2.1c-2.9 1.5-5.5 3.4-8.1 5.7"></path>
                      </g>
                      <path d="M43.6 25c-2 1.2-3.1 3.1-2.5 4.1c.7 1 2.9.8 4.9-.4c2-1.2 3.1-3.1 2.5-4.1c-.7-1-2.8-.8-4.9.4" fill="#fff"></path>
                      <path d="M32 48.6c-7.6 0-10.7-3.7-10.7-2.4c0 1.9 4.8 4.4 10.7 4.4s10.7-2.5 10.7-4.4c0-1.3-3.1 2.4-10.7 2.4z" fill="#454749" stroke="#454749" stroke-miterlimit="10"></path>
                    </svg>
                  </a>
                  <div class="-mr-2 flex items-center md:hidden">
                    <PopoverButton class="bg-white rounded-md p-2 inline-flex items-center justify-center text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500">
                      <span class="sr-only">Open main menu</span>
                      <MenuIcon class="h-6 w-6" aria-hidden="true" />
                    </PopoverButton>
                  </div>
                </div>
              </div>
              <div class="hidden md:block md:ml-10 md:pr-4 md:space-x-8">
                <a v-for="item in navigation" :key="item.name" :href="item.href" class="font-medium text-gray-500 hover:text-gray-900">{{ item.name }}</a>
              </div>
            </nav>
          </div>
          <transition enter-active-class="duration-150 ease-out" enter-from-class="opacity-0 scale-95" enter-to-class="opacity-100 scale-100" leave-active-class="duration-100 ease-in" leave-from-class="opacity-100 scale-100" leave-to-class="opacity-0 scale-95">
            <PopoverPanel focus class="absolute z-10 top-0 inset-x-0 p-2 transition transform origin-top-right md:hidden">
              <div class="rounded-lg shadow-md bg-white ring-1 ring-black ring-opacity-5 overflow-hidden">
                <div class="px-5 pt-4 flex items-center justify-between">
                  <div>
                    <img class="h-8 w-auto" src="https://tailwindui.com/img/logos/workflow-mark-indigo-600.svg" alt="" />
                  </div>
                  <div class="-mr-2">
                    <PopoverButton class="bg-white rounded-md p-2 inline-flex items-center justify-center text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500">
                      <span class="sr-only">Close main menu</span>
                      <XIcon class="h-6 w-6" aria-hidden="true" />
                    </PopoverButton>
                  </div>
                </div>
                <div class="px-2 pt-2 pb-3 space-y-1">
                  <a v-for="item in navigation" :key="item.name" :href="item.href" class="block px-3 py-2 rounded-md text-base font-medium text-gray-700 hover:text-gray-900 hover:bg-gray-50">
                    {{ item.name }}
                  </a>
                </div>
              </div>
            </PopoverPanel>
          </transition>
        </Popover>

        <main class="mt-10 mx-auto max-w-7xl px-4 sm:mt-12 sm:px-6 md:mt-16 lg:mt-20 lg:px-8 xl:mt-28">
          <router-view />
        </main>
      </div>
    </div>

    <div class="lg:absolute lg:inset-y-0 lg:right-0 lg:w-1/2">
      <img class="h-56 w-full object-cover sm:h-72 md:h-96 lg:w-full lg:h-full" src="https://images.unsplash.com/photo-1551434678-e076c223a692?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80" alt="" />
    </div>
  </div>

  <footer class="w-full max-w-container mx-auto border-t py-10 text-center flex items-center justify-center text-sm text-gray-500">
    <p>© 2022 Rex All rights reserved.</p>
    <p class="ml-3 border-l border-gray-200 pl-3">
      <a class="hover:text-teal-600" href="https://beian.miit.gov.cn" target="_blank">陕ICP备20001557号-2</a>
    </p>
  </footer>
</template>
