import 'package:flutter/material.dart';
import '../constants/break_points.dart';

class Responsive {
  final BuildContext context;
  final double screenWidth;
  final double screenHeight;
  final Orientation orientation;

  Responsive(this.context)
      : screenWidth = MediaQuery.sizeOf(context).width,
        screenHeight = MediaQuery.sizeOf(context).height,
        orientation = MediaQuery.orientationOf(context);

  // Determine device type
  bool get isMobile => screenWidth < Breakpoints.mobile;
  bool get isTablet => screenWidth >= Breakpoints.mobile && screenWidth < Breakpoints.tablet;
  bool get isDesktop => screenWidth >= Breakpoints.tablet;

  // Determine orientation
  bool get isPortrait => orientation == Orientation.portrait;
  bool get isLandscape => orientation == Orientation.landscape;

  // Calculate width and height percentages
  double wp(double percent) => screenWidth * percent / 100;
  double hp(double percent) => screenHeight * percent / 100;

  // Spacing methods
  double spacing(double value) => screenWidth * (value / 375); // Base width: 375
  double spacingHeight(double value) => screenHeight * (value / 812); // Base height: 812

  // General Spacing
  double get xSmall => spacing(4);
  double get small => spacing(8);
  double get medium => spacing(16);
  double get large => spacing(24);
  double get xLarge => spacing(32);
  double get xxLarge => spacing(40);
  double get xxxLarge => spacing(48);
  double get sectionPadding => spacing(64);

  // Custom Vertical Spacing
  double get textFieldSpacing => spacingHeight(12);
  double get filterSpacing => spacing(10);
  double get cardSpacing => spacing(16);
  double get listItemSpacing => spacingHeight(12);
  double get buttonSpacing => spacingHeight(14);
  double get formFieldSpacing => spacingHeight(16);
  double get sectionSpacing => spacingHeight(24);
  double get titleSpacing => spacingHeight(20);
  double get subtitleSpacing => spacingHeight(10);
  double get dividerSpacing => spacingHeight(8);
  double get iconSpacing => spacing(6);
  double get badgeSpacing => spacing(4);
  double get avatarSpacing => spacing(12);
  double get chipSpacing => spacing(8);
  double get tabSpacing => spacing(14);
  double get sectionHeaderSpacing => spacingHeight(18);
  double get footerSpacing => spacingHeight(30);
}
