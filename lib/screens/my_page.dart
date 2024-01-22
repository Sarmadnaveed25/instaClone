import 'package:flutter/material.dart';

import 'my_page_post_grid.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Row(
            children: [
             Icon(Icons.lock_outlined,color: Colors.black87,),
              SizedBox(width: 5,),
              Text("User Name",style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 18,


              ),),
              SizedBox(width: 5,),
              Icon(Icons.arrow_drop_down,color: Colors.black87,),
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_box_outlined,size: 30,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.menu,size: 30,color: Colors.black,))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 10,left: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("images/300.jpg"),
                          maxRadius:40.0,
                        ),
                        SizedBox(height: 5,),
                        Text("Name",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),)

                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(bottom: 30,left: 20),
                      child: Column(
                        children: [
                          Text("56",style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 25
                          ),),
                          Text("Posts",style: TextStyle(
                            color: Colors.black,fontSize: 18
                          ),)
                        ],
                      ),

                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(bottom: 30,left: 20),
                      child: Column(
                        children: [
                          Text("56",style: TextStyle(
                              fontWeight: FontWeight.bold,fontSize: 25
                          ),),
                          Text("Followers",style: TextStyle(
                              color: Colors.black,fontSize: 18
                          ),)
                        ],
                      ),

                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(bottom: 30,left: 20),
                      child: Column(
                        children: [
                          Text("56",style: TextStyle(
                              fontWeight: FontWeight.bold,fontSize: 25
                          ),),
                          Text("Following",style: TextStyle(
                              color: Colors.black,fontSize: 18
                          ),)
                        ],
                      ),

                    )
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20)
                      ),

                      child: Center(child: Text("@ User Name",style: TextStyle(
                        color: Colors.black,fontSize: 14
                      ),)),

                    ),
                    SizedBox(height: 5,),
                    Text("BsCs",style: TextStyle(
                        color: Colors.black,fontSize: 16)),
                    SizedBox(height: 5,),
                    Text("Uolian",style: TextStyle(
                        color: Colors.black,fontSize: 16))
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 30,
                    width: 150,
                    child: Center(
                      child: Text(
                        "Edit profil",style: TextStyle(
                          color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  Container(

                    height: 30,
                    width: 150,
                    child: Center(
                      child: Text(
                          "Share profil",style: TextStyle(
                          color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 30,
                    width: 30,
                    child: Center(
                      child: Icon(Icons.person_add_outlined)
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10,),
                padding: EdgeInsets.only(top: 20,),

                child: Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.grey.withOpacity(0.1),width: 5,style: BorderStyle.solid)
                              ),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("images/300.jpg"),
                                radius: 40,
                              ),

                            ),
                            SizedBox(height: 5,),
                            Text("Highlights",style: TextStyle(
                              fontSize: 17
                            ),)
                          ],
                        );
                      },


                      ),
                    ),



              ),
              Container(
                width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,

                  child: GridPost()),


            ],
          ),
        ),
      ),



    );
  }
}
