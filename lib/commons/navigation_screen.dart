import 'package:facebbok_clean_archteture_responsive/core/utils/responsive/percentage_extension.dart';
import 'package:facebbok_clean_archteture_responsive/presentation/header/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../components/user/data/users.dart';
import '../core/utils/responsive/responsive.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final List<Widget> _screens = [
    // HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  final List<IconData> _icons = [
    Icons.home,
    Icons.ondemand_video,
    Icons.store,
    MdiIcons.heartOutline,
    // MdiIcons.accountGroupOutline,
    MdiIcons.bellOutline,
    Icons.menu,
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return DefaultTabController(
        length: _icons.length,
        child: DefaultTabController(
          length: _icons.length,
          child: Scaffold(
              appBar: Responsive.isMobile(context)
                  ? PreferredSize(
                      preferredSize: Size(screenSize.width,
                          screenSize.height * 13.00.percent()),
                      child: CustomAppBar(
                          currentUser: Users.currentUser, icons: _icons))
                  : Responsive.isTablet(context)
                      ? PreferredSize(
                          preferredSize: Size(screenSize.width, 100.00),
                          child: CustomAppBar(
                              currentUser: Users.currentUser, icons: _icons))
                      : PreferredSize(
                          preferredSize: Size(screenSize.width, 100.00),
                          child: CustomAppBar(
                              currentUser: Users.currentUser, icons: _icons))),
        ));
  }
}

// return Responsive(
//     desktop: DefaultTabController(
//       length: _icons.length,
//       child: Scaffold(
//         appBar: PreferredSize(
//           preferredSize: Size(screenSize.width, 100.00),
//           child: CustomAppBar(
//             currentUser: Users.currentUser,
//             icons: _icons,
//           ),
//         ),
//       ),
//     ),
//     mobile: DefaultTabController(
//       length: _icons.length,
//       child: Scaffold(
//         appBar: PreferredSize(
//           preferredSize: Size(screenSize.width, 300.00),
//           child: CustomAppBar(
//             currentUser: Users.currentUser,
//             icons: _icons,
//           ),
//         ),
//       ),
//     ));

// return DefaultTabController(
//   length: _icons.length,
//   child: Scaffold(
//     appBar: Responsive.isDesktop(context)
//         ? PreferredSize(
//             preferredSize: Size(screenSize.width, 100.0),
//             child: CustomAppBar(
//               currentUser: Users.currentUser,
//               icons: _icons,
//               selectedIndex: _selectedIndex,
//               onTap: (index) => setState(() => _selectedIndex = index),
//             ),
//           )
//         : null,
//     body: IndexedStack(
//       index: _selectedIndex,
//       children: _screens,
//     ),
//     bottomNavigationBar: !Responsive.isDesktop(context)
//         ? Container(
//             padding: const EdgeInsets.only(bottom: 12.0),
//             color: Colors.white,
//             child: CustomTabBar(
//               icons: _icons,
//               selectedIndex: _selectedIndex,
//               onTap: (index) => setState(() => _selectedIndex = index),
//             ),
//           )
//         : const SizedBox.shrink(),
//   ),
// );
