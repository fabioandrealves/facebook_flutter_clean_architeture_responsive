import 'package:facebbok_clean_archteture_responsive/core/utils/responsive/percentage_extension.dart';
import 'package:facebbok_clean_archteture_responsive/core/utils/style/global_colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../components/user/domain/entity/user_entity.dart';
import '../../core/utils/custom_logger.dart';
import '../shared_widgets/circle_button.dart';

class CustomAppBar extends StatefulWidget {
  final User currentUser;
  final List<IconData> icons;

  const CustomAppBar({
    super.key,
    required this.currentUser,
    required this.icons,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  int _selectedIndex = 0;

  Widget _buildVerticalSpacing({
    required double screenSize,
    required double factor,
  }) =>
      SizedBox(height: screenSize * factor.percent());

  Widget _buildHorizontalSpacing({
    required double screenSize,
    required double factor,
  }) =>
      SizedBox(height: screenSize * factor.percent());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return AppBar(
      title: Expanded(
        child: Row(
          children: [
            const Text(
              'facebook',
              style: TextStyle(
                color: GlobalColors.facebookBlue,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width * 15.00.percent()),
                    child: CircleButton(
                        icon: Icons.add_circle_sharp,
                        iconSize: 24.0,
                        onPressed: () {
                          CustomLogger.logInfo('Add');
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width * 30.00.percent()),
                    child: CircleButton(
                        icon: Icons.search,
                        iconSize: 24.0,
                        onPressed: () {
                          CustomLogger.logInfo('Search');
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width * 45.00.percent()),
                    child: CircleButton(
                        icon: MdiIcons.facebookMessenger,
                        iconSize: 24.0,
                        onPressed: () {
                          CustomLogger.logInfo('Message');
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottom: TabBar(
        indicatorColor: GlobalColors.facebookBlue,
        //  indicatorPadding: EdgeInsets.only(bottom: 10.00),
        // indicator: const BoxDecoration(
        //   border: Border(
        //     top: BorderSide(
        //       color: GlobalColors.facebookBlue,
        //       width: 5.0,
        //     ),
        //   ),
        // ),
        tabs: widget.icons
            .asMap()
            .map((i, e) => MapEntry(
                  i,
                  Tab(
                    icon: Icon(
                      e,
                      color: i == _selectedIndex
                          ? GlobalColors.facebookBlue
                          : Colors.black,
                      size: 30.0,
                    ),
                  ),
                ))
            .values
            .toList(),
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}

// return Container(
//   height: 200.0,
//   decoration: const BoxDecoration(
//     color: Colors.white,
//     boxShadow: [
//       BoxShadow(
//         color: Colors.black12,
//         offset: Offset(0, 2),
//         blurRadius: 4.0,
//       ),
//     ],
//   ),
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.start,
//     children: [
//       _buildVerticalSpacing(screenSize: screenSize.height, factor: 4.00),
//       Expanded(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text(
//               'facebook',
//               style: TextStyle(
//                 color: GlobalColors.facebookBlue,
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: -1.2,
//               ),
//             ),
//             Padding(
//               padding:
//                   EdgeInsets.only(left: screenSize.width * 10.00.percent()),
//               child: Stack(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       CircleButton(
//                           icon: Icons.add_circle_sharp,
//                           iconSize: 24.0,
//                           onPressed: () {
//                             CustomLogger.logInfo('Add');
//                           }),
//                       CircleButton(
//                           icon: Icons.search,
//                           iconSize: 24.0,
//                           onPressed: () {
//                             CustomLogger.logInfo('Search');
//                           }),
//                       CircleButton(
//                           icon: MdiIcons.facebookMessenger,
//                           iconSize: 24.0,
//                           onPressed: () {
//                             CustomLogger.logInfo('Message');
//                           })
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//       SizedBox(height: 8),
//       CustomTabBar(
//           icons: widget.icons,
//           selectedIndex: _selectedIndex,
//           onTap: (index) => setState(() => _selectedIndex = index))
//     ],
//   ),
// );

// _buildHorizontalSpacing(
//     screenSize: screenSize.width, factor: 50.00),

// Expanded(
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.end,
//     children: [
//       UserCard(user: currentUser),
//       const SizedBox(width: 12.0),
//       CircleButton(
//         icon: Icons.search,
//         iconSize: 30.0,
//         onPressed: () => print('Search'),
//       ),
//       CircleButton(
//         icon: MdiIcons.facebookMessenger,
//         iconSize: 30.0,
//         onPressed: () => print('Messenger'),
//       ),
//     ],
//   ),
// ),
