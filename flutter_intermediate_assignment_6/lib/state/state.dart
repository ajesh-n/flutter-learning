class GlobalState {
  final Map<String, dynamic> _state = {};
  static GlobalState instance = GlobalState._();

  GlobalState._();

  void set(String key, dynamic value) {
    _state[key] = value;
  }

  dynamic get(String key) {
    return _state[key];
  }
}
