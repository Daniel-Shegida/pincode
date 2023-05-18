import 'dart:async';

class PinCodeKeyBoardModel {
  final int pinCodeAmount;
  final List<int> _pinCodeSmsList = [];

  final StreamController<List<int>> _streamController =
      StreamController<List<int>>();

  Stream<List<int>> get pinCodeUpdates => _streamController.stream;

  PinCodeKeyBoardModel({
    required this.pinCodeAmount,
  });

  /// обработка попытки добавления нового значения пинкода
  void addPinCodeNumber(int number) {
    if (_pinCodeSmsList.length < 4) {
      _pinCodeSmsList.add(number);
      _streamController.add(_pinCodeSmsList);
    }
  }

  /// обработка попытки удаления значения пинкода
  void deletePinCodeNumber() {
    if (_pinCodeSmsList.isNotEmpty) {
      _pinCodeSmsList.removeLast();
      _streamController.add(_pinCodeSmsList);
    }
  }
}
