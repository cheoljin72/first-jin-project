import 'package:flutter/material.dart';
import 'package:prac_instargram/src/components/image_data.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(),
          body: Container(),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: 0,
            elevation: 0,
            onTap: (value){},
            items: [
              BottomNavigationBarItem(icon: Image.asset(IconsPath.homeOff),
                activeIcon: ImageData(IconsPath.homeOn),
                label: 'home',
              ),
              BottomNavigationBarItem(icon: Image.asset(IconsPath.searchOff),
                activeIcon: ImageData(IconsPath.searchOn),
                label: 'home',
              ),
              BottomNavigationBarItem(icon: Image.asset(IconsPath.uploadIcon),
                label: 'home',
              ),
              BottomNavigationBarItem(icon: Image.asset(IconsPath.activeOff),
                activeIcon: ImageData(IconsPath.activeOn),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                  ),
                label: 'home',
              ),
            ],
          )
        ),
        onWillPop: ()async{
          return false;
        }
        );
  }
}
