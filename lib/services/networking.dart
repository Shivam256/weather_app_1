import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper{

  final String url;

  NetworkHelper({required this.url});

  Future getData()async{
    print("i am atleast here");

    Response res = await get(Uri.parse(url));
    if(res.statusCode == 200){
      print(res.body);

      var decodedData = jsonDecode(res.body);
      return decodedData;

    }else{
      print(res.statusCode);
    }
  }
}