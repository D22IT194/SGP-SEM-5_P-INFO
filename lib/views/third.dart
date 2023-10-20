import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gocare/size_configs.dart';
import 'package:gocare/views/firstscreen.dart';
import 'package:maps_launcher/maps_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      appBar: AppBar(
        title: Text("Nearby healthcare centers"),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Hero(
              tag: "hospital",
              child: FittedBox(
                child: GestureDetector(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => hospital()),
                  //   );
                  // },
                  child: Card(
                    // color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 5,
                    child: Row(
                      children: <Widget>[
                        hospital(),
                        IconButton(
                          icon: Image.asset('assets/images/hospital.png'),
                          iconSize: 77,
                          onPressed: () => MapsLauncher.launchQuery(
                              'Near By Hospitals'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Hero(
              tag: "Medicals",
              child: FittedBox(
                child: GestureDetector(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => firstscreen()),
                  //   );
                  // },
                  child: Card(
                    // color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 5,
                    child: Row(
                      children: <Widget>[
                        medical(),
                        IconButton(
                          icon: Image.asset('assets/images/medical.png'),
                          iconSize: 77,
                          onPressed: () => MapsLauncher.launchQuery(
                              'Near By Medical Stores'),
                        ),
                        // Container(
                        //   width: 90,
                        //   height: 100,
                        //   child: ClipRRect(
                        //     borderRadius: BorderRadius.circular(15.0),
                        //     child: Image(
                        //       image: AssetImage('assets/images/medical.png'),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Hero(
              tag: "Laboratories",
              child: FittedBox(
                child: GestureDetector(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => firstscreen()),
                  //   );
                  // },
                  child: Card(
                    // color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 5,
                    child: Row(
                      children: <Widget>[
                        labo(),
                        IconButton(
                          icon: Image.asset('assets/images/labo.png'),
                          iconSize: 77,
                          onPressed: () => MapsLauncher.launchQuery(
                              'Near By Laboratories'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Hero(
              tag: "Clinics",
              child: FittedBox(
                child: GestureDetector(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => firstscreen()),
                  //   );
                  // },
                  child: Card(
                    // color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 5,
                    child: Row(
                      children: <Widget>[
                        clinic(),
                        IconButton(
                          icon: Image.asset('assets/images/clinic.png'),
                          iconSize: 77,
                          onPressed: () => MapsLauncher.launchQuery(
                              'Near By Clinics'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Hero(
              tag: "Blood Bank",
              child: FittedBox(
                child: GestureDetector(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => firstscreen()),
                  //   );
                  // },
                  child: Card(
                    // color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 5,
                    child: Row(
                      children: <Widget>[
                        bloodbank(),
                        IconButton(
                          icon: Image.asset('assets/images/blod.png'),
                          iconSize: 77,
                          onPressed: () => MapsLauncher.launchQuery(
                              'Near By Blood Banks'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget hospital() {
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;
    return Container(
      //width: 150,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "Hospitals",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, color: Colors.redAccent, fontFamily: 'Poppins'),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            textAlign: TextAlign.center,
            " Bringing nearby hospitals \n closer to you.",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 7.5,
                color: Colors.grey),
          ),
          // IconButton(
          //   icon: Image.asset('assets/images/fr_flag.png'),
          //   iconSize: 50,
          //   onPressed: () => MapsLauncher.launchQuery(
          //       '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA'),
          // ),
          SizedBox(
            height: 5,
          ),
            ],
          ),
    );
  }

  Widget medical() {
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;
    return Container(
      //width: 150,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "Medicals",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, color: Colors.redAccent, fontFamily: 'Poppins'),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            textAlign: TextAlign.center,
            " Swift Solutions for Your Health \n Nearby Medical Facilities.",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 7.5,
                color: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }

  Widget labo() {
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;
    return Container(
      //width: 150,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "Laboratories",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, color: Colors.redAccent, fontFamily: 'Poppins'),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            textAlign: TextAlign.center,
            " Discover Nearby Laboratories \n for Quick Diagnostics.",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 7.5,
                color: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }

  Widget clinic() {
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;
    return Container(
      //width: 150,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "Clinics",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, color: Colors.redAccent, fontFamily: 'Poppins'),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            textAlign: TextAlign.center,
            " Find Nearby Clinic Services, \n Wherever You Go.",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 7.5,
                color: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }


  Widget bloodbank() {
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;
    return Container(
      //width: 150,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "Blood Banks",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, color: Colors.redAccent, fontFamily: 'Poppins'),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            textAlign: TextAlign.center,
            "Your Health, Their Lifeline \n Nearby Blood Banks.",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 7.5,
                color: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
