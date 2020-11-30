import 'dart:convert';

import 'package:Driver_ios/api/api.dart';
import 'package:flutter/cupertino.dart';
import 'package:Driver_ios/model/order';
import 'package:http/http.dart' as http;

class OrderProvider extends ChangeNotifier {
  OrderProvider() {
    fetchOrders();
  }

  // Varables
  bool _isFetchingOrderData = false;
  List<Order> _availableOrders = [];
  // List<Order> _filteredOrders = [];
  Order _selectedOrder;
  bool _isSubmittingData = false;

  // Setters

  set selectOrder(Order order) {
    _selectedOrder = order;
    notifyListeners();
  }

  // getters
  String token =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9kcml2ZXJzLnN0YWdpbmcuc3VwZXJzdG9yZS5jby50elwvYXBpXC9sb2dpbiIsImlhdCI6MTYwNjcyOTM3MywiZXhwIjoxNjM4MzUxNzczLCJuYmYiOjE2MDY3MjkzNzMsImp0aSI6ImV5Zkh4U1ZHQk1MOW1QSnUiLCJzdWIiOjkyLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.TtMguSicr8YbO5UGrTMC2Ov3yWvqYgAZxKzTLIagGWA';
  List<Order> get availableOrders => _availableOrders;
  // List<Order> get filteredOrders => _filteredOrders;
  bool get isFetchingOrderData => _isFetchingOrderData;
  Order get selectedOrder => _selectedOrder;
  bool get isSubmittingData => _isSubmittingData;

  // Fetch order
  Future<bool> fetchOrders() async {
    bool hasError = true;
    _isFetchingOrderData = true;
    notifyListeners();
    final List<Order> _fetchedOrders = [];
    try {
      final http.Response response = await http.get(api + "orders",
          headers: {
            'content-Type': 'application/json',
            'Authorization': 'Bearer $token'
          });

      final Map<String, dynamic> data = json.decode(response.body);
      print(data);
      if (response.statusCode == 200) {
        data['orders'].forEach((orderData) {
          final _order = Order.fromMap(orderData);
          _fetchedOrders.add(_order);
        });
        hasError = false;
      }
      print(_fetchedOrders);
    } catch (error) {
      print('------------============------------');
      print('error on fetching data');
      hasError = true;
    }

    _availableOrders = _fetchedOrders;
    _isFetchingOrderData = false;

// filter all

    return hasError;
  }
}
