// Copyright (C) 2013 - 2014 Angular Dart UI authors. Please see AUTHORS.md.
// https://github.com/akserg/angular.dart.ui
// All rights reserved.  Please see the LICENSE.md file.
part of angular.ui.demo;

@NgController(
    selector: '[dd-shopping-demo-controller]',
    publishAs: 'shoppingCtrl')
class DragDropShoppingBasketDemoController {
  
  List<Product> availableProducts = [];
  List<Product> shoppingBasket = [];
  
  DragDropShoppingBasketDemoController() {
    availableProducts.add(new Product("Blu Shoes", 3));
    availableProducts.add(new Product("Good Jacket", 1));
    availableProducts.add(new Product("Red Shirt", 5));
    availableProducts.add(new Product("Blu Jeans", 4));
  }
  
  void orderedProduct(Product orderedProduct) {
    print("New ordered product: " + orderedProduct.name);
    orderedProduct.quantity--;
  }
  
  void addToBasket(Product newProduct) {
    print("Add to basket: " + newProduct.name);
    for(Product product in shoppingBasket) {
      if (product.name == newProduct.name) {
        product.quantity++;
        return;
      }
    }
    shoppingBasket.add(new Product(newProduct.name, 1));
  }
  
}

class Product {
  
  int quantity;
  String name;
  
  Product(this.name, this.quantity);

}