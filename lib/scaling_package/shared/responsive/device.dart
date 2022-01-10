import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// https://mediag.com/blog/popular-screen-resolutions-designing-for-all/
const _breakpoints = <double>[
  300,    // watch / ipod : width <= 300 , portrait
  500,    // smartphone : 300 < width <= 500, portrait
  1280,   // tablet : 480 < width <= 1280, portrait
];        // desktop : 1280 < width, no orientation

class WDevice {
  final BuildContext context;
  const WDevice(this.context);

  Size get size => MediaQuery.of(context).size;
  double get referentialWidth => inPortrait ? size.width : size.height;

  // The orientation mode the device is in. Portrait: width/height <= 1
  bool get inPortrait => MediaQuery.of(context).orientation == Orientation.portrait;
  bool get inLandscape => MediaQuery.of(context).orientation == Orientation.landscape;

  // Was the application compiled to run as the Web?
  bool get isWeb => kIsWeb;

  // If it was not compiled for the web, try to discern which OS the app is running on
  bool? get isAndroid => isWeb ? null : Platform.isAndroid;
  bool? get isIOS => isWeb ? null : Platform.isIOS;
  bool? get isFuchsia => isWeb ? null : Platform.isFuchsia;
  bool? get isLinux => isWeb ? null : Platform.isLinux;
  bool? get isMacOS => isWeb ? null : Platform.isMacOS;
  bool? get isWindows => isWeb ? null : Platform.isWindows;

  // If the actual device is a smartphone
  bool get isMobile => (isAndroid != null && isAndroid!) || (isIOS != null && isIOS!);

  // ws = WorkSpace. Reference work area for responsive content
  bool get wsIsWatch => size.width <= _breakpoints[0];
  bool get wsIsPhone => _breakpoints[0] < size.width && size.width <= _breakpoints[1];
  bool get wsIsTablet => _breakpoints[1] < size.width && size.width <= _breakpoints[2];
  bool get wsIsDesktop => _breakpoints[2] < size.width;

  // References to intuit real devices
  bool get _isWatch => referentialWidth <= _breakpoints[0];
  bool get _isPhone => _breakpoints[0] < referentialWidth && referentialWidth <= _breakpoints[1];
  bool get _isTablet => _breakpoints[1] < referentialWidth && referentialWidth <= _breakpoints[2];
  bool get _isDesktop => _breakpoints[2] < referentialWidth;

  // If it was not compiled for the web, try to discern what type of REAL device it is.
  bool? get isWatch => isWeb ? null : _isWatch;
  bool? get isPhone => isWeb ? null : _isPhone;
  bool? get isTablet => isWeb ? null : _isTablet;
  bool? get isDesktop => isWeb ? null : _isDesktop;

}