import 'dart:math';
import 'package:flutter/material.dart';

class AdItem extends StatelessWidget {
  final bool isStore;

  const AdItem({Key key, this.isStore = false}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final tag = 'ad-${Random.secure().nextInt(10000)}';
    return Column(
//      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15.0),
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
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: InkWell(
              onTap: () {
              },
              child: AspectRatio(
                aspectRatio: 1.39830508,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Stack(
                        overflow: Overflow.clip,
                        fit: StackFit.expand,
                        alignment: Alignment.center,
                        children: <Widget>[
                          Hero(
                            tag: tag,
                            child: Image.asset(
                              'assets/images/car.jpeg',
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                              repeat: ImageRepeat.noRepeat,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              width: 36.0,
                              height: 36.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFffc117),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                              ),
                              child:
                                  Image.asset('assets/images/star_premium.png'),
                            ),
                          ),
                          Positioned(
                            top: 15.0,
                            left: 15.0,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              decoration: BoxDecoration(
                                color: Color(0x3F25364F),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                'منذ 3 دقائق',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      fit: StackFit.loose,
                      overflow: Overflow.visible,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'كيا اوبتيما فل كامل 2013 ما شاء الله',
                                style: Theme.of(context).textTheme.title,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        height: 24.0,
                                        width: 24.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                              color:
                                                  Theme.of(context).accentColor,
                                              width: 1.0),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/user.jpg'),
                                            fit: BoxFit.cover,
                                            alignment: Alignment.center,
                                            repeat: ImageRepeat.noRepeat,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          if (isStore)
                                            Text(
                                              'المتجر',
                                              style: TextStyle(
                                                  color: Theme.of(context)
                                                      .accentColor,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          if (isStore)
                                            const SizedBox(
                                              height: 2.0,
                                            ),
                                          Text(
                                            'عبدالمعز أجهوري',
                                            style: TextStyle(
                                              color: Color(0x8025364F),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            '12',
                                            style: TextStyle(
                                              color: Color(0x8025364F),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5.0,
                                          ),
                                          Icon(
                                            Icons.thumb_up,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20.0,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            '1,321',
                                            style: TextStyle(
                                              color: Color(0x8025364F),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5.0,
                                          ),
                                          Icon(
                                            Icons.remove_red_eye,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 15.0,
                          top: -15.0,
                          child: Container(
                              height: 30.0,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 18.0),
                              decoration: BoxDecoration(
                                color: Theme.of(context).accentColor,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x2625364F),
                                    offset: Offset(0.0, 5.0),
                                    blurRadius: 10.0,
                                  ),
                                ],
                              ),
                              child: Text(
                                '21,500 SR',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                    color: Colors.white),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
