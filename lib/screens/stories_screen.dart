import 'package:flutter/material.dart';

class StoriesScreen extends StatelessWidget {
  const StoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
              Container(


                height: 130.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder:(context,index){
                    return Padding(padding:const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 40.0,
                        backgroundColor: Colors.black,

                      ),

                    );
                  } ,
                ),
              )
          ],

      ),
    );
  }
}
