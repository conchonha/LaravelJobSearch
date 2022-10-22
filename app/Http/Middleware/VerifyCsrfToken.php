<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;

class VerifyCsrfToken extends Middleware
{
    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array
     */
    protected $except = [
       'http://localhost/foreignerhandbook_laravel/public/*',
       'http://localhost/JobSearch/public/rest-api*',
       'http://192.168.60.165/JobSearch/public/rest-api/*',
    ];
}


