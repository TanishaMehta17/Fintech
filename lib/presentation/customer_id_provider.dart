import 'package:flutter/material.dart';

class CustomerIdProvider extends ChangeNotifier {
  String? _customerId;

  String? get customerId => _customerId;

  void setCustomerId(String customerId) {
    _customerId = customerId;
    notifyListeners();
  }
}
