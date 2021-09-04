# google_map_marker_widget

A new Flutter project to create dynamic google map markers using widgets.

## Getting Started
### To setup markers set:
```dart
  Future<void> setMapMarker() async {
    MapMarkerFactory mapMarkerFactory = MapMarkerFactory();
    List<MarkerModel> markerModel = [
      MarkerModel(
          MarkerId("1"),
          LatLng(37.42796133580664, -122.085749655962),
          MapMarkerWidget.getMapMarkerWidget(
              "title", "assets/images/map_marker/sp_icon.svg"),
          80),
      MarkerModel(
          MarkerId("2"),
          LatLng(37.42796133580664, -122.095749655250),
          Container(child: Text("Text Hello", style: TextStyle(color: Colors.black),)),
          80),

    ];

        await mapMarkerFactory.getMapMarker(markerModel, context, (Set<Marker> markers) {
          setState(() {
            markerSet.addAll(markers);
          });
        });


  }
```
