<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta>
<html ng-app="gemStore">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title></title>
	    <!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
		
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css"/>
		
		<link rel="stylesheet" href="css/style.css"/>
		
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	</head>
	
	<body ng-controller="StoreController as store">
		<div ng-repeat="product in store.products"
			ng-hide="product.soldOut">
			<h3>{{product.name}}
	        	<em class="pull-right">{{product.price | currency}}</em>
	      	</h3>
	      	
        	<product-gallery></product-gallery>
        	<product-tabs></product-tabs>
        	
	      	<button ng-show="product.canPurchase">Add to Cart</button>
		</div>
		
	    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>
	    <script type="text/javascript" src="js/myApp.js"></script>
	</body>
	
</html>