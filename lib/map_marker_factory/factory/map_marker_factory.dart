import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:google_map_marker_widget/map_marker_factory/model/marker_model.dart';
import 'package:google_map_marker_widget/map_marker_factory/widget/map_marker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapMarkerFactory {
  Future<Set<Marker>> getMapMarker(
      List<MarkerModel> markerModel, BuildContext buildContext) async {
    log("getMapMarker");
    Set<Marker> markers = Set();

    try {
      for (int i = 0; i < markerModel.length; i++) {
        Uint8List list = await MapMarker.generateWidgetFile(
            buildContext, markerModel[i].widget, markerModel[i].height);

        BitmapDescriptor icon = await BitmapDescriptor.fromBytes(list);

        Marker marker = Marker(
            markerId: markerModel[i].markerId,
            icon: icon,
            position: markerModel[i].position);
        markers.add(marker);
      }
    } catch (ex, stack) {
      debugPrintStack(stackTrace: stack, label: ex.toString());
    }
    return markers;
  }
}
