LARAVEL 2020-D-G7 , Data Rumah Sakit\


1.Nur Fidrotul Nasroh 
2.Dimas Rayandra
3.Meifi A 
4.Seno 

Langkah Install Project :

  1. git clone "https://github.com/mirza-alim-m/laravel2020-D-G7"
  2. composer install
  3. configuring file .env
  4. php artisan migrate(opsional : php artisan migrate:fresh)
  5. php artisan db:seed --class=DatabaseSeeder
  7.kalau error di socialite masukan berikut ke file env
    GITHUB_CLIENT_ID= 181d27c013617579460c
    GITHUB_CLIENT_SERVER= a966921a0f1acce32e9804bb1b2755c1e0d2aae5
    GITHUB_REDIRECT_URL= http://localhost:8000/sign-in/github/redirect

    TWITTER_CLIENT_ID= N5pRfDIG8AkFcuO0Z51urexCL
    TWITTER_CLIENT_SERVER= eFqbcV8zQ0tw85wjo2BKR9S5Zs75s3Q5gcohAP5vn5baApb6Wv
    TWITTER_REDIRECT_URL= http://localhost:8000/sign-in/twitter/redirect 
    kemudian "php artisan migrate:refresh" 
  6. php artisan serve

