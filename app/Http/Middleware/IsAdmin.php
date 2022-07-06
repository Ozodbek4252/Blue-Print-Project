<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class IsAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if (!auth()->check() || !($request->user()->type == 'admin')) {
            return redirect()->route('home');
            return redirect()->route('login');
            return abort(403);
        }
        // if(!auth()->check() || !auth()->user()->type == 'admin') {
        //     return redirect('/');
        // }

        return $next($request);
    }
}
