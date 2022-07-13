@include('components.admin.links')

<div class="my-5 pt-sm-5">
  <div class="container">

      <div class="row">
          <div class="col-md-12">
              <div class="text-center">
                  <div>
                      <div class="row justify-content-center">
                          <div class="col-sm-4">
                              <div class="error-img">
                                  <img src="/assets/images/404-error.png" alt="" class="img-fluid mx-auto d-block">
                              </div>
                          </div>
                      </div>
                  </div>
                  <h4 class="text-uppercase mt-4">Sorry, page not found</h4>
                  <p class="text-muted">It will be as simple as Occidental in fact, it will be Occidental</p>
                  <div class="mt-5">
                    @if(auth()->user()->type == 'admin')
                      <a class="btn btn-primary waves-effect waves-light" href="{{Route('admin.dashboard')}}">Back to Dashboard</a>
                    @else
                      <a class="btn btn-primary waves-effect waves-light" href="{{Route('home')}}">Back to Website</a>
                    @endif
                  </div>
              </div>
              
          </div>
      </div>
  </div>
</div>