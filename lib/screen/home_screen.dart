import 'package:e_com_app/model/category_model.dart';
import 'package:e_com_app/model/product_model.dart';

import 'package:e_com_app/screen/details_screen.dart';
import 'package:e_com_app/screen/main_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> category = [];
  List<ProductModel> product = [];
  _HomeScreenState() {
    category.add(CategoryModel(
        name: 'Baby Diapers',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP8HqdAL3IyTQ6BegsepELnzejhWE_jjF91A&usqp=CAU'));
    category.add(CategoryModel(
        name: 'Dress',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbG5jcGlHqhL4LpmN7ArHgmVWlyHyXdVm0AA&usqp=CAU'));
    category.add(CategoryModel(
        name: 'Baby Bathtub',
        image:
            'https://res.cloudinary.com/babylist/image/upload/f_auto,q_auto:best,c_scale,w_768/v1511369724/22277815_121439425195419_97218234012401664_n_slvus0.jpg'));
    category.add(CategoryModel(
        name: 'Baby Bath Soap',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmvs4vy2pZfYUe_3WKNe8c_IOAjvoUuAWkgw&usqp=CAU'));
    category.add(CategoryModel(
        name: 'Baby Shampoo',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw8GBLEQMZ9NyiN6_oCq0RW7TvJdjkty6_Yg&usqp=CAU'));
    category.add(CategoryModel(
        name: 'Baby Toy',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAh0aro2DDgbqha8aTVUqwJLd82Xfn4vGQzQ&usqp=CAU'));

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

    product.add(ProductModel(
        name: 'BABY Care Soap',
        price: 150,
        icon: Icons.shopping_cart,
        id: 4,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvjzYjIxeVbckqR-Ob7CkCIbegvUp8jr4OAA&usqp=CAU'));

    product.add(ProductModel(
        name: 'Shoe',
        price: 600,
        icon: Icons.shopping_cart,
        id: 5,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrqpMrQGwuUFlYQRCS8j4zGZ2mgHYZgDlPtA&usqp=CAU'));

    product.add(ProductModel(
        name: 'Rainbow Blanket',
        price: 1050,
        icon: Icons.shopping_cart,
        id: 6,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSUaTBsBgfFBigMwxRMa7-ryS1fOOq3d9HvQ&usqp=CAU'));

    product.add(ProductModel(
        name: 'Aveeno baby shampoo',
        price: 500,
        icon: Icons.shopping_cart,
        id: 7,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw8GBLEQMZ9NyiN6_oCq0RW7TvJdjkty6_Yg&usqp=CAU'));

    product.add(ProductModel(
        name: 'China BathTub',
        price: 4000,
        icon: Icons.shopping_cart,
        id: 8,
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7EVcg4_MK-BfOLIleO7q3ulkEp05sUj66Cw&usqp=CAU'));
  }
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.9),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: GridView.builder(
                      // scrollDirection: Axis.horizontal,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                        childAspectRatio: 8 / 12,
                      ),
                      itemCount: category.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return GridTile(
                            child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 150,
                                      width: double.infinity,
                                      child: Image.network(
                                        '${category[index].image!}',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      '${category[index].name!}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ],
                                )));
                      }),
                ),
                SizedBox(
                  height: 15,
                ),
                GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                      childAspectRatio: 4 / 6,
                    ),
                    itemCount: product.length,
                    itemBuilder: (BuildContext ctx, index) {
                      final list = product[index];
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartDetailsScreen(
                                    pmodel: list,
                                  )));
                        },
                        child: GridTile(
                            child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  //   crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 180,
                                      width: double.infinity,
                                      child: Image.network(
                                        '${product[index].image!}',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '${product[index].name!}',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '${product[index].price!}',
                                            style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 30,
                                            ),
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  _counter++;
                                                  print(
                                                      'counter-- ${_counter}');
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MainScreen(
                                                                counter:
                                                                    _counter,
                                                              )));
                                                });
                                              },
                                              icon: Icon(
                                                product[index].icon,
                                                color: Colors.white,
                                                size: 40,
                                              ))
                                        ],
                                      ),
                                    )
                                  ],
                                ))),
                      );
                    }),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
