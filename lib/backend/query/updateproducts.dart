import 'package:http/http.dart';

import 'params/updateproducts.dart';
export 'params/updateproducts.dart';
import '../util/global_handler.dart';

Future<Response> fetchUpdateproductsMethod(
    {required ParamsUpdateproducts params,
    Map<String, String>? headers}) async {
  // This is the url that will be called:
  var url = "https://dummyjson.com/products/1";
  //  Requesting data from the server:
  var response = await GlobalHandler.requestPut(
      path: Uri.parse(url).replace(),
      body: params.body!.toJson(),
      headersValue: headers);

  // This is the response of the request:
  return response;
}
