// Created by Muhamad Fauzi Ridwan on 03/10/21.
part of '_widgets.dart';

final LatLngBounds sydneyBounds = LatLngBounds(
  southwest: const LatLng(-34.022631, 150.620685),
  northeast: const LatLng(-33.571835, 151.325952),
);

abstract class GoogleMapExampleAppPage extends StatelessWidget {
  const GoogleMapExampleAppPage(
    this.leading,
    this.title, {
    Key? key,
  }) : super(key: key);

  final Widget leading;
  final String title;
}

class MapUiPage extends GoogleMapExampleAppPage {
  const MapUiPage({Key? key})
      : super(
          const Icon(Icons.map),
          'User interface',
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return const MapUiBody();
  }
}

class MapUiBody extends StatefulWidget {
  const MapUiBody({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MapUiBodyState();
}

class MapUiBodyState extends State<MapUiBody> {
  MapUiBodyState();

  static final CameraPosition _kInitialPosition = const CameraPosition(
    target: LatLng(-33.852, 151.211),
    zoom: 11,
  );

  CameraPosition _position = _kInitialPosition;
  bool _isMapCreated = false;
  bool isMoving = false;
  bool _compassEnabled = true;
  bool _mapToolbarEnabled = true;
  CameraTargetBounds _cameraTargetBounds = CameraTargetBounds.unbounded;
  MinMaxZoomPreference _minMaxZoomPreference = MinMaxZoomPreference.unbounded;
  MapType _mapType = MapType.normal;
  bool _rotateGesturesEnabled = true;
  bool _scrollGesturesEnabled = true;
  bool _tiltGesturesEnabled = true;
  bool _zoomControlsEnabled = false;
  bool _zoomGesturesEnabled = true;
  bool _indoorViewEnabled = true;
  bool _myLocationEnabled = true;
  bool _myTrafficEnabled = false;
  bool _myLocationButtonEnabled = true;
  late GoogleMapController _controller;
  bool _nightMode = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _compassToggler() {
    return TextButton(
      onPressed: () {
        setState(() {
          _compassEnabled = !_compassEnabled;
        });
      },
      child: Text('${_compassEnabled ? 'disable' : 'enable'} compass'),
    );
  }

  Widget _mapToolbarToggler() {
    return TextButton(
      onPressed: () {
        setState(() {
          _mapToolbarEnabled = !_mapToolbarEnabled;
        });
      },
      child: Text('${_mapToolbarEnabled ? 'disable' : 'enable'} map toolbar'),
    );
  }

  Widget _latLngBoundsToggler() {
    return TextButton(
      onPressed: () {
        setState(() {
          _cameraTargetBounds = _cameraTargetBounds.bounds == null
              ? CameraTargetBounds(sydneyBounds)
              : CameraTargetBounds.unbounded;
        });
      },
      child: Text(
        _cameraTargetBounds.bounds == null
            ? 'bound camera target'
            : 'release camera target',
      ),
    );
  }

  Widget _zoomBoundsToggler() {
    return TextButton(
      onPressed: () {
        setState(() {
          _minMaxZoomPreference = _minMaxZoomPreference.minZoom == null
              ? const MinMaxZoomPreference(12, 16)
              : MinMaxZoomPreference.unbounded;
        });
      },
      child: Text(_minMaxZoomPreference.minZoom == null
          ? 'bound zoom'
          : 'release zoom'),
    );
  }

  Widget _mapTypeCycler() {
    final nextType =
        MapType.values[(_mapType.index + 1) % MapType.values.length];
    return TextButton(
      onPressed: () {
        setState(() {
          _mapType = nextType;
        });
      },
      child: Text('change map type to $nextType'),
    );
  }

  Widget _rotateToggler() {
    return TextButton(
      onPressed: () {
        setState(() {
          _rotateGesturesEnabled = !_rotateGesturesEnabled;
        });
      },
      child: Text('${_rotateGesturesEnabled ? 'disable' : 'enable'} rotate'),
    );
  }

  Widget _scrollToggler() {
    return TextButton(
      onPressed: () {
        setState(() {
          _scrollGesturesEnabled = !_scrollGesturesEnabled;
        });
      },
      child: Text('${_scrollGesturesEnabled ? 'disable' : 'enable'} scroll'),
    );
  }

  Widget _tiltToggler() {
    return TextButton(
      onPressed: () {
        setState(() {
          _tiltGesturesEnabled = !_tiltGesturesEnabled;
        });
      },
      child: Text('${_tiltGesturesEnabled ? 'disable' : 'enable'} tilt'),
    );
  }

  Widget _zoomToggler() {
    return TextButton(
      onPressed: () {
        setState(() {
          _zoomGesturesEnabled = !_zoomGesturesEnabled;
        });
      },
      child: Text('${_zoomGesturesEnabled ? 'disable' : 'enable'} zoom'),
    );
  }

  Widget _zoomControlsToggler() {
    return TextButton(
      onPressed: () {
        setState(() {
          _zoomControlsEnabled = !_zoomControlsEnabled;
        });
      },
      child:
          Text('${_zoomControlsEnabled ? 'disable' : 'enable'} zoom controls'),
    );
  }

  Widget _indoorViewToggler() {
    return TextButton(
      onPressed: () {
        setState(() {
          _indoorViewEnabled = !_indoorViewEnabled;
        });
      },
      child: Text('${_indoorViewEnabled ? 'disable' : 'enable'} indoor'),
    );
  }

  Widget _myLocationToggler() {
    return TextButton(
      onPressed: () {
        setState(() {
          _myLocationEnabled = !_myLocationEnabled;
        });
      },
      child: Text(
          '${_myLocationEnabled ? 'disable' : 'enable'} my location marker'),
    );
  }

  Widget _myLocationButtonToggler() {
    return TextButton(
      onPressed: () {
        setState(() {
          _myLocationButtonEnabled = !_myLocationButtonEnabled;
        });
      },
      child: Text('''
${_myLocationButtonEnabled ? 'disable' : 'enable'} my location button'''),
    );
  }

  Widget _myTrafficToggler() {
    return TextButton(
      onPressed: () {
        setState(() {
          _myTrafficEnabled = !_myTrafficEnabled;
        });
      },
      child: Text('${_myTrafficEnabled ? 'disable' : 'enable'} my traffic'),
    );
  }

  Future<String> _getFileData(String path) async {
    return rootBundle.loadString(path);
  }

  void _setMapStyle(String mapStyle) {
    setState(() {
      _nightMode = true;
      _controller.setMapStyle(mapStyle);
    });
  }

  // Should only be called if _isMapCreated is true.
  Widget _nightModeToggler() {
    assert(_isMapCreated);
    return TextButton(
      onPressed: () {
        if (_nightMode) {
          setState(() {
            _nightMode = false;
            _controller.setMapStyle(null);
          });
        } else {
          _getFileData('assets/night_mode.json').then(_setMapStyle);
        }
      },
      child: Text('${_nightMode ? 'disable' : 'enable'} night mode'),
    );
  }

  @override
  Widget build(BuildContext context) {
    final googleMap = GoogleMap(
      onMapCreated: onMapCreated,
      initialCameraPosition: _kInitialPosition,
      compassEnabled: _compassEnabled,
      mapToolbarEnabled: _mapToolbarEnabled,
      cameraTargetBounds: _cameraTargetBounds,
      minMaxZoomPreference: _minMaxZoomPreference,
      mapType: _mapType,
      rotateGesturesEnabled: _rotateGesturesEnabled,
      scrollGesturesEnabled: _scrollGesturesEnabled,
      tiltGesturesEnabled: _tiltGesturesEnabled,
      zoomGesturesEnabled: _zoomGesturesEnabled,
      zoomControlsEnabled: _zoomControlsEnabled,
      indoorViewEnabled: _indoorViewEnabled,
      myLocationEnabled: _myLocationEnabled,
      myLocationButtonEnabled: _myLocationButtonEnabled,
      trafficEnabled: _myTrafficEnabled,
      onCameraMove: _updateCameraPosition,
    );

    final columnChildren = <Widget>[
      Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: SizedBox(
            width: 300,
            height: 200,
            child: googleMap,
          ),
        ),
      ),
    ];

    if (_isMapCreated) {
      columnChildren.add(
        Expanded(
          child: ListView(
            children: <Widget>[
              Text('camera bearing: ${_position.bearing}'),
              Text('''
camera target: ${_position.target.latitude.toStringAsFixed(4)}, ${_position.target.longitude.toStringAsFixed(4)}'''),
              Text('camera zoom: ${_position.zoom}'),
              Text('camera tilt: ${_position.tilt}'),
              Text(isMoving ? '(Camera moving)' : '(Camera idle)'),
              _compassToggler(),
              _mapToolbarToggler(),
              _latLngBoundsToggler(),
              _mapTypeCycler(),
              _zoomBoundsToggler(),
              _rotateToggler(),
              _scrollToggler(),
              _tiltToggler(),
              _zoomToggler(),
              _zoomControlsToggler(),
              _indoorViewToggler(),
              _myLocationToggler(),
              _myLocationButtonToggler(),
              _myTrafficToggler(),
              _nightModeToggler(),
            ],
          ),
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: columnChildren,
    );
  }

  void _updateCameraPosition(CameraPosition position) {
    setState(() {
      _position = position;
    });
  }

  void onMapCreated(GoogleMapController controller) {
    setState(() {
      _controller = controller;
      _isMapCreated = true;
    });
  }
}
