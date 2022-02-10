import 'package:http/http.dart' as http;
import 'dart:convert';

Future<http.Response> fetchProducts() async {
  final response = await http.get(
      Uri.parse('https://poonolilsilks.com/wp-json/wp/v2/posts?_embed'),
      headers: {"Accept": "application/json"});
  
  var convertDatatoJson = jsonDecode(response.body)[0]; 
    print('$convertDatatoJson..');
  return convertDatatoJson;

}

// Future fetchProducts()async{
//    print('start');
//   var url =
//       Uri.https('poonolilsilks.com', '/wp-json/wp/v2/posts', {'q': '{https}'});
//  print('start2');
//   // Await the http get response, then decode the json-formatted response.
//   http.Response response = await http.get(url,headers:{"Content-Type":"application/json"});
//    print('start3');
//   if (response.statusCode == 200) {
//     var jsonResponse =
//         convert.jsonDecode(response.body) as Map<dynamic, dynamic>;
//     var itemCount = jsonResponse['totalItems'];
//     print('Number of books about http: $itemCount.');
//   } else {
//     print('Request failed with status: ${response.statusCode}.');
//   }
// }