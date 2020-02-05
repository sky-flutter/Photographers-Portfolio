import 'package:photographer_portfolio/utils/importStatement.dart';

class BaseWidget extends InheritedWidget {
  static bool isMenuVisible=false;
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static bool isLargeScreen(BuildContext context) {
    return ResponsiveLayout.isLargeScreen(context);
  }

  static bool isMediumScreen(BuildContext context) {
    return ResponsiveLayout.isMediumScreen(context);
  }

  static bool isSmallScreen(BuildContext context) {
    return ResponsiveLayout.isSmallScreen(context);
  }

  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
