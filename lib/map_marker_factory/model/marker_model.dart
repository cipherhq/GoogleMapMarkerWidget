import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerModel {
  MarkerId markerId;
  Widget widget;
  LatLng position;
  double height;
  double width;

  MarkerModel(this.markerId, this.position, this.widget, this.height);
}
