import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/ecommerce.dart';

class CallBackProvider {
  late BuildContext? context;

  /// init method
  ///  [config] is required to get callback from phonepe gateway app to your app after payment is done or failed or cancelled by user or by phonepe gateway app itself due to some error or any other reason
  void init({required BuildContext value}) {
    context = value;
  }

  // instance of this class
  static final CallBackProvider _instance = CallBackProvider();

  // getter of this class
  /// [instance] is used to get instance of this class
  static CallBackProvider get instance => _instance;

  // get Provider of this class
  // [provider] is used to get provider of this class
  // [listen] is used to listen changes in provider
  EcommerceProvider get ecommerceProviderWithoutListener =>
      Provider.of<EcommerceProvider>(context!, listen: false);
  EcommerceProvider get ecommerceProviderListener =>
      Provider.of<EcommerceProvider>(context!, listen: true);
}

/// Path: lib/util/provider_callback.dart
/// initlize this class in your main.dart file
/// CallBackProvider.instance.init(value: context);
///

/// Path: lib/util/provider_callback.dart
/// use this class in your main.dart file
/// CallBackProvider.instance.CrudExpressCopyProviderWithoutListener;
/// CallBackProvider.instance.CrudExpressCopyProviderListener;
