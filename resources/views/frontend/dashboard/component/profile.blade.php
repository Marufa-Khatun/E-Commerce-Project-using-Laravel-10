@extends('layouts.frontenddashboard')
@section('title', 'Your profile')
@section('content')


<div class="woocommerce-billing-fields">
    <h3>My Profile</h3>
    <p class="form-row form-row form-row-first validate-required">
       <label >Name</label>
       <input type="text" class="input-text " name="name"  value="">
    </p>
    <p class="form-row form-row form-row-first validate-required">
        <label >Email</label>
        <input type="email" class="input-text " name="email"  value="">
     </p>
     <p class="form-row form-row form-row-first validate-required">
        <label >Phone</label>
        <input type="text" class="input-text " name="phone"  value="">
     </p>
     <p class="form-row form-row form-row-first validate-required">
        <label >Company Name</label>
        <input type="text" class="input-text " name="company"  value="">
     </p>
     <p class="form-row form-row form-row-first validate-required">
        <label >Address</label>
        <input type="text" class="input-text " name="address"  value="">
     </p>
     <p class="form-row form-row form-row-first validate-required">
        <label >City</label>
        <input type="text" class="input-text " name="city"  value="">
     </p>
     <p class="form-row form-row form-row-first validate-required">
        <label >Zipcode</label>
        <input type="text" class="input-text " name="zipcod"  value="">
     </p>
    
 </div>

 @endsection