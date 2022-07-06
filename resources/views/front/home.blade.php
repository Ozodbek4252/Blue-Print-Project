home 
<form method="POST" action="{{ route('logout') }}" x-data>
  @csrf
  <a class="dropdown-item" href="{{ route('logout') }}" @click.prevent="$root.submit();"><i
      class="uil uil-sign-out-alt font-size-18 align-middle me-1 text-muted"></i> <span
      class="align-middle">Sign out</span></a>
</form>