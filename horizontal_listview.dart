import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
        Category(
          image_location: 'images/cats/coat.png',
          image_caption: 'shirt',
        ),
          Category(
            image_location: 'images/cats/dress.png',
            image_caption: 'Dress',
          ),
          Category(
            image_location: 'images/cats/fashion.png',
          image_caption: 'Fashion'
          ),
          Category(
            image_location: 'images/cats/makeup.png',
            image_caption: 'Make up',
          ),
          Category(
            image_location: 'images/cats/shoe.png',
            image_caption: 'Shoes',
          ),
          Category(
            image_location: 'images/cats/sun-glasses.png',
            image_caption: 'Sun Glasses',
          ),
          Category(
            image_location: 'images/cats/tshirt.png',
            image_caption: 'Tshirt',
          ),
          Category(
            image_location: 'images/cats/wristwatch.png',
            image_caption: 'Wrist Watch',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption

  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell (onTap: (){},
    child: Container(
    width: 100.0,
      child: ListTile(
      title: Image.asset(image_location,
      width: 100.0,
      height: 80.0,
    ),
      subtitle: Container(
        alignment: Alignment.topCenter,
        child: Text(image_caption),
      )
      ),
    ),
    ),);
  }
}

