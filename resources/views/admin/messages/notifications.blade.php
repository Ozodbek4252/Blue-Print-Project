@extends('layouts.admin')

@section('content')
  <div class="row">
    <div class="col-xl-6">
      <div class="card">
        <div class="card-body">

          <h4 class="card-title">Notifications</h4>

          <div class="">
            @foreach (auth()->user()->unreadnotifications as $notification)
              <div class="alert alert-primary alert-dismissible fade show" role="alert">
                <strong>{{ $notification->data['user_name'] }}</strong> started following you.
                  <a href="{{Route('admin.markasread', $notification->id)}}" class="btn-close"></a>
              </div>
            @endforeach


            {{-- <div class="alert alert-secondary alert-dismissible fade show" role="alert">
              A simple secondary alert—check it out!
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
              </button>
            </div> --}}
            {{-- <div class="alert alert-success alert-dismissible fade show" role="alert">
              A simple success alert—check it out!
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
              </button>
            </div>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
              A simple danger alert—check it out!
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
              </button>
            </div>
            <div class="alert alert-warning alert-dismissible fade show" role="alert">
              A simple warning alert—check it out!
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
              </button>
            </div>
            <div class="alert alert-info alert-dismissible fade show mb-0" role="alert">
              A simple info alert—check it out!
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
              </button>
            </div> --}}
          </div>
        </div>
      </div>
    </div>
  </div>
@endsection
