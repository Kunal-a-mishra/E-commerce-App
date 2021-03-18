import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopping_app/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture
  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));},
            child: Text('Shopping App')),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,),
            onPressed: (){},),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("\$${widget.product_detail_old_price}",
                       style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough ),)
                      ),

                      Expanded(
                          child: new Text("\$${widget.product_detail_new_price}",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),)
                      ),
                  ],
                  ),
                ),
              ),),
          ),

//  -----------the first buttons----------

          Row(
            children: <Widget>[
//        ------the size button------
              Expanded(
                child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title:new Text("Size"),
                          content: new Text("Choose the size"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: new Text("close"),
                            )
                          ],
                        );
                      }
                      );
                    },
                color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("Size")
                      ),
                      Expanded(
                          child: new Icon(Icons.arrow_drop_down)
                      ),
                    ],
                  )
                )
              ),
              //        ------the size button------
              Expanded(
                  child: MaterialButton(
                      onPressed: (){
                        showDialog(context: context,
                            builder: (context){
                              return new AlertDialog(
                                title:new Text("Color"),
                                content: new Text("Choose the color"),
                                actions: <Widget>[
                                  new MaterialButton(onPressed: (){
                                    Navigator.of(context).pop(context);
                                  },
                                    child: new Text("close"),
                                  )
                                ],
                              );
                            }
                        );
                      },
                      color: Colors.white,
                      textColor: Colors.grey,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: new Text("Color")
                          ),
                          Expanded(
                              child: new Icon(Icons.arrow_drop_down)
                          ),
                        ],
                      )
                  )
              ),
              //        ------the size button------
              Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      showDialog(context: context,
                          builder: (context){
                            return new AlertDialog(
                              title:new Text("Quantity"),
                              content: new Text("Choose the Qty"),
                              actions: <Widget>[
                                new MaterialButton(onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                  child: new Text("close"),
                                )
                              ],
                            );
                          }
                      );
                    },
                      color: Colors.white,
                      textColor: Colors.grey,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: new Text("Qty")
                          ),
                          Expanded(
                              child: new Icon(Icons.arrow_drop_down)
                          ),
                        ],
                      ),
                  )
              ),
            ],
          ),

          //  -----------the second buttons----------

          Row(
            children: <Widget>[
//        ------the size button------
              Expanded(
                  child: MaterialButton(
                      onPressed: (){},
                      color: Colors.red,
                      textColor: Colors.white,
                      child: new Text("Buy now")
                  )
              ),

              new IconButton(icon: Icon(Icons.add_shopping_cart),onPressed: (){}),

              new IconButton(icon: Icon(Icons.favorite_border),color: Colors.red, onPressed: (){}),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("Shop from a wide range of Blazer from BREGEO. Perfect for office meetings and parties, you could pair it with a stylish shirt to complete the look"),
          ),

          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product name", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.product_detail_name),
              ),
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product brand", style: TextStyle(color: Colors.grey),),
              ),
              // Remember to create product brand
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Brand"),
              ),
            ],
          ),
//        Add the product condition
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Condition", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("New"),
              ),
            ],
          ),

          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar products"),
          ),

          // Similar products section
          Container(
            height:360.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
var product_list = [
{
"name": "Blazer",
"picture": "images1/products/blazer1.jpeg",
"old_price": 150,
"price": 100,
},
{
"name": "Dress",
"picture": "images1/products/dress1.jpeg",
"old_price": 100,
"price": 85,
},
{
"name": "Dress",
"picture": "images1/products/blazer2.jpeg",
"old_price": 100,
"price": 85,
},
];

@override
Widget build(BuildContext context) {
return GridView.builder(
itemCount: product_list.length,
gridDelegate:
new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
itemBuilder: (BuildContext context, int index) {
return Similar_single_prod(
prod_name: product_list[index]['name'],
prod_picture: product_list[index]['picture'],
prod_old_price: product_list[index]['old_price'],
prod_price: product_list[index]['price'],
);
});
}
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod(
      {this.prod_name,
        this.prod_picture,
        this.prod_old_price,
        this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("hero 1"),
          child: Material(
            child: InkWell(
              onTap:()=> Navigator.of(context).push(
                  new MaterialPageRoute(
                    //here we are passing the values of the product detail page
                      builder: (context) => new ProductDetails(
                        product_detail_name: prod_name,
                        product_detail_new_price: prod_price,
                        product_detail_old_price: prod_old_price,
                        product_detail_picture: prod_picture,
                      ))),

              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child:new Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                        ),
                        new Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}


