import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart.dart';

class UI extends StatefulWidget {
  const UI({Key? key}) : super(key: key);

  @override
  _UIState createState() => _UIState();
}

class _UIState extends State<UI> {
  var imageList = [
    'images/1.jpg',
    'images/2.jpg',
    'images/3.jpg',
    'images/4.jpg',
    'images/5.jpg',
    'images/6.jpg',
    'images/7.jpg',
    'images/8.jpg',
    'images/9.jpg',
    'images/10.jpg',
    'images/11.jpg',
    'images/12.jpg',
    'images/13.jpg',
    'images/14.jpg',
    'images/15.jpg',
    'images/16.jpg',
    'images/17.jpg',
    'images/18.jpg',
    'images/19.jpg',
    'images/20.jpg',
  ];

  var imageName = [
    'Product 1',
    'Product 2',
    'Product 3',
    'Product 4',
    'Product 5',
    'Product 6',
    'Product 7',
    'Product 8',
    'Product 9',
    'Product 10',
    'Product 11',
    'Product 12',
    'Product 13',
    'Product 14',
    'Product 15',
    'Product 16',
    'Product 17',
    'Product 18',
    'Product 19',
    'Product 20',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: Text(
            'New Products',
            style: TextStyle(
                fontSize: 22,
                color: Colors.amberAccent,
                //fontWeight: FontWeight.bold,
                letterSpacing: 3),
          ),
          actions: [
            IconButton(
              onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Cart()));},
              icon: Icon(
                Icons.shopping_cart,
                size: 28,
                color: Colors.amberAccent,
              ),
            ),
            SizedBox(
              width: 14,
            )
          ],
        ),
        drawer: Drawer(
          elevation: 16,
          child: Column(
            children: [
              Container(
                height: 200,
                width: 310,
                color: Colors.teal[200],
                child: Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: Icon(Icons.account_box_outlined, size: 70,)

                ),
              ),
              Divider(
                height: 3,
                thickness: 2,
                color: Colors.teal,
              ),
              ListTile(
                title: Text("Products"),
                hoverColor: Colors.teal,
                tileColor: Colors.teal[100],
                leading: Icon(Icons.sixteen_mp, color: Colors.black),
              ),
              Divider(
                height: 3,
                thickness: 1,
                color: Colors.teal,
              ),
              ListTile(
                title: Text("Account"),
                hoverColor: Colors.teal,
                tileColor: Colors.teal[100],
                leading: Icon(
                  Icons.account_box_outlined,
                  color: Colors.black87,
                ),
              ),
              Divider(
                height: 3,
                thickness: 1,
                color: Colors.teal,
              ),
              ListTile(
                title: Text("Carts"),
                hoverColor: Colors.teal,
                tileColor: Colors.teal[100],
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              ),
              Divider(
                height: 3,
                thickness: 1,
                color: Colors.teal,
              ),
              ListTile(
                title: Text("Settings"),
                hoverColor: Colors.teal,
                tileColor: Colors.teal[100],
                leading: Icon(
                  Icons.settings,
                  color: Colors.black87,
                ),
              ),
              Divider(
                height: 3,
                thickness: 1,
                color: Colors.teal,
              ),
              ListTile(
                title: Text("Log Out"),
                hoverColor: Colors.teal,
                tileColor: Colors.teal[100],
                leading: Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
              ),
              Divider(
                height: 3,
                thickness: 1,
                color: Colors.teal,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.teal,
          fixedColor: Colors.amberAccent,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.paste_rounded), title: Text('Products', style: TextStyle(letterSpacing: 3))),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text('Category', style: TextStyle(letterSpacing: 3))),
            BottomNavigationBarItem(
                icon: Icon(Icons.reorder), title: Text('Orders', style: TextStyle(letterSpacing: 3),)),
          ],
        ),
        body: Column(children: [
          SizedBox(
            height: 5,
          ),
          Image.asset('images/coverpic.jpg'),
          Divider(
            thickness: 2,
            color: Colors.black,
          ),
          Expanded(
              child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(imageList.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.2),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset: Offset(0, 1),
                              )
                            ]),
                        child: Card(
                          color: Colors.amberAccent,
                          child: Column(
                            children: [
                              Image.asset(
                                imageList[index],
                                height: 120,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      imageName[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 3),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Cart()));
                                      },
                                      icon: Icon(
                                        Icons.add_shopping_cart,
                                        color: Colors.teal,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  })))
        ]));
  }
}
