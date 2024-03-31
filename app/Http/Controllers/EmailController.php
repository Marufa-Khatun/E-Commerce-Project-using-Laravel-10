<?php

namespace App\Http\Controllers;

use App\Models\UserEmail;
use Illuminate\Http\Request;
use App\Http\Controllers\EmailController;

class EmailController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'email' => 'required|email|unique:user_emails,email'
        ]);

        UserEmail::create([
            'email' => $request->email
        ]);

        

        return redirect()->back()->with('success', 'Email submitted successfully!');
    }
}

