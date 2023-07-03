import 'package:flutter/material.dart';
import 'package:asynchronous_coffe/core.dart';
import '../controller/Dasboard_controller.dart';

class DasboardView extends StatefulWidget {
  const DasboardView({Key? key}) : super(key: key);

  Widget build(context, DasboardController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            HomeView(),
            HistoryView(),
            ProfileView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          onTap: (newIndex) => controller.updateIndex(newIndex),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff3068f3),
          unselectedItemColor: Color(0xffb6b6b6),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard_customize,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
              ),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: "Order",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<DasboardView> createState() => DasboardController();
}
