<!DOCTYPE html>

<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700' rel='stylesheet' type='text/css'>
  <title>Lucky Draw System</title>
  <meta name="keywords" content="Travel planning, travel bundles, travel escapes, affordable travel">
  <meta name="description" content="Your clarify. One trip away. We create soul restoring journeys that inspire you to be you.">

  <link rel="stylesheet" href="{{asset('/docs/assets/styles/styles-de9429933b.css')}}"/>

  <script src="{{asset('/docs/assets/scripts/Vendor-b56193e16a.js')}}"></script>

</head>
<body>
  <header class="site-header">
    <div class="wrapper">
      <div class="site-header__logo">
        <div class="icon--clear-view-escapes">Lucky Draw</div>
      </div>
      
      <div class="site-header__menu-icon">
        <div class="site-header__menu-icon__middle"></div>
      </div>

      <div class="site-header__menu-content">
        <div class="site-header__btn-container">
          <a href="#" class="btn open-modal">Get in Touch</a>
        </div>
        <nav class="primary-nav primary-nav--pull-right">
          <ul>
            @if (Route::has('login'))
              @auth
            <li><a href="{{ url('/logout-manual') }}">Logout</a></li>
              @else
            <li><a href="{{ route('login') }}">Login</a></li>
                @if (Route::has('register'))

            <li><a href="{{ route('register') }}">Register</a></li>
                @endif
              @endauth
            @endif
          </ul>
        </nav>
      </div>
    </div>
  </header>

  <div class="large-hero">
    
    <picture>
      <source srcset="/docs/assets/images/hero--large.jpg 1920w, /docs/assets/images/hero--large-hi-dpi.jpg 3840w" media="(min-width: 1380px)">
      <source srcset="/docs/assets/images/hero--medium.jpg 1380w, /docs/assets/images/hero--medium-hi-dpi.jpg 2760w" media="(min-width: 990px)">
      <source srcset="/docs/assets/images/hero--small.jpg 990w, /docs/assets/images/hero--small-hi-dpi.jpg 1980w" media="(min-width: 640px)">
      <img srcset="/docs/assets/images/hero--smaller.jpg 640w, /docs/assets/images/hero--smaller-hi-dpi.jpg 1280w" alt="Coastal view of ocean and mountains" class="large-hero__image">
    </picture>

    <div class="large-hero__text-content">
      <div class="wrapper">
        <h1 class="large-hero__title">Lucky Draw</h1>
        <h2 class="large-hero__subtitle">One Prize for One</h2>
        <p class="large-hero__description">Each user can only win one prize.</p>
        <p><a href="#" class="btn btn--orange btn--large open-modal">Get Started Today</a></p>
      </div>
    </div>
  </div>

  

      </div>
    </div>
  </div>

  <footer class="site-footer">
    <div class="wrapper">
      <p><span class="site-footer__text">Copyright &copy; 2016 Lucky Draw System. All rights reserved.</span> <a href="#" class="btn btn--orange open-modal">Get in Touch</a></p>
    </div>
  </footer>

  <div class="modal">
    <div class="modal__inner">
      <h2 class="section-title section-title--blue section-title--less-margin"><span class="icon icon--mail section-title__icon"></span> Get in <strong>Touch</strong></h2>
    <div class="wrapper wrapper--narrow">
      <p class="modal__description">We will have an online order system in place soon. Until then, connect with us on any of the platforms below!</p>
    </div>

    <div class="social-icons">
      <a href="#" class="social-icons__icon"><span class="icon icon--facebook"></span></a>
      <a href="#" class="social-icons__icon"><span class="icon icon--twitter"></span></a>
      <a href="#" class="social-icons__icon"><span class="icon icon--instagram"></span></a>
      <a href="#" class="social-icons__icon"><span class="icon icon--youtube"></span></a>
    </div>
    </div>
    <div class="modal__close">X</div>
  </div>
  
  <script src="{{asset('/docs/assets/scripts/App-d12f46dab1.js')}}"></script>
</body>
</html>