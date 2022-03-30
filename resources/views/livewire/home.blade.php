<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">

    <!-- Styles -->
    {{-- <link rel="stylesheet" href="{{ asset('css/app.css') }}"> --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css"
        integrity="sha512-wnea99uKIC3TJF7v4eKk4Y+lMz2Mklv18+r4na2Gn1abDRPPOeef95xTzdwGD9e6zXJBteMIhZ1+68QC5byJZw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/css/jquery.dataTables.min.css"
        integrity="sha512-1k7mWiTNoyx2XtmI96o+hdjP8nn0f3Z2N4oF/9ZZRgijyV4omsKOXEnqL1gKQNPy2MTSP9rIEWGcH/CInulptA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/js/jquery.dataTables.min.js"></script>
    <style>
        .tab_li.active a {
            color: #fff;
            background: #037bef;
        }

        @media screen and (max-width:639px) {
            .tab_admin {
                left: 0 !important;
            }
        }

    </style>
    @livewireStyles
</head>

<body class="font-sans antialiased bg-gray-100">
    <div>
        <div class="bg-gray-100 w-full">



            <!-- Page Content -->
            <main class="container mx-auto">
                <div x-data="{ openTab: 1 }" class="w-11/12 md:w-8/12 mx-auto pt-10">
                    <ul class="tab_admin flex border-b relative" style="left:-30px">
                        <li @click="openTab = 1" class="-mb-px mr-1 tab_li">
                            <a class="bg-white inline-block border-l border-t border-r rounded-t py-2 px-4 text-blue-600 hover:text-white hover:bg-blue-600  font-semibold"
                                href="#">Audence</a>
                        </li>
                        <li @click="openTab = 2" class="mr-1 tab_li">
                            <a class="bg-white inline-block py-2 px-4 text-blue-500 border-l rounded-t hover:text-white hover:bg-blue-600 font-semibold"
                                href="#">Campaign</a>
                        </li>
                    </ul>
                    <div class="w-full pt-4">
                        <div>
                            <div x-show="openTab === 1">
                                @livewire('audience')
                            </div>
                        </div>
                        <div>
                            <div x-show="openTab === 2">
                                @livewire('campaign')
                            </div>
                        </div>
                    </div>
                </div>

            </main>
        </div>


        <script>
            $('.tab_li').on('click', function() {

                $(this).addClass('active');
                $('.active').removeClass('active');
            });
        </script>
        @livewireScripts
    </div>

</body>

</html>
