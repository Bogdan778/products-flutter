import 'package:pretty_http_logger/pretty_http_logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:products_test_flutter/models/product_model.dart';

class ApiService {
  String endpoint = 'https://jsonplaceholder.typicode.com/posts';
  Future<List<ProductsModel>> getProducts() async {
    HttpWithMiddleware http = HttpWithMiddleware.build(middlewares: [
      HttpLogger(logLevel: LogLevel.BODY),
    ]);
    Response response = await http.get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List<ProductsModel> result = productsModelFromJson(response.body);
      return result;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

final apiProvider = Provider<ApiService>((ref) => ApiService());
