import 'package:flutter/material.dart';
import 'package:group_118/view/screens/furniture/furniture_screen.dart';

class InstagramScreen extends StatelessWidget {
  const InstagramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: (){
                Navigator.canPop(context);
              }, icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://picsum.photos/200/300',
                    ),
                  ),
                  SizedBox(width: 12),
                  Column(
                    children: [
                      Text(
                        '865',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Posts',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 12),
                  Column(
                    children: [
                      Text(
                        '865',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 12),
                  Column(
                    children: [
                      Text(
                        '865',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Following',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FurnitureScreen(),
                        ),
                        (route) => false,
                      );
                    },
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Mahmoud Sherif',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Free Palastaian\nFlutter Developer',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      TabBar(
                        tabs: [
                          Tab(
                            icon: Icon(Icons.grid_on),
                          ),
                          Tab(
                            icon: Icon(Icons.person),
                          ),
                          Tab(
                            icon: Icon(Icons.bookmark),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            GridView.count(
                              shrinkWrap: true,
                              crossAxisCount: 3,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              children: List.generate(
                                30,
                                (index) => Image.network(
                                  'https://picsum.photos/200/${index}00',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            GridView.count(
                              shrinkWrap: true,
                              crossAxisCount: 3,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              children: List.generate(
                                30,
                                (index) => Image.network(
                                  'https://picsum.photos/200/${index}00',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            GridView.count(
                              shrinkWrap: true,
                              crossAxisCount: 3,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              children: List.generate(
                                30,
                                (index) => Image.network(
                                  'https://picsum.photos/200/${index}00',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
