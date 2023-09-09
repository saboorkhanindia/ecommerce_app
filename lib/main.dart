import 'package:ecommerce_app/backend/provider/ecommerce.dart';
import 'package:ecommerce_app/backend/util/provider.dart';
import 'package:ecommerce_app/display_product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ProviderApp(
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: Provider.of<EcommerceProvider>(context, listen: false).fetchproducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.products!.length,
                  itemBuilder: (context, index) {
                    return DisplayProduct(product:snapshot.data!.products![index]);
                  });
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
