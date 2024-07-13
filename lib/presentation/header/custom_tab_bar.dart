import 'package:flutter/material.dart';

import '../../core/utils/style/global_colors.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomTabBar({
    super.key,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: GlobalColors.facebookBlue,
            width: 3.0,
          ),
        ),
      ),
      tabs: icons
          .asMap()
          .map((i, e) => MapEntry(
                i,
                Tab(
                  icon: Icon(
                    e,
                    color: i == selectedIndex
                        ? GlobalColors.facebookBlue
                        : Colors.black45,
                    size: 30.0,
                  ),
                ),
              ))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}

// @override
// Widget build(BuildContext context) {
//   return Material(
//     child: TabBar(
//       indicatorPadding: EdgeInsets.zero,
//       indicator: BoxDecoration(
//         border: Border(
//           top: BorderSide(
//             color: GlobalColors.facebookBlue,
//             width: 3.0,
//           ),
//         ),
//       ),
//       tabs: icons
//           .asMap()
//           .map((i, e) => MapEntry(
//         i,
//         Tab(
//           icon: Icon(
//             e,
//             color: i == selectedIndex
//                 ? GlobalColors.facebookBlue
//                 : Colors.black45,
//             size: 30.0,
//           ),
//         ),
//       ))
//           .values
//           .toList(),
//       onTap: onTap,
//     ),
//   );
// }
// }
