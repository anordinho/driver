import 'package:Driver_ios/MyApp.dart';

import 'package:Driver_ios/providers/order_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => OrderProvider())],
      child: MyApp()));
}
