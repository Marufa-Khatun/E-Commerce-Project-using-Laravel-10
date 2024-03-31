@extends('layouts.frontenddashboard')
@section('title', 'Product Review')
@section('content')

<div class="account_content_area">
    <h3>My Review Product</h3>
    <div class="customer_review_form">
       
        <form action="{{ route('frontend.product-review.store') }}" method="POST">
            @csrf
            <input type="hidden" value="{{ request()->order_detail_id }}" name="order_detail_id">
            <input type="hidden" value="{{ request()->product_id }}" name="product_id">
            <div class="your_ratings">
                <h5>Your Ratings:</h5>
                
                <fieldset class="rating">
                    <input type="radio" id="star5" name="rating" value="5" />
                    <label class = "full" for="star5" title="Awesome - 5 stars"></label>
                    <input type="radio" id="star4half" name="rating" value="4.5" />
                    <label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
                    <input type="radio" id="star4" name="rating" value="4" />
                    <label class = "full" for="star4" title="Pretty good - 4 stars"></label>
                    <input type="radio" id="star3half" name="rating" value="3.5" />
                    <label class="half" for="star3half" title="Meh - 3.5 stars"></label>
                    <input type="radio" id="star3" name="rating" value="3" />
                    <label class = "full" for="star3" title="Meh - 3 stars"></label>
                    <input type="radio" id="star2half" name="rating" value="2.5" />
                    <label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
                    <input type="radio" id="star2" name="rating" value="2" />
                    <label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
                    <input type="radio" id="star1half" name="rating" value="1.5" />
                    <label class="half" for="star1half" title="Meh - 1.5 stars"></label>
                    <input type="radio" id="star1" name="rating" value="1" />
                    <label class = "full" for="star1" title="Sucks big time - 1 star"></label>
                    <input type="radio" id="starhalf" name="rating" value="0.5" />
                    <label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
                </fieldset>
            </div>
            <div class="form_item">
                <textarea name="comment" placeholder="Your Review*"></textarea>
            </div>
            <button type="submit" class="btn btn_primary">Submit Now</button>
        </form>
    </div>
</div>
@endsection
@section('style')
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css">
  <style>
    fieldset, label { margin: 0; padding: 0; }
body{ margin: 20px; }
h1 { font-size: 1.5em; margin: 10px; }

/****** Style Star Rating Widget *****/

.rating { 
  border: none;
  float: left;
}

.rating > input { display: none; } 
.rating > label:before { 
  margin: 5px;
  font-size: 1.25em;
  font-family: FontAwesome;
  display: inline-block;
  content: "\f005";
}

.rating > .half:before { 
  content: "\f089";
  position: absolute;
}

.rating > label { 
  color: #ddd; 
 float: right; 
}

/***** CSS Magic to Highlight Stars on Hover *****/

.rating > input:checked ~ label, /* show gold star when clicked */
.rating:not(:checked) > label:hover, /* hover current star */
.rating:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */

.rating > input:checked + label:hover, /* hover current star when changing rating */
.rating > input:checked ~ label:hover,
.rating > label:hover ~ input:checked ~ label, /* lighten current selection */
.rating > input:checked ~ label:hover ~ label { color: #FFED85;  } 
 </style>  
@endsection