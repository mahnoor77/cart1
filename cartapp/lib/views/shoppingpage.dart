// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/cart_controller.dart';
import '../controller/shoppingcontroller.dart';

class ShoppingPage extends StatelessWidget {
  //const ShoppingPage({Key? key}) : super(key: key);
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartAddController());
  //double price1;
  // double price1 = 0.0;
  //CartAddController.add();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.add_shopping_cart_rounded),
        label: Text("${cartController.bb.value}"),
      ),

      body: SafeArea(
        //Container(
        // SafeArea(

        child: Column(children: [
          Expanded(
            //child: ListView.builder(
            //itemBuilder: (context, index) {
            //return Card();
            //},
            //)
            child: GetX<ShoppingController>(builder: (controller) {
              return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(12),
                      child: Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${controller.products[index].productName}',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Text(
                                      '${controller.products[index].productDescription}',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Text(
                                      '${controller.products[index].price}',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            //   Text("Total Amount"),
                            SizedBox(
                              height: 100,
                            ),
                            RaisedButton(
                              onPressed: () {
                                cartController
                                    .addtocart(controller.products[index]);
                                //   price1 = cartController.add();
                                cartController.getTotalPrice();
                                //   print(price1);
                              },
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text("Add to cart"),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            }),
          ),
          //  GetX<CartAddController>(builder: (controller) {

          // return
          SizedBox(
            height: 100,
            child: GetX<CartAddController>(builder: (controller) {
              return Text(
                'Total amaont\$ ${controller.bb.value}',
                style: TextStyle(fontSize: 32),
              );
            }),
          ),
          // Text('${price1}'),
          // }
          //),
          SizedBox(height: 20),
        ]),
      ),
      //),
    );
  }
}
