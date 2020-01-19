import 'package:flutter/material.dart';

class MessageItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Color(0x2625364F),
            blurRadius: 10.0,
            offset: Offset(0.0, 5.0),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
              flex: 1,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  width: 50.0,
                  margin: const EdgeInsets.only(left: 15.0),
                  height: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(color: Theme.of(context).accentColor),
                      image: DecorationImage(
                          image: AssetImage('assets/images/user.jpg'),
                          repeat: ImageRepeat.noRepeat,
                          fit: BoxFit.cover,
                          alignment: Alignment.center)),
                ),
              )),
          Flexible(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    'شركة الصفح للتجارة',
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    'الساحة عبارة عن منصة تطبيق الكترونى للجوالات لعرض إعلانات المستخدمين للسلع المستعملة',
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontWeight: FontWeight.normal, height: 1.5),
                  ),
                ),
                Text(
                  'منذ 3 دقائق',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor.withOpacity(0.5),
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
