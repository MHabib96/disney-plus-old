import 'package:disney_plus/types/device_screen_types.dart';
import 'package:flutter/material.dart';

class ScreenDetails {
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;

  ScreenDetails({
    this.orientation,
    this.deviceScreenType,
    this.screenSize,
  });

  @override
  String toString() {
    return 'Orientation:$orientation DeviceType:$deviceScreenType ScreenSize:$screenSize';
  }
}
