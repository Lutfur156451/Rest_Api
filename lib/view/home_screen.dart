import 'package:api/util/http_helper.dart';
import 'package:flutter/material.dart';

import '../util/model.dart';
class Home_page extends StatefulWidget {

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
 List<Post>?posts;

 bool isLoaded=false;

 getData()async{
   posts = await postHelper().getPost();
   setState(() {
     isLoaded =true;
   });



 }

  @override
  Widget build(BuildContext context) {
   getData();


    return Scaffold(

      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: posts?.length??0,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                title: Text(posts![index].title),
              ),
            );
          },
        ),
      )
    );
  }
}
