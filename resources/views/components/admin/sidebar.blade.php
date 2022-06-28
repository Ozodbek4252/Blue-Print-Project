<div class="vertical-menu">

  <!-- LOGO -->
  <div class="navbar-brand-box" style="height: 70px; display: flex; justify-content: flex-start; align-items: center;">
    <a href="{{Route('dashboard')}}" class="logo logo-dark">
      {{-- <span class="logo-sm">
        <img src="assets/images/logo-sm.png" alt="" height="22" style="height: 22px;">
      </span> --}}
      <span class="logo-lg">
        <img src="assets/images/logo-dark.png" alt="" height="20" style="height: 20px;">
      </span>
    </a>

    <a href="index.html" class="logo logo-light">
      <span class="logo-sm">
        <img src="assets/images/logo-sm.png" alt="" height="22" style="height: 22px;">
      </span>
      <span class="logo-lg">
        <img src="assets/images/logo-light.png" alt="" height="20" style="height: 20px;">
      </span>
    </a>
  </div>

  <button type="button" class="btn btn-sm px-3 font-size-16 header-item waves-effect vertical-menu-btn">
    <i class="fa fa-fw fa-bars"></i>
  </button>

  <div data-simplebar class="sidebar-menu-scroll">

    <!--- Sidemenu -->
    <div id="sidebar-menu">
      <!-- Left Menu Start -->
      <ul class="metismenu list-unstyled" id="side-menu">
        <li class="menu-title">Menu</li>

        <li>
          <a href="{{Route('dashboard')}}">
            <i class="uil-home-alt"></i><span class="badge rounded-pill bg-primary float-end">01</span>
            <span>Dashboard</span>
          </a>
        </li>

        <li class="menu-title">Apps</li>

        <li>
          <a href="calendar.html" class="waves-effect">
            <i class="uil-users-alt"></i>
            <span>Users</span>
          </a>
        </li>

        <li>
          <a href="chat.html" class=" waves-effect">
            <i class="uil-comments-alt"></i>
            <span class="badge rounded-pill bg-warning float-end">New</span>
            <span>Chat</span>
          </a>
        </li>

        <li>
          <a href="javascript: void(0);" class="has-arrow waves-effect">
            <i class="uil-store"></i>
            <span>Ecommerce</span>
          </a>
          <ul class="sub-menu" aria-expanded="false">
            <li><a href="ecommerce-products.html">Products</a></li>
            <li><a href="ecommerce-product-detail.html">Product Detail</a></li>
            <li><a href="ecommerce-orders.html">Orders</a></li>
            <li><a href="ecommerce-customers.html">Customers</a></li>
            <li><a href="ecommerce-cart.html">Cart</a></li>
            <li><a href="ecommerce-checkout.html">Checkout</a></li>
            <li><a href="ecommerce-shops.html">Shops</a></li>
            <li><a href="ecommerce-add-product.html">Add Product</a></li>
          </ul>
        </li>

        <li>
          <a href="javascript: void(0);" class="has-arrow waves-effect">
            <i class="uil-envelope"></i>
            <span>Email</span>
          </a>
          <ul class="sub-menu" aria-expanded="false">
            <li><a href="email-inbox.html">Inbox</a></li>
            <li><a href="email-read.html">Read Email</a></li>
          </ul>
        </li>

        <li>
          <a href="javascript: void(0);" class="has-arrow waves-effect">
            <i class="uil-invoice"></i>
            <span>Invoices</span>
          </a>
          <ul class="sub-menu" aria-expanded="false">
            <li><a href="invoices-list.html">Invoice List</a></li>
            <li><a href="invoices-detail.html">Invoice Detail</a></li>
          </ul>
        </li>

        <li>
          <a href="javascript: void(0);" class="has-arrow waves-effect">
            <i class="uil-book-alt"></i>
            <span>Contacts</span>
          </a>
          <ul class="sub-menu" aria-expanded="false">
            <li><a href="contacts-grid.html">User Grid</a></li>
            <li><a href="contacts-list.html">User List</a></li>
            <li><a href="contacts-profile.html">Profile</a></li>
          </ul>
        </li>

      </ul>
    </div>
    <!-- Sidebar -->
  </div>
</div>
