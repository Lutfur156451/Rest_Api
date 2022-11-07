import 'model.dart';
import 'package:http/http.dart'as http;

class postHelper{


 Future<List<Post>?> getPost()async{
 var response= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
 if(response.statusCode==200){
 var json=response.body;
 return postFromJson(json);

 }

 }


}