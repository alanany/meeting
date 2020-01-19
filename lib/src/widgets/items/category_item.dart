import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String image;
  final String title;

  const CategoryItem({Key key, this.image, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color(0x2625364F),
              offset: Offset(0.0, 5.0),
              blurRadius: 10.0),
        ],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(image),
          const SizedBox(
            height: 3.0,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.title,
          ),
        ],
      ),
    );
  }
}
