# google_map_marker_widget

A new Flutter project to create dynamic google map markers using widgets.

## Getting Started
### 1. Add this package in pubspec.yaml
```dart
  google_map_marker_widget:
    git:
      url: https://github.com/cipherhq/google_map_marker_widget.git
      ref: master
```
### 2. To get markers set:
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
### 3. Use that Set<Marker> inside GoogleMap widget:

```dart
GoogleMap(
                  padding: EdgeInsets.only(top: 500.h, bottom: 300.h),
                  mapType: MapType.normal,
                  myLocationEnabled: true,
                  myLocationButtonEnabled: true,
                  zoomGesturesEnabled: true,
                  zoomControlsEnabled: true,
                  initialCameraPosition: _kGooglePlex,
                  markers: markerSet,
                  onMapCreated: (GoogleMapController controller) {
                    setMapMarker();
                    _controller.complete(controller);
                  },
                ),
```  

