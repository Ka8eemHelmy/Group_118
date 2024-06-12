import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blueAccent,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPa6dCFx7VdGJ-BAYkp7FHaOgZ2TN8vwhMCFbdjotBig&s',
                      ),
                      radius: 35,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sarah ABS kjhkjh jkh jk hkjh jkh kjhjkh jkh jkh jkh kj kjah dfkjahskjdh akjsdh jkashdkj ashkdj haksjdh ajksdh kjashd kjhaskjdh ajksd hkjashdkj ashd jkhaskjdh akjsdh kjasd kjashdkj ashd',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            // maxLines: 2,
                          ),
                          Text(
                            'sarah@gmail.com',
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: CircleAvatar(
                        backgroundColor: Colors.grey[600]!.withOpacity(0.4),
                        child: Icon(
                          Icons.chat,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                ListTile(
                  onTap: (){},
                  leading: Icon(Icons.person,),
                  trailing: Icon(Icons.arrow_forward_ios,),
                  title: Text('People',),
                  subtitle: Text('example'),
                ),
                Divider(
                  height: 100,
                  thickness: 5,
                  indent: 12,
                  endIndent: 12,
                ),
                ListTile(
                  onTap: (){},
                  leading: Icon(Icons.person,),
                  trailing: Icon(Icons.arrow_forward_ios,),
                  title: Text('People',),
                  subtitle: Text('example'),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.bookmark,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Row(
                  children: [
                    SizedBox(
                      width: 250,
                      child: Stack(
                        fit: StackFit.passthrough,
                        clipBehavior: Clip.none,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPa6dCFx7VdGJ-BAYkp7FHaOgZ2TN8vwhMCFbdjotBig&s',
                              width: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                          PositionedDirectional(
                            top: -20,
                            end: -15,
                            child: Icon(
                              Icons.account_balance,
                              size: 50,
                            ),
                          ),
                          Icon(
                            Icons.add,
                            size: 50,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 12,
                      height: 12,
                    ),
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPa6dCFx7VdGJ-BAYkp7FHaOgZ2TN8vwhMCFbdjotBig&s',
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPa6dCFx7VdGJ-BAYkp7FHaOgZ2TN8vwhMCFbdjotBig&s',
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPa6dCFx7VdGJ-BAYkp7FHaOgZ2TN8vwhMCFbdjotBig&s',
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPa6dCFx7VdGJ-BAYkp7FHaOgZ2TN8vwhMCFbdjotBig&s',
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.red,
                          height: 50,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.orange,
                          height: 50,
                        ),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      print('asd');
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.blueAccent.withOpacity(0.2),
                          width: 10,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                        gradient: LinearGradient(
                            colors: [
                              Colors.purpleAccent,
                              Colors.blueAccent,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight),
                      ),
                      child: Text(
                        'Title of This New',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec odio nec urna fermentum aliquam. Donec auctor, nunc nec Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec odio nec urna fermentum aliquam. Donec auctor, nunc nec Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec odio nec urna fermentum aliquam. Donec auctor, nunc nec Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec odio nec urna fermentum aliquam. Donec auctor, nunc nec',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec odio nec urna fermentum aliquam. Donec auctor, nunc nec Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec odio nec urna fermentum aliquam. Donec auctor, nunc nec Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec odio nec urna fermentum aliquam. Donec auctor, nunc nec Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec odio nec urna fermentum aliquam. Donec auctor, nunc nec',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
