<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

You may also try the [Laravel Bootcamp](https://bootcamp.laravel.com), where you will be guided through building a modern Laravel application from scratch.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains thousands of video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the [Laravel Partners program](https://partners.laravel.com).

### Premium Partners

- **[Vehikl](https://vehikl.com/)**
- **[Tighten Co.](https://tighten.co)**
- **[WebReinvent](https://webreinvent.com/)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Curotec](https://www.curotec.com/services/technologies/laravel/)**
- **[Cyber-Duck](https://cyber-duck.co.uk)**
- **[DevSquad](https://devsquad.com/hire-laravel-developers)**
- **[Jump24](https://jump24.co.uk)**
- **[Redberry](https://redberry.international/laravel/)**
- **[Active Logic](https://activelogic.com)**
- **[byte5](https://byte5.de)**
- **[OP.GG](https://op.gg)**

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

## I take actions for this project.

## 1. I created a new project with Laravel.
composer create-project --prefer-dist laravel/laravel ecommerce //on terminal
## 2. I installed the Laravel UI package.
bootstrap, tailwindcss
## 3. I created a new controller.
php artisan make:controller BrandController
php artisan make:controller CategoryController
php artisan make:controller HomeController
php artisan make:controller InvoiceController
php artisan make:controller PolicyController
php artisan make:controller ProductController
php artisan make:controller ProfileController
php artisan make:controller UserController
## 4. I created a new model.
php artisan make:model Brand
php artisan make:model Category
php artisan make:model CustomerProfile
php artisan make:model Invoice
php artisan make:model InvoiceProduct
php artisan make:model Policy
php artisan make:model Product
php artisan make:model ProductCart
php artisan make:model ProductDetails
php artisan make:model ProductReview
php artisan make:model ProductSlider
php artisan make:model ProductWish
php artisan make:model SslcommerzAccount
php artisan make:model User
## 5. I created a new migration.
php artisan make:migration create_users_table
php artisan make:migration create_customer_profiles_table
php artisan make:migration create_caregories_table
php artisan make:migration create_brands_table
php artisan make:migration create_products_table
php artisan make:migration create_product_reviews_table
php artisan make:migration create_product_details_table
php artisan make:migration create_product_sliders_table
php artisan make:migration create_product_wishes_table
php artisan make:migration create_product_carts_table
php artisan make:migration create_sslcommerz_accounts_table
php artisan make:migration create_invoices_table
php artisan make:migration create_invoice_products_table
php artisan make:migration create_policies_table

## App>Helpers
JWTToken
php artisan make:Helper JWTToken
ResponseHelper
php artisan make:Helper ResponseHelper
SSLCommerz
php artisan make:Helper SSLCommerz
## App>Mail
OTPMail
php artisan make:Mail OTPMail
## Middleware
TokenAuthenticate
php artisan make:Middleware TokenAuthenticate
## added files project\public\assets bootstrap files
## added files project\resources\views
php artisan make:component

php artisan make:component ByBrandList.blade.php 
php artisan make:component ByCategoryList.blade.php
php artisan make:component CartList.blade.php 
php artisan make:component ExclusiveProducts.blade.php 
php artisan make:component Footer.blade.php
php artisan make:component HeroSlider.blade.php
php artisan make:component Login.blade.php
php artisan make:component MenuBar.blade.php
php artisan make:component orders.blade.php
php artisan make:component PaymentMethodList.blade.php
php artisan make:component PolicyList.blade.php
php artisan make:component ProductDetails.blade.php
php artisan make:component ProductSpecification.blade.php
php artisan make:component profile.blade.php
php artisan make:component TopBrands.blade.php
php artisan make:component TopCategories.blade.php
php artisan make:component Verify.blade.php
php artisan make:component WishList.blade.php
## php artisan make:email
php artisan make:email OTPMail.blade.php

## php artisan make:layout 
php artisan make:layout app.blade.php
## php artisan make:pages
php artisan make:pages cart-list-page.blade.php
php artisan make:pages details-page.blade.php
php artisan make:pages home-page.blade.php
php artisan make:pages login-page.blade.php
php artisan make:pages policy-page.blade.php
php artisan make:pages product-by-brand.blade.php
php artisan make:pages product-by-category.blade.php
php artisan make:pages profile-page.blade.php
php artisan make:pages verify-page.blade.php
php artisan make:pages wish-list-page.blade.php
## api Route
Route::post("/PaymentIPN",[InvoiceController::class,'PaymentIPN']);
## web Routes

use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\InvoiceController;
use App\Http\Controllers\PolicyController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\UserController;
use App\Http\Middleware\TokenAuthenticate;

// // Home Page
Route::get('/', [HomeController::class, 'HomePage']);
Route::get('/by-category', [CategoryController::class, 'ByCategoryPage']);
Route::get('/by-brand', [BrandController::class, 'ByBrandPage']);
Route::get('/policy', [PolicyController::class, 'PolicyPage']);
Route::get('/details', [ProductController::class, 'Details']);
Route::get('/login', [UserController::class, 'LoginPage']);
Route::get('/verify', [UserController::class, 'VerifyPage']);
Route::get('/wish', [ProductController::class, 'WishList']);
Route::get('/cart', [ProductController::class, 'CartListPage']);
Route::get('/profile', [ProfileController::class, 'ProfilePage']);

// Brand List
Route::get('/BrandList', [BrandController::class, 'BrandList']);
// Category List
Route::get('/CategoryList', [CategoryController::class, 'CategoryList']);
// Product List
Route::get('/ListProductByCategory/{id}', [ProductController::class, 'ListProductByCategory']);
Route::get('/ListProductByBrand/{id}', [ProductController::class, 'ListProductByBrand']);
Route::get('/ListProductByRemark/{remark}', [ProductController::class, 'ListProductByRemark']);
// Slider
Route::get('/ListProductSlider', [ProductController::class, 'ListProductSlider']);
// Product Details
Route::get('/ProductDetailsById/{id}', [ProductController::class, 'ProductDetailsById']);
Route::get('/ListReviewByProduct/{product_id}', [ProductController::class, 'ListReviewByProduct']);
//policy
Route::get("/PolicyByType/{type}",[PolicyController::class,'PolicyByType']);

// User Auth
Route::get('/UserLogin/{UserEmail}', [UserController::class, 'UserLogin']);
Route::get('/VerifyLogin/{UserEmail}/{OTP}', [UserController::class, 'VerifyLogin']);
Route::get('/logout',[UserController::class,'UserLogout']);

// User Profile
Route::post('/CreateProfile', [ProfileController::class, 'CreateProfile'])->middleware([TokenAuthenticate::class]);
Route::get('/ReadProfile', [ProfileController::class, 'ReadProfile'])->middleware([TokenAuthenticate::class]);

// Product Review
Route::post('/CreateProductReview', [ProductController::class, 'CreateProductReview'])->middleware([TokenAuthenticate::class]);

// Product Wish
Route::get('/ProductWishList', [ProductController::class, 'ProductWishList'])->middleware([TokenAuthenticate::class]);
Route::get('/CreateWishList/{product_id}', [ProductController::class, 'CreateWishList'])->middleware([TokenAuthenticate::class]);
Route::get('/RemoveWishList/{product_id}', [ProductController::class, 'RemoveWishList'])->middleware([TokenAuthenticate::class]);

// Product Wish
Route::post('/CreateCartList', [ProductController::class, 'CreateCartList'])->middleware([TokenAuthenticate::class]);
Route::get('/CartList', [ProductController::class, 'CartList'])->middleware([TokenAuthenticate::class]);
Route::get('/DeleteCartList/{product_id}', [ProductController::class, 'DeleteCartList'])->middleware([TokenAuthenticate::class]);

// Invoice and payment
Route::get("/InvoiceCreate",[InvoiceController::class,'InvoiceCreate'])->middleware([TokenAuthenticate::class]);
Route::get("/InvoiceList",[InvoiceController::class,'InvoiceList'])->middleware([TokenAuthenticate::class]);
Route::get("/InvoiceProductList/{invoice_id}",[InvoiceController::class,'InvoiceProductList'])->middleware([TokenAuthenticate::class]);

//payment
Route::post("/PaymentSuccess",[InvoiceController::class,'PaymentSuccess']);
Route::post("/PaymentCancel",[InvoiceController::class,'PaymentCancel']);
Route::post("/PaymentFail",[InvoiceController::class,'PaymentFail']);

## .env SMTP
MAIL_MAILER=smtp
MAIL_HOST=smtp.gmail.com
MAIL_PORT=587
MAIL_USERNAME=kaderurmi@gmail.com
MAIL_PASSWORD=wtbxunbwylimfhwm
MAIL_ENCRYPTION=tls
MAIL_FROM_ADDRESS="kaderurmi@gmail.com"
MAIL_FROM_NAME="ECommerce Shop application"
## .env DB
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=ecommerce_shop
DB_USERNAME=root
DB_PASSWORD=

## .env SSLCOMMERZ
SSLCZ_STORE_ID=ecommerce_shop
SSLCZ_STORE_PASS=ecommerce_shop
## .env JWT
JWT_KEY=Asdfbasdfhjru


4. I created a new view.
5. I created a new route.
6. I created a new model.
7. I created a new migration.
8. I created a new seeder.

