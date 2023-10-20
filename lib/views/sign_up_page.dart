import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:gocare/config/palette.dart';
import 'package:gocare/views/doctors.dart';
import 'package:gocare/views/firstscreen.dart';
import 'package:gocare/views/last.dart';
import 'package:gocare/views/map.dart';
import 'package:gocare/views/second.dart';
import 'package:gocare/views/third.dart';
import 'third.dart';
import '../config/palette.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
//   final PageController _pageController = PageController(initialPage: 0);
//   int _pageIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         children: _buildThreePageViewChildren(),
//         controller: _pageController,
//         physics: const NeverScrollableScrollPhysics(),
//         onPageChanged: (int index) {
//           setState(
//                 () {
//               _pageIndex = index;
//             },
//           );
//         },
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: _buildThreeItems(),
//         onTap: (int index) {
//           _pageController.animateToPage(
//             index,
//             duration: const Duration(milliseconds: 200),
//             curve: Curves.easeInOut,
//           );
//         },
//         currentIndex: _pageIndex,
//         fixedColor: Theme.of(context).primaryColorDark,
//       ),
//     );
//   }
//
//   List<Widget> _buildThreePageViewChildren() {
//     return <Widget>[
//     firstscreen(),
//     second(), firstscreen(), firstscreen(),
//
//       // Maa(),
//     // StatsScreen(),
//     ];
//   }
//
//   List<BottomNavigationBarItem> _buildThreeItems() {
//     return const <BottomNavigationBarItem>[
//       BottomNavigationBarItem(
//         icon: Icon(Icons.home),
//         label: 'Home',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.call),
//         label: 'Emergency Calls',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.add_location_alt_rounded),
//         label: 'Nearby Hospital',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.calculate_rounded),
//         label: 'BMI',
//       ),
//     ];
//   }
// }

  int _selectedIndex = 0; //default index

  List<Widget> _widgetOptions = [
    firstscreen(),
    second(),
    MyApp(),
    StatsScreen(),
    doctor(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        selectedColor: Colors.blueAccent,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        unSelectedColor: Colors.black54,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        enableLineIndicator: true,
        lineIndicatorWidth: 2,
        indicatorType: IndicatorType.Top,
        // gradient: LinearGradient(
        //   colors: kGradients,
        // ),

        customBottomBarItems: [
          CustomBottomBarItems(
            label: 'Home',
            icon: Icons.home,
          ),
          CustomBottomBarItems(
            label: 'Calls',
            icon: Icons.call_sharp,
          ),
          CustomBottomBarItems(
              label: 'Nearby Hospitals', icon: Icons.location_on_outlined),
          CustomBottomBarItems(
            label: 'Blogs',
            icon: Icons.web_rounded,
          ),
          CustomBottomBarItems(
            label: 'Doctors',
            icon: Icons.local_hospital,
          ),
        ],
      ),
    );
  }
}