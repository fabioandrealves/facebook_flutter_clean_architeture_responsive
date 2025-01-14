import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget desktop;
  final Widget mobile;
  final Widget? tablet;

  const Responsive({
    super.key,
    required this.desktop,
    required this.mobile,
    this.tablet,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800 &&
      MediaQuery.of(context).size.width < 1200;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  Widget _getResponsiveLayout({required BoxConstraints constraints}) {
    if (constraints.maxWidth >= 1200) {
      return desktop;
    } else if (constraints.maxWidth >= 800) {
      return tablet ?? mobile;
    } else {
      return mobile;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return _getResponsiveLayout(constraints: constraints);
      },
    );
  }
}
