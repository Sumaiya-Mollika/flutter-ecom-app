import 'package:e_com_app/model/product_model.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<ProductModel> product = [];
  _CartScreenState() {
    product.add(ProductModel(
        name: 'Pampers',
        price: 200,
        icon: Icons.shopping_cart,
        id: 1,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5ausEHE58OVt4q5_OICJes3J6bDf8cf96Sw&usqp=CAU'));

    product.add(ProductModel(
        name: 'Summer Colection',
        price: 1000,
        icon: Icons.shopping_cart,
        id: 2,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGGSL8BXdXC9S3BQraw3mz2rEEvkAyrmrX5Q&usqp=CAU'));

    product.add(ProductModel(
        name: 'Taddy',
        price: 300,
        icon: Icons.shopping_cart,
        id: 3,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWYet8ithuKqPVO2pC1WSjP5AMcphjjHrNVw&usqp=CAU'));
  }
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
          //  crossAxisAlignment: CrossAxisAlignment.end,
          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 15,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: product.length,
                itemBuilder: (context, index) {
                  final list = product[index];
                  return ListTile(
                    tileColor: Colors.black,
                    isThreeLine: true,
                    // minLeadingWidth: 100,

                    leading: Image.network(
                      "${product[index].image!}",
                      fit: BoxFit.cover,
                    ),
                    trailing: Text(
                      "${product[index].price! * _counter}",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    title: Text(
                      "${product[index].name}",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${product[index].price}",
                          style: TextStyle(fontSize: 25, color: Colors.white70),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (_counter > 0) _counter--;
                                });
                              },
                              child: const Icon(
                                Icons.remove_circle_outline,
                                color: Colors.grey,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                '$_counter',
                                style:
                                    TextStyle(fontSize: 30, color: Colors.grey),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _counter++;
                                });
                              },
                              child: const Icon(
                                Icons.add_circle_outline,
                                color: Colors.grey,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ]),
    );
  }
}
