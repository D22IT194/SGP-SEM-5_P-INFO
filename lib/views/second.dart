import 'package:flutter/material.dart';
import 'package:gocare/size_configs.dart';
import 'package:url_launcher/url_launcher.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
        appBar: AppBar(
          title: Text("Emergency Call  (Tap & call)"),
          backgroundColor: Colors.red,
          automaticallyImplyLeading: false,
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(3),
          crossAxisCount: 2,
          children: [
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: (){},
                child: InkWell(
                  onTap: (){
                    // FlutterPhoneDirectCaller.callNumber('108');
                    launch('tel:108');
                  },
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('assets/images/ambulance.png',
                          width: 180,
                          height: 130,),
                        // Icon(Icons.home,size: 70,color: Colors.blueAccent,),
                        Text("Ambulance",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.blue,
                child: InkWell(
                  onTap: (){
                    // FlutterPhoneDirectCaller.callNumber('100');
                    launch('tel:100');
                  },
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('assets/images/police-car.png',
                          width: 100,
                          height: 130,),
                        // Icon(Icons.home,size: 70,color: Colors.blueAccent,),
                        Text("Police",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.blue,
                child: InkWell(
                  onTap: (){
                    // FlutterPhoneDirectCaller.callNumber('101');
                    launch('tel:101');
                  },
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('assets/images/firefighter.png',
                          width: 110,
                          height: 130,),
                        // Icon(Icons.home,size: 70,color: Colors.blueAccent,),
                        Text("Fire Saftey",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: (){},
                child: InkWell(
                  onTap: (){
                    // FlutterPhoneDirectCaller.callNumber('1073');
                    launch('tel:1073');
                  },
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('assets/images/accident.png',
                          width: 180,
                          height: 130,),
                        // Icon(Icons.home,size: 70,color: Colors.blueAccent,),
                        Text("Road Accident",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.blue,
                child: InkWell(
                  onTap: (){
                    // FlutterPhoneDirectCaller.callNumber('1066');
                    launch('tel:1066');
                  },
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('assets/images/poison.png',
                          width: 105,
                          height: 130,),
                        // Icon(Icons.home,size: 70,color: Colors.blueAccent,),
                        Text("Anti Poison",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.blue,
                child: InkWell(
                  onTap: (){
                    // FlutterPhoneDirectCaller.callNumber('7923243315');
                    launch('tel:7923243315');
                  },
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('assets/images/marinea.png',
                          width: 180,
                          height: 130,),
                        // Icon(Icons.home,size: 70,color: Colors.blueAccent,),
                        Text("Marine Accident",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.blue,
                child: InkWell(
                  onTap: (){
                    // FlutterPhoneDirectCaller.callNumber('1800-180-1253');
                    launch('tel:1800-180-1253');
                  },
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('assets/images/animal.png',
                          width: 200,
                          height: 130,),
                        // Icon(Icons.home,size: 70,color: Colors.blueAccent,),
                        Text("Animal Attack",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.blue,
                child: InkWell(
                  onTap: (){
                    // FlutterPhoneDirectCaller.callNumber('011-23438017');
                    launch('tel:011-23438017');
                  },
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('assets/images/Disaster.png',
                          width: 110,
                          height: 130,),
                        // Icon(Icons.home,size: 70,color: Colors.blueAccent,),
                        Text("Disaster NDRF",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }
    }