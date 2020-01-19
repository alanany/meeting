import 'package:flutter/material.dart';

class MoreItem extends StatelessWidget {
  final String image;
  final String text;
  final onTab;

  const MoreItem({Key key, this.image, this.text, this.onTab})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color(0x2625364F),
              offset: Offset(0.0, 5.0),
              blurRadius: 10.0),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: onTab,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 17.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(image),
              const SizedBox(
                width: 15.0,
              ),
              Expanded(
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.title,
                ),
              ),
              const SizedBox(
                width: 15.0,
              ),
              Icon(
                Icons.chevron_right,
                size: 30.0,
                color: Theme.of(context).accentColor,
              ),
              const SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
