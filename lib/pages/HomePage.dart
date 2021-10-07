import 'package:challenge_flutter3/widgets/DividerWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

const MethodChannel methodChannel = MethodChannel('samples.flutter.io/battery');

Future<void> getBatteryLevel() async {
  String batteryLevel;
  try {
    final int? result = await methodChannel.invokeMethod('getBatteryLevel');
    batteryLevel = 'Battery level: $result%.';
    print(batteryLevel);
  } on PlatformException {
    batteryLevel = 'Failed to get battery level.';
    print(batteryLevel);
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      child: ListView(
        children: [
          _contenido(context),
          _card(context),
        ],
      ),
    );
  }
}

Widget _card(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 15, bottom: 15),
    padding: EdgeInsets.only(top: 20, bottom: 500, right: 20, left: 20),
    color: Colors.white,
    child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(5, 11), // Shadow position
            ),
          ],
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Column(
                children: [
                  Container(
                    color: Colors.black,
                    child: Image.asset("assets/comida.jpg"),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 25, top: 10, left: 10),
                    child: Column(
                      children: [
                        //primer row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Gramercy Tavern",
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(child: Container()),
                            Container(
                              width: MediaQuery.of(context).size.width * .20,
                              height: 20,
                              child: ElevatedButton(
                                  onPressed: () {
                                    print("holaa");
                                  },
                                  child: Text("Italian",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white)),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Theme.of(context).indicatorColor),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )))),
                            ),
                            Container(
                                padding: EdgeInsets.only(right: 10, left: 10),
                                child: Icon(Icons.clear_all))
                          ],
                        ),
                        //segundo row
                        Row(
                          children: [
                            Text(
                              "42 E 220 th St New York 23 USA",
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                right: 10,
                top: 15,
                child: Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 25,
                      ),
                      Text(
                        "4.2",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        )),
  );
}

Widget _contenido(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(bottom: 40),
    color: Colors.white,
    child: Column(
      children: [
        _profile(context),
        CustomDivider(),
        _media(context),
        CustomDivider(),
        _botones(context),
      ],
    ),
  );
}

Widget _profile(BuildContext context) {
  return Container(
    child: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Text(
          "My Profile",
          style: Theme.of(context).textTheme.headline1,
        ),
        SizedBox(
          height: 20,
        ),
        Image.asset('assets/avatar.png'),
        SizedBox(
          height: 15,
        ),
        Text(
          "John Williams",
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          "john.williams@gmail.com",
          style: Theme.of(context).textTheme.headline2,
        ),
      ],
    ),
  );
}

Widget _media(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        children: [
          Text(
            "250",
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            "Reviews",
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      ),
      Container(
        color: Colors.black45,
        height: 50,
        width: 0.5,
      ),
      Column(
        children: [
          Text(
            "100k",
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            "Followers",
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      ),
      Container(
        color: Colors.black45,
        height: 50,
        width: 0.5,
      ),
      Column(
        children: [
          Text(
            "30",
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            "Following",
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      )
    ],
  );
}

Widget _botones(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        width: MediaQuery.of(context).size.width * .45,
        height: 50,
        child: ElevatedButton(
            onPressed: () {
              print("holaa");
              getBatteryLevel();
            },
            child: Text("Edit Profile",
                style: TextStyle(fontSize: 18, color: Colors.white)),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).accentColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )))),
      ),
      Container(
        width: MediaQuery.of(context).size.width * .45,
        height: 50,
        child: ElevatedButton(
            onPressed: () {
              print("holaa");
            },
            child: Text("Settings",
                style: TextStyle(fontSize: 18, color: Colors.grey[400])),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Color(0xffabb2b9)))))),
      )
    ],
  );
}
