import 'package:e_com_app/model/product_model.dart';
import 'package:flutter/material.dart';

class CartDetailsScreen extends StatefulWidget {
  final ProductModel? pmodel;
  CartDetailsScreen({this.pmodel});

  @override
  _CartDetailsScreen createState() => _CartDetailsScreen();
}

class _CartDetailsScreen extends State<CartDetailsScreen> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      appBar: AppBar(
          title: Text(
            'Shopping Cart',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
          )),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //  crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 15,
            ),
            ListTile(
              tileColor: Colors.black,
              isThreeLine: true,
              // minLeadingWidth: 100,

              leading: Image.network(
                "${widget.pmodel!.image}",
                fit: BoxFit.cover,
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  size: 40,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {});
                },
              ),
              title: Text(
                "${widget.pmodel!.name}",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${widget.pmodel!.price}",
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
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          '$_counter',
                          style: TextStyle(fontSize: 30, color: Colors.grey),
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
            ),
            Column(
              children: [
                Divider(
                  color: Colors.grey,
                  thickness: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    Text(
                      "${widget.pmodel!.price! * _counter}",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ]),
    );
  }
}
