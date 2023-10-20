import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:gocare/size_configs.dart';

class Head extends StatelessWidget {
  const Head({Key? key}) : super(key: key);

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
              title: Text('Head Injury'),
              foregroundColor: Colors.black,
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "assets/images/he.png",
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
                      Text('Steps:',
                          style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black45)),
                      const SizedBox(height: 20),
                      Text(" • If the injured person is bleeding, try to stop the bleeding by using gauze, or a clean cloth.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • If the wound is open, do not touch or apply pressure on it. Cover or wrap the wound with a clean piece of gauze (bandage) instead.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • If the person is awake, instruct them not to move their head and neck. This can help prevent further damage to their spine and brain.",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text(" • If the person is unconscious and not breathing, begin the process of CPR (cardiopulmonary resuscitation).",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 16/9,
                            child: BetterPlayer.network(
                              "https://firebasestorage.googleapis.com/v0/b/lapizzato-28f21.appspot.com/o/Head%20Injuries%20-%20Animated.mp4?alt=media&token=4ee715f4-d5d7-4bad-aab0-499d89fd10ce",
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

