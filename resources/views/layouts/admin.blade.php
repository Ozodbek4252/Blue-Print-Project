<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
  @include('components.admin.links')
</head>

<body class="font-sans antialiased">
  <div id="layout-wrapper">

    @include('components.admin.header')
    @include('components.admin.sidebar')

    <div class="main-content">
      <div class="page-content">

        {{-- Main Content Beginning --}}
        {{ isset($slot) ? $slot : ''}}
        @yield('content')
        {{-- Main Content End --}}
        
      </div>
      @include('components.admin.footer')
    </div>

  </div>
  @include('components.admin.scripts')
  @stack('scripts')
</body>
</html>
