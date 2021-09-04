import 'dart:developer';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';

class MapMarker {

  static Future<Uint8List> generateWidgetFile(
      BuildContext context, Widget widget, double height) async {
    log("generateWidgetFile");
    ScreenshotController screenshotController = ScreenshotController();

    return await screenshotController.captureFromWidget(Container(
      height: height,
      child: widget,
    ));

    // Column(
    //   children: [
    //     Flexible(
    //       child: Container(
    //         margin: EdgeInsets.symmetric(vertical: 4.0.sp),
    //         width: 200.0,
    //         height: 40,
    //         alignment: Alignment.center,
    //         decoration: BoxDecoration(
    //             color: Colors.white,
    //             borderRadius: BorderRadius.all(Radius.circular(12.0.sp))
    //         ),
    //         child: Text(title, style: TextStyle(fontSize: 14.0.sp, fontWeight: FontWeight.w500, color: colorPrimary1),),
    //       ),
    //     ),
    //     Flexible(child: SvgPicture.asset(icon, width: 30.0.w, height: 30.0.w,))
    //   ],
    // )
    // try {
    //   RenderRepaintBoundary boundary =
    //       globalKey.currentContext.findRenderObject();
    //   var image = await boundary.toImage();
    //   ByteData byteData = await image.toByteData(format: ImageByteFormat.png);
    //   Uint8List pngBytes = byteData.buffer.asUint8List();
    //   return pngBytes;
    // } catch(ex, stack) {debugPrintStack(stackTrace: stack, label: ex.toString());}
  }
}
