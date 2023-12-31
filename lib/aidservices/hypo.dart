import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:gocare/size_configs.dart';

class hypo extends StatelessWidget {
  const hypo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            AppBar(
              backgroundColor: Color(0xff9fbee1),
              leading: BackButton(
                color: Colors.black,
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text('Hypothermia'),
              foregroundColor: Colors.black,
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "assets/images/hyp.png",
                height: 140,
                width: 140,
              ),
            ),
            Text("____________________________________________________________"),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Text("Steps:",
                          style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black45)),
                      const SizedBox(height: 20),
                      Text(" • Gently move the person out of the cold. If going indoors isn't possible, protect the person from the wind, especially around the neck and head. Insulate the individual from the cold ground.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • Begin CPR if the person shows no signs of life, such as breathing, coughing or movement.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • Gently remove wet clothing. Replace wet things with warm, dry coats or blankets.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 16/9,
                            child: BetterPlayer.network(
                              "https://firebasestorage.googleapis.com/v0/b/lapizzato-28f21.appspot.com/o/4e_%20Hypothermia%20(2021)%20OLD.mp4?alt=media&token=29c1864d-110e-4095-85cb-a7706d8bf71e",
                              betterPlayerConfiguration: BetterPlayerConfiguration(
                                aspectRatio: 16 / 9,
                                // child: BetterPlayerPlaylist(
                                //     betterPlayerConfiguration: BetterPlayerConfiguration(),
                                //     betterPlayerPlaylistConfiguration:  BetterPlayerPlaylistConfiguration(),
                                //     betterPlayerDataSourceList: createDataSet()
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 0.0,
                        padding: EdgeInsets.all(10.0),
                        color: Colors.white.withOpacity(0.7),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
