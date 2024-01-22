import 'package:flutter/material.dart';

class ReelPage extends StatelessWidget {
  ReelPage({super.key, });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(
        itemCount: 5,
        itemBuilder: (context, int index) {
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://placekitten.com/401/361"),
                    fit: BoxFit.fill
                  ),

                    color: Colors.grey,
                  border: Border.all(color: Colors.white,width: 1)
                ),


                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,

              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Reels",style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25
                    ),),
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_downward,color: Colors.white)),
                    SizedBox(width:MediaQuery.of(context).size.width*0.55),
                    IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,color: Colors.white))
                  ],
                ),

              ),
             Positioned(
               top: 560,
               left: 15,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.pink,width: 3)
                        ),
                        child: CircleAvatar(),
                      ),
                      SizedBox(width: 7,),
                      Text("User Name",style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.bold,
                        fontSize: 16,

                      ),),
                      SizedBox(width: 7,),
                      Container(
                        height: 35,
                        width: 80,
                        child: Center(child: Text("Follow",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white,width: 1,

                          )
                        ),
                      )
                    ],
                  ),
                   SizedBox(height: 10,),
                   Text("Caption............",style: TextStyle(
                     color: Colors.white,fontSize: 16
                   ),)
                 ],
               ),
             ),
              Positioned(
                  top: 370,
                  right: 5,
                  child: Column(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined, color: Colors.white,)),
                  Text("25K",style:TextStyle(
                    color: Colors.white,fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 5,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.mode_comment_outlined, color: Colors.white,)),
                  Text("28",style:TextStyle(
                      color: Colors.white,fontSize: 14,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 5,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.send_outlined, color: Colors.white,)),
                  Text("1342",style:TextStyle(
                      color: Colors.white,fontSize: 14,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 5,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: Colors.white,)),
                  SizedBox(height: 5,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.square_outlined, color: Colors.white,)),
                ],
              ))
            ],


          );
        },

      ),

    );
  }
}
