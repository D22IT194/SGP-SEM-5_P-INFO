import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:gocare/size_configs.dart';
class skin extends StatelessWidget {
  const skin({Key? key}) : super(key: key);

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
              title: Text('Skin Burns'),
              foregroundColor: Colors.black,
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "assets/images/burnss.png",
                height: 145,
                width: 145,
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
                      Text(" • Protect the burned person from further harm. If you can do so safely, make sure the person you're helping is not in contact with the source of the burn. For electrical burns, make sure the power source is off before you approach the burned person. Don't try to remove clothing stuck in the burn.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • Make certain that the person burned is breathing. If needed, begin rescue breathing if you know how.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • Cover the burn. Loosely cover the area with gauze or a clean cloth.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • Watch for signs of shock. Signs and symptoms include cool, clammy skin, weak pulse and shallow breathing.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 16/9,
                            child: BetterPlayer.network(
                              "https://firebasestorage.googleapis.com/v0/b/lapizzato-28f21.appspot.com/o/Burns%20and%20Scalds%20-%20Animated.mp4?alt=media&token=7f6952a0-af3a-4be8-b988-3623a666288b",
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
