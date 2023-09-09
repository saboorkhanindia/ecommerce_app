import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/ecommerce.dart';

class ProviderApp extends StatelessWidget {
  final Widget child;
  const ProviderApp({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<EcommerceProvider>(
          create: (_) => EcommerceProvider()),
    ], child: child);
  }
}
