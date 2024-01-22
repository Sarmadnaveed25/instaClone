import 'package:flutter/material.dart';

import 'add_post_options.dart';

class AddPost extends StatelessWidget {
  const AddPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(

        shape: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white70,
            width: 2
          )
        ),
        backgroundColor: Colors.white,
        elevation: 0,
       leading:IconButton(icon: Icon(Icons.close,size: 29,), onPressed: () {  },),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("New post",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),),
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward,size: 27,color: Colors.blue,))
          ],
        ),
        
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.5,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.withOpacity(0.1),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),

            height: 60,
            width:MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
              border: Border.all(style: BorderStyle.solid,color: Colors.white)
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Text("Recents",style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_downward_sharp)),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  height: 40,
                    width: 190,
                  decoration: BoxDecoration(
                      color: Colors.black87.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20)
                  ),


                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.picture_as_pdf_outlined,color: Colors.white70,)),
                        Text("SELECT MULTIPLE",style: TextStyle(color: Colors.white70,fontSize: 16),)
                      ],
                    ),
                  


                ),
                Container(
                  margin: EdgeInsets.only(left: 7,top: 3,bottom: 3),

                  decoration: BoxDecoration(
                      color: Colors.black87.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(100)
                  ),
                    
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,color: Colors.white,))),
                

              ],
            ),
          ),
          Expanded(child: AddPostOptions())
        ],
      ),

    );
  }
}
