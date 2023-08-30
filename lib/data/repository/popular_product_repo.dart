import 'package:get/get.dart';
import 'package:kishan_pro/data/api/api_client.dart';

class PopularProductRepo extends GetxService{
  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async{
       return await apiClient.getData("https://www.kishan.com/api/product/list");
  }

}