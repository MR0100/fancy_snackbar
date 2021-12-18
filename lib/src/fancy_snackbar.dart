library fancy_snackbar;

import 'dart:math';

import 'package:fancy_snackbar/src/snack_back_shapes/snack_back_shapes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

part 'bubble_painter.dart';
part 'custom_snackbar.dart';
part 'snackbar_utilities.dart';

class FancySnackbar {
  /// this method is used to render the snackbar on display.
  static showSnackbar(
    BuildContext context, {

    /// duration is used to set the duration of snackbar to show on the screen.
    /// it will manage how long the snackbar will be showed in the screen.
    /// default duration is [3 seconds]
    double duration = 3,

    /// if you want to take any actions after closing the snackbar then you can pass the callback.
    VoidCallback? onCloseEvent,

    /// there are many colors providing in the package.
    /// you can select shades of the colors from the enum.
    /// default color will be the color based on the type.
    SnackBarColors? color,

    /// animationDuration handle how long you want to take while getting snackbar in the screen.
    /// default it is 800 milliseconds
    double animationDuration = 0.3,

    /// animationDuration handle how long you want to take while getting off snackbar from the screen.
    /// default it is 800 milliseconds
    double reverseAnimationDuration = 0.3,

    /// if there is the 'title' passed then it will take the default style for it.
    /// default 'title' is based on the type selected.
    String? title,

    /// if you want to use your own style and text for the 'title'.
    /// then you can pass the 'titleWidget'.
    /// when you will pass the 'titleWidget' it will ignore the 'title' if you have passed.
    Widget? titleWidget,

    /// you can choose style for your snackbar based on the type.
    /// there are 5 types we are providing for now.
    /// 1. success
    /// 2. error
    /// 3. info
    /// 4. warning
    /// 5. waitting
    ///
    /// default type is success.
    FancySnackBarType snackBarType = FancySnackBarType.success,

    /// if there is the 'message' passed then it will take the default style for it.
    /// default 'message' is based on the type selected.
    String? message,

    /// if you want to use your own style and text for the 'message'
    /// then you can pass the 'messageWidget'.
    /// when you will pass the 'messageWidget' it will ignore the 'message' if you have passed.
    Widget? messageWidget,
  }) async {
    /// creating new instance of OverlayEntry and using CustomSnackbar to render on the display using overlay.
    OverlayEntry d = OverlayEntry(
      builder: (context) {
        return CustomSnackbar(
          duration: duration,
          animationDuration: animationDuration,
          reverseAnimationDuration: reverseAnimationDuration,
          title: title,
          message: message,
          messageWidget: messageWidget,
          snackBarType: snackBarType,
          titleWidget: titleWidget,
          color: color,
        );
      },
    );

    /// insering the new object in the widget tree to render the CustomSnackbar.
    Overlay.of(context)?.insert(d);

    /// it will show the snackbar for some time.
    await Future.delayed(Duration(milliseconds: (duration * 1000).toInt()));
    if (d.mounted) {
      /// after some delay it will remove the snackbar from display.
      d.remove();
    }
    if (onCloseEvent != null) {
      /// when onCloseEvent is not null then it will callback onCloseEvent.
      onCloseEvent();
    }
  }
}
