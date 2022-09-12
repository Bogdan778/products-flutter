import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:products_test_flutter/models/product_model.dart';
import 'package:products_test_flutter/services/product_service.dart';

final productsDataProvider = FutureProvider<List<ProductsModel>>((ref) async {
  return ref.read(apiProvider).getProducts();
});
