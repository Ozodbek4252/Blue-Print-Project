@extends('layouts.admin')

@section('content')
  <div class="row">
    <div class="col-lg-12">
      <div class="card">
        <div class="card-body">
          <h4 class="card-title">Table head</h4>
          <p class="card-title-desc">Use one of two modifier classes to make <code>&lt;thead&gt;</code>s appear light or
            dark gray.</p>

          <div class="table-responsive">
            <table class="table mb-3">

              <thead class="table-light">
                <tr>
                  <th>#</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Phone</th>
                  <th>Email</th>
                </tr>
              </thead>
              <tbody>
                @foreach ($users as $user)
                  @if ($user->type == 'user')
                    <tr>
                      <th scope="row">{{ ++$num }}</th>
                      <td>{{ $user->name }}</td>
                      <td>{{ $user->last_name }}</td>
                      <td><a href="tel:{{ $user->phone }}">{{ $user->phone }}</a></td>
                      <td>{{ $user->email }}</td>
                    </tr>
                  @endif
                @endforeach
              </tbody>
            </table>
            {{ $users->links() }}
          </div>
        </div>

      </div>
    </div>
  </div>
@endsection
