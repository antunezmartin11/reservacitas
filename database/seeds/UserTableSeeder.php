<?php

use Illuminate\Database\Seeder;
use App\User;
class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'Martin Antunez',
            'email' => 'antunezmartin@outlook.com',
            'email_verified_at' => now(),
            'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
            'dni'=> '46632454',
            'address'=> 'jr.comercio',
            'phone'=> '940303627',
            'role'=>'admin',
        ]);
        factory(User::class,50)->create();
    }
}
