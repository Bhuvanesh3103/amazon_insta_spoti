import 'package:flutter/material.dart';
class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  List a=[
    'Highlight',
    'Tara',
    'Boo',
    'Need',
    'cartoon',
    'R15 v2',
    'Highlight',
    'Tara',
    'Boo',
    'Need',
    'cartoon',
    'R15 v2',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading:  Icon(Icons.arrow_back),
            title:  Text('Unique.bee_.'),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(Icons.add),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(Icons.menu),
              ),

            ],
          ),
          body: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Container(
                  child:   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('img/bhuvi.jpg'),

                          ),

                          Column(
                            children: [
                              Text('66'),
                              Text('Post')
                            ],
                          ),

                          Column(
                            children: [
                              Text('604'),
                              Text('followers')
                            ],
                          ),
                          Column(
                            children: [
                              Text('1000'),
                              Text('following')
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Bhuvanesh'),
                            Text('Public figure'),
                            Text('Engineering student'),
                            Text('Biker'),
                            Text('R15 v2 kolaru'),
                            Text('PY 01 Deadly rider'),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 57,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.black.withOpacity(0.1)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Professional dashboartd'),
                                Text('1456 accounts reached in the last 30 days',style: TextStyle(color: Colors.black.withOpacity(0.3)),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 15),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text('Edit profile'),),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(child: Text('share profile'),),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 90,
                        child: ListView.builder(
                            itemCount: 9,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(left:22,top: 12),
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage('img/bike.jpg'),
                                        radius: 28,
                                      )
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Center(child: Text(a[index])),
                                  ),
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              )
            ];
          }, body: Column(
            children: [
              TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.grid_on_sharp),
                ),
                Tab(
                  icon: Icon(Icons.people_alt_outlined),
                ),
                Tab(
                  icon: Icon(Icons.account_box_outlined),
                ),
              ]),
              Expanded(
                child: TabBarView(children: [
                  GridView.builder(
                      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 2
                      ),
                      itemCount: 30,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.black.withOpacity(0.2),
                        );
                      }
                  ),
                  GridView.builder(
                      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 2
                      ),
                      itemCount: 30,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.black.withOpacity(0.2),
                        );
                      }
                  ),
                  GridView.builder(
                      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 2
                      ),
                      itemCount: 30,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.black.withOpacity(0.2),
                        );
                      }
                  ),
                ]),
              )
            ],
          ),
          ),

        ),
      ),
    );
  }
}


