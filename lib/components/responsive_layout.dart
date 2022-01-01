import 'package:dalkongcare_screen/models/breakpoints.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {Key? key, required this.mobileBody, this.tabletBody, this.desktopBody})
      : super(key: key);
  final Widget mobileBody;
  final Widget? tabletBody;
  final Widget? desktopBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints dimens) {
      if (dimens.maxWidth < kTabletBreakPoint) {
        print('ResponsiveLayout / mobile body checked');
        return mobileBody;
      } else if (dimens.maxWidth >= kTabletBreakPoint &&
          dimens.maxWidth < kDesktopBreakPoint) {
        print('ResponsiveLayout / tablet body checked');
        return tabletBody ?? mobileBody;
      } else {
        print('ResponsiveLayout / desktop body checked');
        return tabletBody ?? mobileBody;
      }
    });
  }
}
