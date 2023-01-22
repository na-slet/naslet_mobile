import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:naslet_mobile/pages/main/events/EventsPage.dart';
import 'package:naslet_mobile/pages/main/feed/FeedPage.dart';
import 'package:naslet_mobile/pages/main/profile/ProfilePage.dart';
import 'package:naslet_mobile/ui/navigation_bar/DesktopNavigationBar.dart';
import 'package:naslet_mobile/utils/Routes.dart';

import '../../services/ColorService.dart';
import '../../ui/navigation_bar/MobileNavigationBar.dart';
import '../../utils/ScreenSize.dart';
import 'details/DetailsPage.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final colorService = Injector().get<ColorService>();

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
        switch (index) {
          case 0:
            Routes.navigatorKey.currentState?.pushNamed(Routes.feedPage);
            break;
          case 1:
            Routes.navigatorKey.currentState?.pushNamed(Routes.eventsPage);
            break;
          case 2:
            Routes.navigatorKey.currentState?.pushNamed(Routes.profilePage);
            break;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: (MediaQuery.of(context).size.width < WidthFormFactor.tablet)
            ? null
            : DesktopNavigationBar(
                onItemTapped: _onItemTapped,
                selectedIndex: _selectedIndex,
                headerMargins: MediaQuery.of(context).size.width * 0.05),
        body: Navigator(
          key: Routes.navigatorKey,
          initialRoute: Routes.feedPage,
          onGenerateRoute: (RouteSettings settings) {
            WidgetBuilder builder;
            switch (settings.name) {
              case Routes.eventsPage:
                builder = (BuildContext context) => DetailsPage();
                break;
              case Routes.profilePage:
                builder = (BuildContext context) => ProfilePage();
                break;
              default:
                builder = (BuildContext context) => FeedPage();
                break;
            }
            return CupertinoDialogRoute(
              context: context,
              builder: builder,
              settings: settings,
            );
          },
        ),
        bottomNavigationBar:
            (MediaQuery.of(context).size.width < WidthFormFactor.tablet)
                ? MobileBottomNavigationWidget(
                    selectedIndex: _selectedIndex,
                    onItemTapped: _onItemTapped,
                  )
                : null,
      ),
    );
  }
}
