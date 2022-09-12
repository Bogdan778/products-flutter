import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:products_test_flutter/ui/login/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/product_model.dart';
import '../../providers/products_data_provider.dart';

class ProductPage extends ConsumerWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    controller:
    ScrollController();
    final _data = ref.watch(productsDataProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List of product',
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Your account'),
            ),
            ElevatedButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setBool('IsLoggedIn', false);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: ((context) => LoginPage()),
                  ));
                },
                child: Text('Logout'))
          ],
        ),
      ),
      body: _data.when(
          data: (_data) {
            List<ProductsModel> productsList = _data.map((e) => e).toList();
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      controller: ScrollController(),
                      itemCount: productsList.length,
                      itemBuilder: (_, index) {
                        return Card(
                            color: Colors.orange,
                            elevation: 4,
                            child: ListTile(
                              title: Text(productsList[index].body),
                            ));
                      }),
                )
              ],
            );
          },
          error: (err, s) => Text(err.toString()),
          loading: () => const Center(
                child: CircularProgressIndicator(),
              )),
    );
  }
}
