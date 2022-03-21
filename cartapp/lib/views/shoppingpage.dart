// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/cart_controller.dart';
import '../controller/cartcontroller.dart';

class ShoppingPage extends StatelessWidget {
  //const ShoppingPage({Key? key}) : super(key: key);
  final shoppingController = Get.put(CartController());
  final cartController = Get.put(CartAddController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: Icon(Icons.add_shopping_cart_rounded),
          label: GetX<CartAddController>(builder: (controller) {
            return Text(
              controller.count.toString(),
              style: TextStyle(fontSize: 25),
            );
          })),

      body: SafeArea(
        //Container(
        // SafeArea(

        child: Column(children: [
          Expanded(
            child: GetX<CartController>(builder: (controller) {
              return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(12),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
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
                                      '$controller.products[index].productName',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Text(
                                      '$controller.products[index].productName',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Text(
                                      '$controller.products[index].productName',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            RaisedButton(
                              onPressed: () {
                                cartController
                                    .addtocart(controller.products[index]);
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
          GetX<CartAddController>(builder: (controller) {
            return Text(
              "Total amount\$ ${controller.totalPrice}}",
              style: TextStyle(fontSize: 32),
            );
          }),
          SizedBox(height: 100),
        ]),
      ),
      //),
    );
  }
}
