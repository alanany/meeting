import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final bool isMine;

  const ChatMessage({Key key, this.isMine = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.8,
      alignment: isMine ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 15.0),
        decoration: BoxDecoration(
            color: isMine ? Color(0x3800AEEF) : Colors.white,
            boxShadow: [
              if (!isMine)
                BoxShadow(
                  color: Color(0x2625364F),
                  offset: Offset(0.0, 5.0),
                  blurRadius: 10.0,
                ),
            ],
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(isMine ? 0.0 : 10.0),
              topLeft: Radius.circular(isMine ? 10.0 : 0.0),
              bottomLeft: Radius.circular(isMine ? 10.0 : 0.0),
              bottomRight: Radius.circular(isMine ? 0.0 : 10.0),
            )),
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              isMine ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              'الساحة عبارة عن منصة تطبيق الكترونى للجوالات لعرض إعلانات المستخدمين للسلع المستعملة او الجديدة يتم تصميم التطبيق وفق أحدث معايير التصميم والتي تعتمد البساطة والذوق الفني الرفيع، وبشكل يواكب مواقع الشركات والمجموعات العربية والعالمية المشابهة',
              style: Theme.of(context).textTheme.title.copyWith(height: 1.71),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              textDirection: isMine ? TextDirection.rtl : TextDirection.ltr,
              children: <Widget>[
                Container(
                  margin: isMine
                      ? const EdgeInsets.only(left: 6.0)
                      : const EdgeInsets.only(right: 6.0),
                  height: 15.0,
                  width: 15.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).accentColor,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        image: AssetImage('assets/images/user.jpg'),
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                        repeat: ImageRepeat.noRepeat),
                  ),
                ),
                Text(
                  'نوفمبر 2018',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor.withOpacity(0.5),
                    fontWeight: FontWeight.normal,
                    fontSize: 12.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
