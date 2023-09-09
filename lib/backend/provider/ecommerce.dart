import 'dart:convert';

import 'package:flutter/material.dart';
import '../model/fetchproducts.dart';
import '../query/fetchproducts.dart';
import '../model/addproducts.dart';
import '../query/addproducts.dart';
import '../model/updateproducts.dart';
import '../query/updateproducts.dart';
import '../model/getproduct.dart';
import '../query/getproduct.dart';

class EcommerceProvider extends ChangeNotifier {
  FetchproductsModel? fetchproductsModel;
  AddproductsModel? addproductsModel;
  UpdateproductsModel? updateproductsModel;
  GetproductModel? getproductModel;

  Future<FetchproductsModel?> fetchproducts() async {
    try {
      var response = await fetchFetchproductsMethod();
      if (response.statusCode == 200) {
        fetchproductsModel =
            FetchproductsModel.fromJson(json.decode(response.body));
        notifyListeners();
        var result = FetchproductsModel.fromJson(json.decode(response.body));
        return result;
      } else {
        // throw Exception('Failed to load data');
        // handling error
        fetchproductsModel =
            FetchproductsModel.fromJson(json.decode(response.body));
        notifyListeners();

        var result = FetchproductsModel.fromJson(json.decode(response.body));
        return result;
      }
    } catch (e) {
      if (e is String) {
        throw Exception(e);
      } else {
        throw Exception(e.toString());
      }
    }
  }

  Future<AddproductsModel?> addproducts(
      {required ParamsAddproducts params, Map<String, String>? headers}) async {
    try {
      var response =
          await fetchAddproductsMethod(params: params, headers: headers);
      if (response.statusCode == 200) {
        addproductsModel =
            AddproductsModel.fromJson(json.decode(response.body));
        notifyListeners();
        var result = AddproductsModel.fromJson(json.decode(response.body));
        return result;
      } else {
        // throw Exception('Failed to load data');
        // handling error
        addproductsModel =
            AddproductsModel.fromJson(json.decode(response.body));
        notifyListeners();

        var result = AddproductsModel.fromJson(json.decode(response.body));
        return result;
      }
    } catch (e) {
      if (e is String) {
        throw Exception(e);
      } else {
        throw Exception(e.toString());
      }
    }
  }

  Future<UpdateproductsModel?> updateproducts(
      {required ParamsUpdateproducts params,
      Map<String, String>? headers}) async {
    try {
      var response =
          await fetchUpdateproductsMethod(params: params, headers: headers);
      if (response.statusCode == 200) {
        updateproductsModel =
            UpdateproductsModel.fromJson(json.decode(response.body));
        notifyListeners();
        var result = UpdateproductsModel.fromJson(json.decode(response.body));
        return result;
      } else {
        // throw Exception('Failed to load data');
        // handling error
        updateproductsModel =
            UpdateproductsModel.fromJson(json.decode(response.body));
        notifyListeners();

        var result = UpdateproductsModel.fromJson(json.decode(response.body));
        return result;
      }
    } catch (e) {
      if (e is String) {
        throw Exception(e);
      } else {
        throw Exception(e.toString());
      }
    }
  }

  Future<GetproductModel?> getproduct() async {
    try {
      var response = await fetchGetproductMethod();
      if (response.statusCode == 200) {
        getproductModel = GetproductModel.fromJson(json.decode(response.body));
        notifyListeners();
        var result = GetproductModel.fromJson(json.decode(response.body));
        return result;
      } else {
        // throw Exception('Failed to load data');
        // handling error
        getproductModel = GetproductModel.fromJson(json.decode(response.body));
        notifyListeners();

        var result = GetproductModel.fromJson(json.decode(response.body));
        return result;
      }
    } catch (e) {
      if (e is String) {
        throw Exception(e);
      } else {
        throw Exception(e.toString());
      }
    }
  }
}
