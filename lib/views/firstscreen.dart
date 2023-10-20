import 'package:flutter/material.dart';
import 'package:gocare/aidservices/Asthama.dart';
import 'package:gocare/aidservices/bleed.dart';
import 'package:gocare/aidservices/bonefrac.dart';
import 'package:gocare/aidservices/eye.dart';
import 'package:gocare/aidservices/head.dart';
import 'package:gocare/aidservices/heartattack.dart';
import 'package:gocare/aidservices/hypo.dart';
import 'package:gocare/aidservices/skinburn.dart';
import 'package:gocare/aidservices/stings.dart';
import 'package:gocare/config/palette.dart';
import 'package:gocare/size_configs.dart';

class firstscreen extends StatefulWidget {
  const firstscreen({Key? key}) : super(key: key);

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          _buildHeader(screenHeight),
          _buildPreventionTips(screenHeight),
          // _buildYourOwnTest(screenHeight),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.fromLTRB(18, 50, 5, 25),
        // padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25.0),
            bottomRight: Radius.circular(25.0),
          ),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Text('Welcome To, P-Info       ',
                style: const TextStyle(color: Colors.black,fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
              Image(
                image: AssetImage('assets/images/First_Aid_Kit_free_vector_icons_designed_by_Freepik-removebg-preview.png'),
                height: 90,
                width:78,
              ),
            ],
            ),
            SizedBox(height: screenHeight * 0.01),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Always Have Your First Aid App on Your Pocket.',
                  style: const TextStyle(color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text('Save Lives, Be a hero',
                  style: const TextStyle(color: Colors.black54,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildPreventionTips(double screenHeight) {
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;
    return SliverToBoxAdapter(
      child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Text(
              //   'Home',
              //   style: const TextStyle(
              //     fontSize: 25.0,
              //     fontWeight: FontWeight.w600,
              //   ),
              // ),
              SizedBox(height: 11),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Asthama()));
                    },
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/asthama.png',
                            width: 100,
                            height: 100,),
                          const SizedBox(height: 6),
                          Text("Asthama\n  Attack",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.bold,fontFamily: 'Poppins'),)
                        ],),
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.0),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Head()));
                    },
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/he.png',
                            width: 100,
                            height: 100,),
                          const SizedBox(height: 6),
                          Text("Head Injury",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.bold,fontFamily: 'Poppins'),)
                        ],),
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.0),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>eye()));
                    },
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/eyes.png',
                            width: 100,
                            height: 100,),
                          const SizedBox(height: 6),
                          Text("Eye Injuries",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.bold,fontFamily: 'Poppins'),)
                        ],),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>bleed()));
                    },
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/baa.png',
                            width: 100,
                            height: 100,),
                          const SizedBox(height: 6),
                          Text("Bledding",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.bold,fontFamily: 'Poppins'),)
                        ],),
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.0),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>bonefrac()));
                    },
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/fracc.png',
                            width: 100,
                            height: 100,),
                          const SizedBox(height: 6),
                          Text("Bone Fracture",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.bold,fontFamily: 'Poppins'),)
                        ],),
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.0),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>heart()));
                    },
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/heart.png',
                            width: 100,
                            height: 100,),
                          const SizedBox(height: 6),
                          Text("Heart Attack",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.bold,fontFamily: 'Poppins'),)
                        ],),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>stings()));
                    },
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/sting.png',
                            width: 100,
                            height: 100,),
                          const SizedBox(height: 6),
                          Text("Stings/bites",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.bold,fontFamily: 'Poppins'),)
                        ],),
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.0),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>hypo()));
                    },
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/hyp.png',
                            width: 100,
                            height: 100,),
                          const SizedBox(height: 6),
                          Text("Hypothermia",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.bold,fontFamily: 'Poppins'),)
                        ],),
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.0),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>skin()));
                    },
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/burnss.png',
                            width: 100,
                            height: 100,),
                          const SizedBox(height: 6),
                          Text("Skin Burns",style: TextStyle(color: Colors.black,fontSize:18,fontWeight:FontWeight.bold,fontFamily: 'Poppins'),)
                        ],),
                    ),
                  ),
                ],
              ),

            ],
          )
      ),
    );
  }
}
