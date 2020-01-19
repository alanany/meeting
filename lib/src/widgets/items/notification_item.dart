import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final Widget image;
  final String message;
  final String createdAt;
  final int type;

  const NotificationItem(
      {Key key, this.image, this.message, this.createdAt, this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0, left: 15.0, right: 15.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
                color: Color(0x2625364F),
                blurRadius: 10.0,
                offset: Offset(0.0, 5.0))
          ]),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: <Widget>[
            image,
            const SizedBox(
              width: 15.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  if (type == 0)
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            style: Theme.of(context)
                                .textTheme
                                .title
                                .copyWith(height: 1.7),
                            text: 'تلقيت رسالة جديدة من '),
                        TextSpan(
                            text: 'عبدالرحمن محمد',
                            style: Theme.of(context).textTheme.title.copyWith(
                                height: 1.7,
                                color: Theme.of(context).accentColor)),
                      ]),
                    ),
                  if (type == 1)
                    Text(
                      'نشر متجر معرض سيارات الخليج اعلان جديد',
                      style: Theme.of(context).textTheme.title.copyWith(
                          color: Theme.of(context).accentColor, height: 1.7),
                    ),
                  if (type == 2)
                    Text(
                      'تنبيه من الإدارة بتوقف الخدمات المقدمة من التطبيق لمدة 6 ساعات يوم الخميس القادم لعمل صيانة وتحديثات',
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(height: 1.7),
                    ),
                  Text(
                    'منذ 5 أيام',
                    style: TextStyle(
                        color: Color(0x8025364F),
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
