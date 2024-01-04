import 'package:flutter/material.dart';
import 'package:istanbul_events/utils/theme.dart';
import 'package:istanbul_events/views/home_view.dart';
import 'package:istanbul_events/widgets/icon_item.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late PageController pageController;
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
        children: List.generate(4, (index) => const HomeView()),
      ),
      bottomNavigationBar: BottomAppBar(
        color: ProjectTheme.whiteAccent,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 7,
            ),
            iconBar(
              icon: Icons.home,
              page: 0,
            ),
            iconBar(icon: Icons.favorite, page: 1),
            iconBar(icon: Icons.mode_comment, page: 2, badge: true),
            iconBar(icon: Icons.person, page: 3),
            const SizedBox(
              width: 7,
            )
          ],
        ),
      ),
    );
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      currentPage = page;
    });
  }

  Widget iconBar(
      {IconData icon = Icons.home, int page = 0, bool badge = false}) {
    return IconButton(
      icon: badge
          ? IconItem(
              icon: icon,
              size: 24.0,
              color: Colors.green,
            )
          : Icon(icon, size: 24.0),
      color:
          currentPage == page ? ProjectTheme.darkPrimary : Colors.black,
      onPressed: () => pageController.jumpToPage(page),
    );
  }
}
