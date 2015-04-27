<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="gemStore">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title></title>
	    <!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
		
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
		
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	</head>
	
	
	<body ng-controller="StoreController as store">
		<div ng-repeat="product in store.products"
			ng-hide="product.soldOut">
			<h3>{{product.name}}
	        	<em class="pull-right">{{product.price | currency}}</em>
	      	</h3>
	      	<div class="gallery" ng-show="product.images.length"  ng-controller="GalleryController as gallery">
          		<img ng-src="{{product.images[gallery.current]}}"/>
        	</div>
        	<ul class="img-thumbnails clearfix">
          		<li class="small-image pull-left thumbnail" ng-repeat="image in product.images">
            		<img ng-src="{{image}}" />
          		</li>
        	</ul>
        	
        	<section class="tab" ng-controller="TabController as tab">
        		<ul class="nav nav-pills">
          			<li ng-class="{active:tab.isSet(1)}">
          				<a href ng-click="tab.setTab(1)">Descrição</a>
          			</li>
          			<li ng-class="{active:tab.isSet(2)}">
          				<a href ng-click="tab.setTab(2)">Specs</a>
          			</li>
          			<li ng-class="{active:tab.isSet(3)}">
          				<a href ng-click="tab.setTab(3)">Reviews</a>
          			</li>
        		</ul>
        		<div ng-show="tab.isSet(1)">
          			<h4>Descrição</h4>
          			<blockquote>{{product.description}}</blockquote>
        		</div>
        		<div ng-show="tab.isSet(2)">
          			<h4>Specs</h4>
          			<blockquote>Shine: {{product.shine}}</blockquote>
        		</div>
        		<div ng-show="tab.isSet(3)">
          			<h4>Reviews</h4>
          			<li ng-repeat="review in product.reviews">
                		<blockquote>
                  			<strong>{{review.stars}} Stars</strong>
                  			{{review.body}}
                  			<cite class="clearfix">—{{review.author}}</cite>
                		</blockquote>
              		</li>
        		</div>
      		</section>
        	
	      	<button ng-show="product.canPurchase">Add to Cart</button>
		</div>
		
		
		
	    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>
	    <script type="text/javascript" src="js/myApp.js"></script>
	</body>
	
</html>