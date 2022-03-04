import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prac_instargram/src/components/image_data.dart';
import 'package:prac_instargram/src/controller/bottom_nav_controller.dart';

class App extends GetView <BottomNavController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Obx(()=> Scaffold(
          appBar: AppBar(),
          body: IndexedStack(
            index: controller.pageIndex.value,
            children: [
              Container(
                child: Center(child: Text('HOME')),
              ),
              Container(
                child: Center(child: Text('SEARCH')),
              ),
              Container(
                child: Center(child: Text('UPLOAD')),
              ),
              Container(
                child: Center(child: Text('ACTIVITY')),
              ),
              Container(
                child: Center(child: Text('MYPAGE')),
              ),
            ],),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: controller.pageIndex.value,
            elevation: 0,
            onTap: controller.changeBottomNav,
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
        ),),
        onWillPop: controller.willPopAction,
    );
  }
}
