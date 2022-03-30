{{-- <x-app-layout> --}}
<div>
   
    <div class="col-md-6">


        @if (count($errors) > 0)
            <div class="alert alert-danger">
                <a href="#" class="close" data-dismiss="alert">&times;</a>
                <strong>Sorry!</strong> invalid input.<br><br>
                <ul style="list-style-type:none;">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif


        @if ($updateMode)
            <div class="fixed">
                <div id="modal_edit_audience" wire:ignore.self aria-hidden="true"
                    class="mx-auto pt-20 hidden overflow-y-auto overflow-x-hidden fixed right-0 left-0 top-4 z-50 justify-center items-center h-modal md:h-full md:inset-0">
                    <div class="absolute inset-0 bg-gray-900 opacity-75">
                    </div>
                    <div class="relative px-4 w-full h-full md:h-auto">
                        <div class="relative w-5/12 mx-auto bg-white rounded-lg shadow dark:bg-gray-700">

                            <div class="p-10">
                                <input type="hidden" wire:model="selected_id">
                                <div class="mb-2 flex item-center">
                                    <label for="email"
                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300 w-32">Name</label>
                                    <input wire:model="name" type="email"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                        placeholder="name" required>
                                </div>
                                <div class="mb-2 flex item-center">
                                    <label for="email"
                                        class="flex items-center mb-2 text-sm font-medium text-gray-900 dark:text-gray-300 w-32">
                                        Email</label>
                                    <input wire:model="email" type="email"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                        placeholder="email" required>
                                </div>
                                <div class="mb-2 flex item-center">
                                    <label for="email"
                                        class="flex items-center mb-2 text-sm font-medium text-gray-900 dark:text-gray-300 w-32">
                                        Source</label>
                                    <input wire:model="source" type="email"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                        placeholder="source" required>
                                </div>
                                <div class="mb-2 flex item-center">
                                    <label for="email"
                                        class="flex items-center mb-2 text-sm font-medium text-gray-900 dark:text-gray-300 w-32">
                                        Status</label>
                                    <select wire:model="status"
                                        class="form-select appearance-none  block w-full px-3 py-1.5 text-base font-normal text-gray-700
                        bg-white bg-clip-padding bg-no-repeat border border-solid border-gray-300 rounded transition ease-in-out
                        m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none"
                                        aria-label="Default select example">
                                        <option selected value="">-- select --</option>
                                        <option value="1">Active</option>
                                        <option value="0">InActive</option>
                                    </select>
                                </div>
                                <div class="mb-2 flex item-center">
                                    <label for="email"
                                        class="flex items-center mb-2 text-sm font-medium text-gray-900 dark:text-gray-300 w-32">
                                        Note</label>
                                    <input wire:model="note" type="email"
                                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                        placeholder="note" required>
                                </div>
                                <div class="mt-10">
                                    <button wire:click="update()" onclick="edit_audience()"
                                        class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Update</button>
                                    <button data-modal-toggle="defaultModal" type="button" onclick="edit_audience()"
                                        class="text-white bg-red-500 hover:bg-white focus:ring-4 focus:ring-gray-300 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-gray-900 focus:z-10 dark:bg-gray-700 dark:text-gray-300 dark:border-gray-500 dark:hover:text-white dark:hover:bg-gray-600">Close</button>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endif

        @include('livewire.audience.create')

        <div class="flex flex-col">
            <div class="overflow-x-auto sm:-mx-6 lg:-mx-8">
                <div class="py-2 mx-auto">
                    <div class="rounded-lg  mx-auto">
                        <button onclick="create_audience()"
                            class="mb-5 block text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                            type="button" data-modal-toggle="defaultModal">
                            create
                        </button>
                        <table class="w-full py-5" id="audiance_table">
                            <thead class="bg-gray-50 dark:bg-gray-700">
                                <tr>
                                    <th scope="col"
                                        class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400">
                                        Name
                                    </th>
                                    <th scope="col"
                                        class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400">
                                        Email
                                    </th>
                                    <th scope="col"
                                        class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400">
                                        Source
                                    </th>
                                    <th scope="col"
                                        class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400">
                                        Status
                                    </th>
                                    <th scope="col"
                                        class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400">
                                        Note
                                    </th>
                                    <th scope="col"
                                        class="py-3 px-6 text-xs font-medium tracking-wider text-right text-gray-700 uppercase dark:text-gray-400">
                                        Action
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data_audience as $audience)
                                    <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                                        <td wire:key="{{ $loop->index }}"
                                            class="py-4 px-6 text-sm font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                            {{ $audience->name }}
                                        </td>
                                        <td wire:key="{{ $loop->index }}"
                                            class="py-4 px-6 text-sm text-gray-500 whitespace-nowrap dark:text-gray-400">
                                            {{ $audience->email }}
                                        </td>
                                        <td wire:key="{{ $loop->index }}"
                                            class="py-4 px-6 text-sm text-gray-500 whitespace-nowrap dark:text-gray-400">
                                            {{ $audience->source }}
                                        </td>
                                        <td wire:key="{{ $loop->index }}"
                                            class="py-4 px-6 text-sm text-gray-500 whitespace-nowrap dark:text-gray-400">
                                            {{-- {{ $audience->status }} --}}
                                            @if ($audience->status == '1')
                                                <i class="fas fa-check text-red-500"></i>
                                            @else
                                                <i class="fas fa-times text-blue-600"></i>
                                            @endif
                                        </td>
                                        <td wire:key="{{ $loop->index }}"
                                            class="py-4 px-6 text-sm text-gray-500 whitespace-nowrap dark:text-gray-400">
                                            {{ $audience->note }}
                                        </td>
                                        <td wire:key="{{ $loop->index }}"
                                            class="py-4 px-6 text-sm font-medium text-right whitespace-nowrap">
                                            <button wire:click="edit({{ $audience->id }})" onclick="edit_audience()"
                                                class="btn btn-sm btn-outline-danger py-0 mr-3"><i
                                                    class="fa-solid fa-pen text-blue-800"></i></button>
                                            <button wire:click="destroy({{ $audience->id }})"
                                                class="btn btn-sm btn-outline-danger py-0"><i
                                                    class="fa-solid fa-trash-can text-red-600 "></i></button>
                                        </td>
                                    </tr>
                                @endforeach
                                {{-- {{ $data_audience->links() }} --}}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>






<script>
    $(document).ready(function() {
        $('#audiance_table').dataTable();
    });

    function edit_audience() {
        document.getElementById('modal_edit_audience').classList.toggle('hidden');
    }
</script>
{{-- </x-app-layout> --}}
