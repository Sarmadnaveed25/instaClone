import 'package:flutter/material.dart';
import 'package:my_instagram/screens/search_suggestions.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 7),
            margin: EdgeInsets.only(top: 40,left: 20,right: 30,bottom: 15),
            
              height: 45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Row(
                
                children: [
                  Icon(Icons.search,size: 30,),
                  SizedBox(width: 15,),
                  Text("Search",style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20
                  ),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Check()),

          ],
        ),
      ),
    );
  }
}
