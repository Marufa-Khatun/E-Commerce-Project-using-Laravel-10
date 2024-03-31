<div class="col col-lg-3">
    <div class="account_menu">
        <ul class="account_menu_list ul_li_block">
            @if(Auth::id())
            <li class="active"><a href="#!">Account Dashboard</a></li>
            <li><a href="#!">My Orders</a></li>
            <li><a href="{{ route('frontend.user.profile.show') }}">Recurring Profiles</a></li>
            <li><a href="{{ route('frontend.product-review.index') }}">My Product Reviews</a></li>
            <li><a href="#!">My Wishlist</a></li>
            {{-- <li><a href="#!">My Applications</a></li> --}}
            @endif
            <li>
              
                    <a href="{{ route('logout') }}"
                    onclick="event.preventDefault();
                                  document.getElementById('logout-form').submit();">
                     {{ __('Logout') }}
                 </a>
                 <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                     @csrf
                 </form>
                
            </li>
        </ul>
    </div>
</div>