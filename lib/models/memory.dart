class Memory {
  static const operations = ['%', '/', 'x', '-', '+', '='];
  String _value = '0';
  final _butter = [0.0, 0.0];
  String? operation;
  int _bufferIndex = 0;
  bool _wipeValue = false;

  void applyCommand(String command) {
    if (command == 'AC') {
      _allClear();
    } else if (operations.contains(command)) {
      _setOperation(command);
    } else {
      _addDigit(command);
    }
  }

  _setOperation(String newOperation) {
    _wipeValue = true;
  }

  _allClear() {
    _value = '0';
  }

  _addDigit(String digit) {
    final isDot = digit == '.';
    final wipeValue = (_value == '0' && !isDot) || _wipeValue;
    final emptyValue = isDot ? '0' : '';
    final currentValue = wipeValue ? emptyValue : _value;

    if (isDot && _value.contains('.') && !wipeValue) {
      return;
    }

    _value = currentValue + digit;
    _wipeValue = false;

    _butter[_bufferIndex] = double.tryParse(_value) ?? 0;
  }

  String get value {
    return _value;
  }
}
