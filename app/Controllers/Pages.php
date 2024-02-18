<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Home'
        ];

        return view('pages/home', $data);
    }

    public function about()
    {
        $data = [
            'title' => 'About Me'
        ];

        return view('pages/about', $data);
    }

    public function contact()
    {
        $data = [
            'title' => 'Contact Us',
            'alamat' => [
                [
                    'tipe' => 'Rumah',
                    'alamat' => 'Jl. Abc ada berapa',
                    'kota' => 'Pekalongan'
                ],
                [
                    'tipe' => 'Kantor',
                    'alamat' => 'Jl Balonku ada lima',
                    'kota' => 'Batang'
                ]
            ]
        ];

        return view('pages/contact', $data);
    }
}
