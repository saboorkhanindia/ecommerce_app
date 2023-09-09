import 'package:http/http.dart';

import 'params/addproducts.dart';
export 'params/addproducts.dart';
import '../util/global_handler.dart';

Future<Response> fetchAddproductsMethod(
    {required ParamsAddproducts params, Map<String, String>? headers}) async {
  // This is the url that will be called:
  var url = "https://dummyjson.com/products/add";
  //  Requesting data from the server:
  var response = await GlobalHandler.requestPost(
      path: Uri.parse(url).replace(),
      body: params.body!.toJson(),
      headersValue: headers);

  // This is the response of the request:
  return response;
}
