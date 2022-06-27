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
  <link rel="stylesheet" href="{{ mix('css/app.css') }}">

  @livewireStyles

  <!-- Scripts -->
  <script src="{{ mix('js/app.js') }}" defer></script>
</head>
<body class="font-sans antialiased">

  {{-- {{ $slot }} --}}

app layout

  {{-- <!-- JAVASCRIPT -->
  <script src="/assets/libs/jquery/jquery.min.js"></script>
  <script src="/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/assets/libs/metismenu/metisMenu.min.js"></script>
  <script src="/assets/libs/simplebar/simplebar.min.js"></script>
  <script src="/assets/libs/node-waves/waves.min.js"></script>
  <script src="/assets/libs/waypoints/lib/jquery.waypoints.min.js"></script>
  <script src="/assets/libs/jquery.counterup/jquery.counterup.min.js"></script>

  <!-- apexcharts -->
  <script src="/assets/libs/apexcharts/apexcharts.min.js"></script>

  <script src="/assets/js/pages/dashboard.init.js"></script>

  <!-- App js -->
  <script src="/assets/js/app.js"></script> --}}
  @stack('modals')

  @livewireScripts
</body>
</html>
