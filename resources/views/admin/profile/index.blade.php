@extends('layouts.admin')

@section('content')
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-flex align-items-center justify-content-between">
                <h4 class="mb-0">Profile</h4>
            </div>
        </div>
    </div>
    <!-- end page title -->

    <div class="row mb-4">
        <div class="col-xl-4">
            <div class="card h-100">
                <div class="card-body">
                    <div class="text-center">
                        <div class="dropdown float-end">
                            <a class="text-body dropdown-toggle font-size-18" href="contacts-profile.html#" role="button"
                                data-bs-toggle="dropdown" aria-haspopup="true">
                                <i class="uil uil-ellipsis-v"></i>
                            </a>

                            <div class="dropdown-menu dropdown-menu-end">
                                <a class="dropdown-item" href="contacts-profile.html#">Edit</a>
                                <a class="dropdown-item" href="contacts-profile.html#">Action</a>
                                <a class="dropdown-item" href="contacts-profile.html#">Remove</a>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div style="display: flex; justify-content: center;">
                            <img src="/assets/images/users/avatar-4.jpg" alt=""
                                class="avatar-lg rounded-circle img-thumbnail">
                        </div>
                        <h5 class="mt-3 mb-1">{{ $user->name }}</h5>
                        <p class="text-muted">@if($user->type == 1) Admin @else User @endif</p>

                        <div class="mt-4">
                            <button type="button" class="btn btn-light btn-sm"><i
                                    class="uil uil-envelope-alt me-2"></i>Message</button>
                        </div>
                    </div>

                    <hr class="my-4">

                    <div class="text-muted">
                        {{-- <h5 class="font-size-16">About</h5>
            <p>Hi I'm Marcus,has been the industry's standard dummy text To an English person, it will seem like
              simplified English, as a skeptical Cambridge.</p> --}}
                        <div class="table-responsive mt-4">
                            <div>
                                <p class="mb-1">Full Name :</p>
                                <h5 class="font-size-16">{{ $user->name }} {{ $user->last_name }}</h5>
                            </div>
                            @if ($user->phone)
                                <div class="mt-4">
                                    <p class="mb-1">Mobile :</p>
                                    <h5 class="font-size-16">{{ $user->phone }}</h5>
                                </div>
                            @endif
                            <div class="mt-4">
                                <p class="mb-1">E-mail :</p>
                                <h5 class="font-size-16">{{ $user->email }}</h5>
                            </div>
                            {{-- <div class="mt-4">
                <p class="mb-1">Location :</p>
                <h5 class="font-size-16">California, United States</h5>
              </div> --}}

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-8">
            <div class="card mb-0">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs nav-tabs-custom nav-justified" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" data-bs-toggle="tab" href="contacts-profile.html#about" role="tab">
                            <i class="uil uil-user-circle font-size-20"></i>
                            <span class="d-none d-sm-block">About</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" href="contacts-profile.html#tasks" role="tab">
                            <i class="uil uil-clipboard-notes font-size-20"></i>
                            <span class="d-none d-sm-block">Tasks</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" href="contacts-profile.html#messages" role="tab">
                            <i class="uil uil-envelope-alt font-size-20"></i>
                            <span class="d-none d-sm-block">Messages</span>
                        </a>
                    </li>
                </ul>
                <!-- Tab content -->
                <div class="tab-content p-4">
                    <div class="tab-pane active" id="about" role="tabpanel">
                        <div>
                            <div>
                                <h5 class="font-size-16 mb-4">Experience</h5>

                                <ul class="activity-feed mb-0 ps-2">
                                    <li class="feed-item">
                                        <div class="feed-item-list">
                                            <p class="text-muted mb-1">2019 - 2020</p>
                                            <h5 class="font-size-16">UI/UX Designer</h5>
                                            <p>Abc Company</p>
                                            <p class="text-muted">To achieve this, it would be necessary to have uniform
                                                grammar, pronunciation
                                                and more common words. If several languages coalesce, the grammar of the
                                                resulting language is
                                                more simple and regular than that of the individual</p>
                                        </div>
                                    </li>
                                    <li class="feed-item">
                                        <div class="feed-item-list">
                                            <p class="text-muted mb-1">2017 - 2019</p>
                                            <h5 class="font-size-16">Graphic Designer</h5>
                                            <p>xyz Company</p>
                                            <p class="text-muted">It will be as simple as occidental in fact, it will be
                                                Occidental. To an
                                                English person, it will seem like simplified English, as a skeptical
                                                Cambridge friend of mine told
                                                me what Occidental </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                            <div>
                                <h5 class="font-size-16 mb-4">Projects</h5>

                                <div class="table-responsive">
                                    <table class="table table-nowrap table-hover mb-0">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Projects</th>
                                                <th scope="col">Date</th>
                                                <th scope="col">Status</th>
                                                <th scope="col" style="width: 120px;">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">01</th>
                                                <td><a href="contacts-profile.html#" class="text-dark">Brand Logo Design</a>
                                                </td>
                                                <td>
                                                    18 Jun, 2020
                                                </td>
                                                <td>
                                                    <span class="badge bg-soft-primary font-size-12">Open</span>
                                                </td>
                                                <td>
                                                    <div class="dropdown">
                                                        <a class="text-muted dropdown-toggle font-size-18 px-2"
                                                            href="contacts-profile.html#" role="button"
                                                            data-bs-toggle="dropdown" aria-haspopup="true">
                                                            <i class="uil uil-ellipsis-v"></i>
                                                        </a>

                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item"
                                                                href="contacts-profile.html#">Action</a>
                                                            <a class="dropdown-item" href="contacts-profile.html#">Another
                                                                action</a>
                                                            <a class="dropdown-item"
                                                                href="contacts-profile.html#">Something else here</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">02</th>
                                                <td><a href="contacts-profile.html#" class="text-dark">Minible Admin</a>
                                                </td>
                                                <td>
                                                    06 Jun, 2020
                                                </td>
                                                <td>
                                                    <span class="badge bg-soft-primary font-size-12">Open</span>
                                                </td>
                                                <td>
                                                    <div class="dropdown">
                                                        <a class="text-muted dropdown-toggle font-size-18 px-2"
                                                            href="contacts-profile.html#" role="button"
                                                            data-bs-toggle="dropdown" aria-haspopup="true">
                                                            <i class="uil uil-ellipsis-v"></i>
                                                        </a>

                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item"
                                                                href="contacts-profile.html#">Action</a>
                                                            <a class="dropdown-item" href="contacts-profile.html#">Another
                                                                action</a>
                                                            <a class="dropdown-item"
                                                                href="contacts-profile.html#">Something else here</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">03</th>
                                                <td><a href="contacts-profile.html#" class="text-dark">Chat app Design</a>
                                                </td>
                                                <td>
                                                    28 May, 2020
                                                </td>
                                                <td>
                                                    <span class="badge bg-soft-success font-size-12">Complete</span>
                                                </td>
                                                <td>
                                                    <div class="dropdown">
                                                        <a class="text-muted dropdown-toggle font-size-18 px-2"
                                                            href="contacts-profile.html#" role="button"
                                                            data-bs-toggle="dropdown" aria-haspopup="true">
                                                            <i class="uil uil-ellipsis-v"></i>
                                                        </a>

                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item"
                                                                href="contacts-profile.html#">Action</a>
                                                            <a class="dropdown-item" href="contacts-profile.html#">Another
                                                                action</a>
                                                            <a class="dropdown-item"
                                                                href="contacts-profile.html#">Something else here</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">04</th>
                                                <td><a href="contacts-profile.html#" class="text-dark">Minible Landing</a>
                                                </td>
                                                <td>
                                                    13 May, 2020
                                                </td>
                                                <td>
                                                    <span class="badge bg-soft-success font-size-12">Complete</span>
                                                </td>
                                                <td>
                                                    <div class="dropdown">
                                                        <a class="text-muted dropdown-toggle font-size-18 px-2"
                                                            href="contacts-profile.html#" role="button"
                                                            data-bs-toggle="dropdown" aria-haspopup="true">
                                                            <i class="uil uil-ellipsis-v"></i>
                                                        </a>

                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item"
                                                                href="contacts-profile.html#">Action</a>
                                                            <a class="dropdown-item" href="contacts-profile.html#">Another
                                                                action</a>
                                                            <a class="dropdown-item"
                                                                href="contacts-profile.html#">Something else here</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">05</th>
                                                <td><a href="contacts-profile.html#" class="text-dark">Authentication
                                                        Pages</a></td>
                                                <td>
                                                    06 May, 2020
                                                </td>
                                                <td>
                                                    <span class="badge bg-soft-success font-size-12">Complete</span>
                                                </td>
                                                <td>
                                                    <div class="dropdown">
                                                        <a class="text-muted dropdown-toggle font-size-18 px-2"
                                                            href="contacts-profile.html#" role="button"
                                                            data-bs-toggle="dropdown" aria-haspopup="true">
                                                            <i class="uil uil-ellipsis-v"></i>
                                                        </a>

                                                        <div class="dropdown-menu dropdown-menu-end">
                                                            <a class="dropdown-item"
                                                                href="contacts-profile.html#">Action</a>
                                                            <a class="dropdown-item" href="contacts-profile.html#">Another
                                                                action</a>
                                                            <a class="dropdown-item"
                                                                href="contacts-profile.html#">Something else here</a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="tasks" role="tabpanel">
                        <div>
                            <h5 class="font-size-16 mb-3">Active</h5>

                            <div class="table-responsive">
                                <table class="table table-nowrap table-centered">
                                    <tbody>
                                        <tr>
                                            <td style="width: 60px;">
                                                <div class="form-check font-size-16 text-center">
                                                    <input type="checkbox" class="form-check-input"
                                                        id="tasks-activeCheck2">
                                                    <label class="form-check-label" for="tasks-activeCheck2"></label>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="contacts-profile.html#" class="fw-bold text-dark">Ecommerce
                                                    Product Detail</a>
                                            </td>

                                            <td>27 May, 2020</td>
                                            <td style="width: 160px;"><span
                                                    class="badge bg-soft-primary font-size-12">Active</span></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check font-size-16 text-center">
                                                    <input type="checkbox" class="form-check-input"
                                                        id="tasks-activeCheck1">
                                                    <label class="form-check-label" for="tasks-activeCheck1"></label>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="contacts-profile.html#" class="fw-bold text-dark">Ecommerce
                                                    Product</a>
                                            </td>

                                            <td>26 May, 2020</td>
                                            <td><span class="badge bg-soft-primary font-size-12">Active</span></td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <h5 class="font-size-16 my-3">Upcoming</h5>

                            <div class="table-responsive">
                                <table class="table table-nowrap table-centered">
                                    <tbody>
                                        <tr>
                                            <td style="width: 60px;">
                                                <div class="form-check font-size-16 text-center">
                                                    <input type="checkbox" class="form-check-input"
                                                        id="tasks-upcomingCheck3">
                                                    <label class="form-check-label" for="tasks-upcomingCheck3"></label>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="contacts-profile.html#" class="fw-bold text-dark">Chat app
                                                    Page</a>
                                            </td>

                                            <td>-</td>
                                            <td style="width: 160px;"><span
                                                    class="badge bg-soft-secondary font-size-12">Waiting</span></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check font-size-16 text-center">
                                                    <input type="checkbox" class="form-check-input"
                                                        id="tasks-upcomingCheck2">
                                                    <label class="form-check-label" for="tasks-upcomingCheck2"></label>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="contacts-profile.html#" class="fw-bold text-dark">Email Pages</a>
                                            </td>

                                            <td>04 June, 2020</td>
                                            <td><span class="badge bg-soft-primary font-size-12">Approved</span></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check font-size-16 text-center">
                                                    <input type="checkbox" class="form-check-input"
                                                        id="tasks-upcomingCheck1">
                                                    <label class="form-check-label" for="tasks-upcomingCheck1"></label>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="contacts-profile.html#" class="fw-bold text-dark">Contacts
                                                    Profile Page</a>
                                            </td>

                                            <td>-</td>
                                            <td><span class="badge bg-soft-secondary font-size-12">Waiting</span></td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <h5 class="font-size-16 my-3">Complete</h5>

                            <div class="table-responsive">
                                <table class="table table-nowrap table-centered">
                                    <tbody>
                                        <tr>
                                            <td style="width: 60px;">
                                                <div class="form-check font-size-16 text-center">
                                                    <input type="checkbox" class="form-check-input"
                                                        id="tasks-completeCheck3">
                                                    <label class="form-check-label" for="tasks-completeCheck3"></label>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="contacts-profile.html#" class="fw-bold text-dark">UI Elements</a>
                                            </td>

                                            <td>27 May, 2020</td>
                                            <td style="width: 160px;"><span
                                                    class="badge bg-soft-success font-size-12">Complete</span></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check font-size-16 text-center">
                                                    <input type="checkbox" class="form-check-input"
                                                        id="tasks-completeCheck2">
                                                    <label class="form-check-label" for="tasks-completeCheck2"></label>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="contacts-profile.html#" class="fw-bold text-dark">Authentication
                                                    Pages</a>
                                            </td>

                                            <td>27 May, 2020</td>
                                            <td><span class="badge bg-soft-success font-size-12">Complete</span></td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check font-size-16 text-center">
                                                    <input type="checkbox" class="form-check-input"
                                                        id="tasks-completeCheck1">
                                                    <label class="form-check-label" for="tasks-completeCheck1"></label>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="contacts-profile.html#" class="fw-bold text-dark">Admin
                                                    Layout</a>
                                            </td>

                                            <td>26 May, 2020</td>
                                            <td><span class="badge bg-soft-success font-size-12">Complete</span></td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="messages" role="tabpanel">
                        <div>
                            <div data-simplebar style="max-height: 430px;">
                                <div class="d-flex align-items-start border-bottom py-4">
                                    <div class="flex-shrink-0 me-2">
                                        <img class="rounded-circle avatar-xs" src="/assets/images/users/avatar-3.jpg"
                                            alt="avatar-3 images">
                                    </div>

                                    <div class="flex-grow-1">
                                        <h5 class="font-size-15 mb-1">Marion Walker <small class="text-muted float-end">1
                                                hr ago</small>
                                        </h5>
                                        <p class="text-muted">If several languages coalesce, the grammar of the resulting .
                                        </p>

                                        <a href="javascript: void(0);" class="text-muted font-13 d-inline-block"><i
                                                class="mdi mdi-reply"></i> Reply</a>

                                        <div class="d-flex align-items-start mt-4">
                                            <div class="flex-shrink-0 me-2">
                                                <img class="rounded-circle avatar-xs"
                                                    src="/assets/images/users/avatar-4.jpg" alt="avatar-4 images">
                                            </div>

                                            <div class="flex-grow-1">
                                                <h5 class="font-size-15 mb-1">Shanon Marvin <small
                                                        class="text-muted float-end">1 hr ago</small>
                                                </h5>
                                                <p class="text-muted">It will be as simple as in fact, it will be
                                                    Occidental. To it will seem
                                                    like simplified .</p>


                                                <a href="javascript: void(0);" class="text-muted font-13 d-inline-block">
                                                    <i class="mdi mdi-reply"></i> Reply
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-flex align-items-start border-bottom py-4">
                                    <div class="flex-shrink-0 me-2">
                                        <img class="rounded-circle avatar-xs" src="/assets/images/users/avatar-5.jpg"
                                            alt="avatar-5 images">
                                    </div>

                                    <div class="flex-grow-1">
                                        <h5 class="font-size-15 mb-1">Janice Morgan <small class="text-muted float-end">2
                                                hrs ago</small>
                                        </h5>
                                        <p class="text-muted">To achieve this, it would be necessary to have uniform
                                            pronunciation.</p>

                                        <a href="javascript: void(0);" class="text-muted font-13 d-inline-block"><i
                                                class="mdi mdi-reply"></i> Reply</a>

                                    </div>
                                </div>

                                <div class="d-flex align-items-start border-bottom py-4">
                                    <div class="flex-shrink-0 me-2">
                                        <img class="rounded-circle avatar-xs" src="/assets/images/users/avatar-7.jpg"
                                            alt="avatar-7 images">
                                    </div>

                                    <div class="flex-grow-1">
                                        <h5 class="font-size-15 mb-1">Patrick Petty <small class="text-muted float-end">3
                                                hrs ago</small>
                                        </h5>
                                        <p class="text-muted">Sed ut perspiciatis unde omnis iste natus error sit </p>

                                        <a href="javascript: void(0);" class="text-muted font-13 d-inline-block"><i
                                                class="mdi mdi-reply"></i> Reply</a>

                                    </div>
                                </div>
                            </div>

                            <div class="border rounded mt-4">
                                <form action="contacts-profile.html#">
                                    <div class="px-2 py-1 bg-light">

                                        <div class="btn-group" role="group">
                                            <button type="button"
                                                class="btn btn-sm btn-link text-dark text-decoration-none"><i
                                                    class="uil uil-link"></i></button>
                                            <button type="button"
                                                class="btn btn-sm btn-link text-dark text-decoration-none"><i
                                                    class="uil uil-smile"></i></button>
                                            <button type="button"
                                                class="btn btn-sm btn-link text-dark text-decoration-none"><i
                                                    class="uil uil-at"></i></button>
                                        </div>

                                    </div>
                                    <textarea rows="3" class="form-control border-0 resize-none" placeholder="Your Message..."></textarea>

                                </form>
                            </div> <!-- end .border-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
