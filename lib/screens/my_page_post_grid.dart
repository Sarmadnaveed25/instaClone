import 'package:flutter/material.dart';

class GridPost extends StatelessWidget {
  const GridPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding:EdgeInsets.only(top: 30),
            child:
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.grid_on)),
                IconButton(onPressed: (){}, icon: Icon(Icons.video_library_outlined)),
                IconButton(onPressed: (){}, icon: Icon(Icons.person_pin_sharp)),
              ],
            ),



          ),
          SizedBox(height: 3,),
          Container(
            height: MediaQuery.of(context).size.height-81,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
              child: Row(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                      itemCount: 56,
                      itemBuilder: (BuildContext context, int index) {
                      return Container(
                       decoration: BoxDecoration(
                        // color: Colors.pink,
                         image: DecorationImage(
                           image: AssetImage("images/300.jpg"),
                           fit: BoxFit.cover
                         )
                       ),


                      );
                    },),
                  ),
                    SizedBox(width: 1,),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                      itemCount: 25,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                            // color: Colors.pink,
                              image: DecorationImage(
                                  image: AssetImage("images/301.jpg"),
                                  fit: BoxFit.cover
                              )
                          ),
                        );
                      },),
                  ),
                  SizedBox(width: 1,),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                      itemCount: 20,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                            // color: Colors.pink,
                              image: DecorationImage(
                                  image: AssetImage("images/302.jpg"),
                                  fit: BoxFit.cover
                              )
                          ),
                        );
                      },),
                  )
                ],
              ),

            ),
          )
        ],
        ),

        
      );

  }
}
