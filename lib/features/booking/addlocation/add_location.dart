import 'import.dart';

class AddLocation extends ConsumerStatefulWidget {
  const AddLocation({super.key, this.locationType = 'home'});
  final String locationType;

  @override
  ConsumerState<AddLocation> createState() => _AddLocationState();
}

class _AddLocationState extends ConsumerState<AddLocation> {
  static const int _maxLocationCount = 3;
  bool _isStopsVisible = false;
  final ValueNotifier<int> _activeLocationIndex = ValueNotifier(currentCoordinate.latitude == 0 ? 0 : 1);
  late List<Place> _pickedLocations;
  ValueNotifier<bool> isLoading = ValueNotifier(false);
  final Debouncer _debouncer = Debouncer();
  final FocusNode node = FocusNode();

  @override
  void initState() {
    super.initState();
    //(availability?.enableRide?.toString(), name: "isEnabled");
    if (availability.enableRide) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (((ModalRoute.settingsOf(context)?.arguments as Map<String, dynamic>? ?? {})["forSomeone"] as bool?) ?? false) {
          FocusScope.of(context).unfocus(); // hide the keyboard initially
          _showRiderSelectionSheet();
        }
        if (((ModalRoute.settingsOf(context)?.arguments as Map<String, dynamic>? ?? {})["schedule"] as bool?) ?? false) {
          FocusScope.of(context).unfocus(); // hide the keyboard initially
          Navigator.pushNamed(context, AppRoutes.schedule);
        }
      });
    }
  }

  @override
  void dispose() {
    _debouncer.dispose();
    _activeLocationIndex.dispose();
    isLoading.dispose();
    super.dispose();
  }

  void _handleLocationTextChanged(final String text, final int index) {
    _activeLocationIndex.value = index;
    final String trimmedText = text.trim();
    if (trimmedText == "Delete") {
      setState(() => ref.read(pickedlocationProvider.notifier).empty(index));
    } else if (trimmedText.isNotEmpty) {
      _debouncer(() => ref.read(placesProvider.notifier).fetchPlaces(trimmedText));
    }
  }

  void _toggleStops() {
    setState(() => _isStopsVisible = !_isStopsVisible);
    if (_pickedLocations.length < _maxLocationCount) {
      ref.read(pickedlocationProvider.notifier).addPlace();
    }
  }

  void _showRiderSelectionSheet() {
    showModalBottomSheet(useRootNavigator: true, useSafeArea: true, context: context, builder: (context) => const GetRiders());
  }

  Future<void> _openLocationMapScreen(final int locationIndex) async {
    final Coordinate currentLocation =
        _pickedLocations.elementAtOrNull(locationIndex)?.location ?? _pickedLocations.elementAtOrNull(0)?.location ?? currentCoordinate;
    final Place? selectedPlace = await Navigator.pushNamed(context, AppRoutes.locationOnMap, arguments: currentLocation) as Place?;

    await updatePlace(selectedPlace, index: locationIndex);
  }

  Future<void> updatePlace(Place? selectedPlace, {int? index}) async {
    if (selectedPlace != null) {
      await ref.read(pickedlocationProvider.notifier).editPlaces(selectedPlace, index ?? _activeLocationIndex.value);
      if (_activeLocationIndex.value == 0 || shouldShowStopsButton()) {
        _activeLocationIndex.value = _activeLocationIndex.value + 1;
      }
    }
  }

  bool get _isDoneButtonEnabled => _pickedLocations.where((lo) => lo.location != null).length >= 2;

  @override
  Widget build(BuildContext context) {
    if (!availability.enableRide) return const Maintain();
    _pickedLocations = ref.watch(pickedlocationProvider);
    return Scaffold(
      appBar: Types(onPressed: _showRiderSelectionSheet),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: horizontalSpacing, top: 4),
            child:
                shouldShowStopsButton()
                    ? AddStopsLocation(onTextChanged: _handleLocationTextChanged, myVoidCallback: _toggleStops)
                    : FillLocation(
                      _activeLocationIndex.value,
                      key: ValueKey(_activeLocationIndex.value),
                      onTextChanged: _handleLocationTextChanged,
                      myVoidCallback: _toggleStops,
                    ),
          ),
          CurrentLocationButton(setCurrentLocation: updatePlace),
          SetLocationOnMap(activeLocationIndex: _activeLocationIndex, pickedLocations: _pickedLocations, onPressed: _openLocationMapScreen),
          LocationSuggestion((final Place place) {
            FocusScope.of(context).unfocus();
            updatePlace(place);
          }),
        ],
      ),
      bottomNavigationBar: Done(isLoading: isLoading, isDoneButtonEnabled: _isDoneButtonEnabled, ref: ref),
    );
  }

  bool shouldShowStopsButton() => _isStopsVisible || (_pickedLocations.length > 2 && _pickedLocations[2].mainText.isNotBlank);
}
