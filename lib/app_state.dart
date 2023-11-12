import 'package:flutter/material.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _selectedLangRus =
          prefs.getBool('ff_selectedLangRus') ?? _selectedLangRus;
    });
    _safeInit(() {
      _selectedLangTurc =
          prefs.getBool('ff_selectedLangTurc') ?? _selectedLangTurc;
    });
    _safeInit(() {
      _selectedLangEng =
          prefs.getBool('ff_selectedLangEng') ?? _selectedLangEng;
    });
    _safeInit(() {
      _pushNotifications =
          prefs.getBool('ff_pushNotifications') ?? _pushNotifications;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _activeTab = 'Активные заказы';
  String get activeTab => _activeTab;
  set activeTab(String _value) {
    _activeTab = _value;
  }

  bool _selectedLangRus = false;
  bool get selectedLangRus => _selectedLangRus;
  set selectedLangRus(bool _value) {
    _selectedLangRus = _value;
    prefs.setBool('ff_selectedLangRus', _value);
  }

  bool _selectedLangTurc = false;
  bool get selectedLangTurc => _selectedLangTurc;
  set selectedLangTurc(bool _value) {
    _selectedLangTurc = _value;
    prefs.setBool('ff_selectedLangTurc', _value);
  }

  bool _selectedLangEng = false;
  bool get selectedLangEng => _selectedLangEng;
  set selectedLangEng(bool _value) {
    _selectedLangEng = _value;
    prefs.setBool('ff_selectedLangEng', _value);
  }

  bool _searchActiveSea2 = false;
  bool get searchActiveSea2 => _searchActiveSea2;
  set searchActiveSea2(bool _value) {
    _searchActiveSea2 = _value;
  }

  bool _searchActiveSea1 = false;
  bool get searchActiveSea1 => _searchActiveSea1;
  set searchActiveSea1(bool _value) {
    _searchActiveSea1 = _value;
  }

  bool _searchActiveLand1 = false;
  bool get searchActiveLand1 => _searchActiveLand1;
  set searchActiveLand1(bool _value) {
    _searchActiveLand1 = _value;
  }

  bool _searchActiveLand2 = false;
  bool get searchActiveLand2 => _searchActiveLand2;
  set searchActiveLand2(bool _value) {
    _searchActiveLand2 = _value;
  }

  String _genCode = '666';
  String get genCode => _genCode;
  set genCode(String _value) {
    _genCode = _value;
  }

  bool _verified = false;
  bool get verified => _verified;
  set verified(bool _value) {
    _verified = _value;
  }

  bool _pushNotifications = false;
  bool get pushNotifications => _pushNotifications;
  set pushNotifications(bool _value) {
    _pushNotifications = _value;
    prefs.setBool('ff_pushNotifications', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
