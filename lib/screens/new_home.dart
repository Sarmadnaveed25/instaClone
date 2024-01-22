import 'package:flutter/material.dart';

import 'message_screen.dart';
import 'notification_screen.dart';

class NewHome extends StatelessWidget {
  const NewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "Instagram",
              style: TextStyle(
                  color: Colors.black,
                  fontStyle: (FontStyle.italic),
                  fontWeight: FontWeight.bold),
            ),
            Expanded(child: Container()),
            IconButton(icon: Icon(Icons.favorite_border,color: Colors.black,), onPressed: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationPage()),
            );},

            ),
            IconButton(icon: Icon(Icons.message_outlined,color: Colors.black,), onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Message()),
            );  },

            ),

          ],
        ),




      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 80,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.pink, width: 3),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                      ),
                    );
                  }),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey,
                          ),
                          title: Text("Username"),
                          subtitle: Text("2 hours ago"),
                          trailing: (Icon(Icons.more_vert)),
                        ),
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://placekitten.com/400/301'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_border)),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.mode_comment_outlined)),
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.send))
                              ]
                            ),


                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.bookmark_border))
                          ],
                        ),
                        Padding(
                            padding:EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("42 likes"),
                            Text("View all 7 comments",style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                        
                        )

                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
