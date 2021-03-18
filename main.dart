import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//imports of my own
import 'package:shopping_app/components/horizontal_listview.dart';
import 'package:shopping_app/components/products.dart';
import 'package:shopping_app/pages/cart.dart';

    void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
    }
    class HomePage extends StatefulWidget {
      @override
      _HomePageState createState() => _HomePageState();
    }
    
    class _HomePageState extends State<HomePage> {
      @override
      Widget build(BuildContext context) {
      Widget image_carousel = new Container(
        height: 200.0,
        child: new Carousel(
          boxFit: BoxFit.cover,
          images:[
            AssetImage('images/1.jpg'),
            AssetImage('images/2.jpg'),
            AssetImage('images/3.jpg'),
            AssetImage('images/4.jpg'),
            AssetImage('images/5.jpg'),
            AssetImage('images/6.jpg'),
          ],
          autoplay: false,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 4.0,
          dotColor: Colors.black,
          indicatorBgPadding: 4.0,
          dotBgColor: Colors.transparent,
        ),
      );
        return Scaffold(
          appBar: new AppBar(
            elevation: 0.0,
            backgroundColor: Colors.black,
            title: Text('Shopping App'),
            actions: <Widget>[
              new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){},),
              new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
              },)
            ],
          ),
          drawer: new Drawer(
            child: new ListView(
              children: <Widget>[
//            Header
                new UserAccountsDrawerHeader(accountName: Text('Kunal Mishra'),
                    accountEmail: Text('Kunalmishra158@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.black),
                  ),
                ),
                  decoration: new BoxDecoration(
                    color: Colors.black
                  ),
                ),

//              Body
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('Home Page'),
                      leading: Icon(Icons.home, color: Colors.black)
                    ),
                  ),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                      title: Text('My Account'),
                      leading: Icon(Icons.person, color: Colors.black)
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                      title: Text('My Orders'),
                      leading: Icon(Icons.shopping_bag, color: Colors.black)
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
                  },
                  child: ListTile(
                      title: Text('Shopping cart'),
                      leading: Icon(Icons.shopping_cart, color: Colors.black)
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                      title: Text('Favourites'),
                      leading: Icon(Icons.favorite, color: Colors.black)
                  ),
                ),
                Divider(),

                InkWell(
                  onTap: (){},
                  child: ListTile(
                      title: Text('Settings'),
                      leading: Icon(Icons.settings, color: Colors.black)
                  ),
                ),

                InkWell(
                  onTap: (){},
                  child: ListTile(
                      title: Text('About'),
                      leading: Icon(Icons.help, color: Colors.black,)
                  ),
                ),
              ],
            ),
          ),

            body: new ListView(
              children: <Widget>[
                //image carousel begins
                image_carousel,
                //padding widget
                new Padding(padding: const EdgeInsets.all(8.0),
                child: new Text('Categories'),),

                //horizontal list view begins here
                  HorizontalList(),

                //padding widget
                new Padding(padding: const EdgeInsets.all(25.0),
                  child: new Text('Recent Products'),),

                //grid view
                Container(
                  height: 320.0,
                  child: Products(),
                )
            ],
        ),
        );
      }
    }
    


