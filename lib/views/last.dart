import 'package:flutter/material.dart';
import 'package:gocare/app_styles.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(StatsScreen());
}

class StatsScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Aid Blogs (For More Information)'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(
          // ignore: prefer_const_constructors
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/blog.jpg')
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height:10),
              Container(
                height:542,
                width: double.infinity,
                child: Column(
                  children: [
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height:80),
                ElevatedButton(
                child: Text("Blog-1"),
                onPressed: (){
                  const link = "https://www.safetyfirstaid.co.uk/our-blog/";

                  launchUrl(

                      Uri.parse(link),
                      mode: LaunchMode.externalApplication
                  );

                },
              ),
                        SizedBox(height:20),
                        ElevatedButton(
                          child: Text("Blog-2"),
                          onPressed: (){
                            const link = "https://firstaidtrainingcooperative.co.uk/blog/";

                            launchUrl(

                                Uri.parse(link),
                                mode: LaunchMode.externalApplication
                            );

                          },
                        ),
                        SizedBox(height:20),
                        ElevatedButton(
                          child: Text("Blog-3"),
                          onPressed: (){
                            const link = "https://firstaidforlife.org.uk/blog/";

                            launchUrl(

                                Uri.parse(link),
                                mode: LaunchMode.externalApplication
                            );

                          },
                        ),
                        SizedBox(height:20),
                        ElevatedButton(
                          child: Text("Blog-4"),
                          onPressed: (){
                            const link = "https://www.skillbasefirstaid.com/blog/";

                            launchUrl(

                                Uri.parse(link),
                                mode: LaunchMode.externalApplication
                            );

                          },
                        ),
                        SizedBox(height:20),
                        ElevatedButton(
                          child: Text("Blog-5"),
                          onPressed: (){
                            const link = "https://www.alertfirstaid.com/blog/";

                            launchUrl(

                                Uri.parse(link),
                                mode: LaunchMode.externalApplication
                            );

                          },
                        ),
                  ],
                ),
              ]),
            )],
      ),
    )
    );
  }
}