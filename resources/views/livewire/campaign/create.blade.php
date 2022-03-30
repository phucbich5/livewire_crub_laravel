<div>
    <div class="fixed">
        <div id="modal_create_campaign" wire:ignore.self aria-hidden="true"
            class="mx-auto pt-20 hidden overflow-y-auto overflow-x-hidden fixed right-0 left-0 top-4 z-50 justify-center items-center h-modal md:h-full md:inset-0">
            <div class="absolute inset-0 bg-gray-900 opacity-75">
            </div>
            <div class="relative px-4 w-full h-full md:h-auto">
                <div class="relative md:w-6/12 mx-auto bg-white rounded-lg shadow dark:bg-gray-700">

                    <div class="p-10">
                        <div class="mb-2 flex item-center">
                            <label for="name"
                                class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300 w-32">Name</label>
                            <input wire:model="name" type="text"
                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                placeholder="Name" required>
                        </div>
                        <div class="mb-2 flex item-center">
                            <label for="template"
                                class="flex items-center mb-2 text-sm font-medium text-gray-900 dark:text-gray-300 w-32">
                                Template</label>
                            <input wire:model="template" type="text"
                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                placeholder="Template" required>
                        </div>
                        <div class="mb-2 flex item-center">
                            <label for="audience"
                                class="flex items-center mb-2 text-sm font-medium text-gray-900 dark:text-gray-300 w-32">
                                Audience</label>
                            {{-- <input wire:model="audience" type="text"
                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                placeholder="audience" required> --}}


                            <select wire:model="audience"
                                class="form-select appearance-none  block w-full px-3 py-1.5 text-base font-normal text-gray-700
                        bg-white bg-clip-padding bg-no-repeat border border-solid border-gray-300 rounded transition ease-in-out
                        m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none"
                                aria-label="Default select example">
                                <option selected>-- Option --</option>
                                @foreach ($audience_for_campaign as $audience)
                                    
                                    <option value="{{ $audience->name }}"
                                        {{ $audience->audiencr == $audience->name ? 'selected' : '' }}>
                                        {{ $audience->name }}</option>
                                @endforeach
                            </select>

                        </div>
                        <div class="mb-2 flex item-center">
                            <label for="status"
                                class="flex items-center mb-2 text-sm font-medium text-gray-900 dark:text-gray-300 w-32">
                                Status</label>
                            <select wire:model="status"
                                class="form-select appearance-none  block w-full px-3 py-1.5 text-base font-normal text-gray-700
                        bg-white bg-clip-padding bg-no-repeat border border-solid border-gray-300 rounded transition ease-in-out
                        m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none"
                                aria-label="Default select example">
                                <option selected>-- Option --</option>
                                <option value="1" selected>Active</option>
                                <option value="0">InActive</option>
                            </select>
                        </div>

                        <div class="mt-10">
                            <button data-modal-toggle="defaultModal" type="button" wire:click="store()"
                                onclick="create_campaign()"
                                class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Create</button>
                            <button data-modal-toggle="defaultModal" type="button" onclick="create_campaign()"
                                class="text-white bg-red-600 hover:bg-gray-100 focus:ring-4 focus:ring-gray-300 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-white focus:z-10 dark:bg-gray-700 dark:text-gray-300 dark:border-gray-500 hover:text-gray-900 dark:hover:bg-gray-600">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
