import 'package:flutter/material.dart';
import 'package:spotify/Botnavi.dart';

class Spotify extends StatefulWidget {
  const Spotify({Key? key}) : super(key: key);

  @override
  State<Spotify> createState() => _SpotifyState();
}

class _SpotifyState extends State<Spotify> {
  late ScrollController scrollController;
  double imageSize = 0;
  double initialSize = 240;
  bool showText = false;

  @override
  void initState() {
    imageSize = initialSize;
    scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          showText = scrollController.offset > 0;
          imageSize = initialSize - scrollController.offset;
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink,
        body: SafeArea(
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.pink, // Make the app bar transparent
                floating: true,
                pinned: true,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Botnavi()));// Handle back button press
                  },
                ),
                title: showText ? Text('Ani Songs Mix',
                    style: TextStyle(color: Colors.white)) : null,
              ),
              SliverToBoxAdapter(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
      
                            Colors.black.withOpacity(0),
                            Colors.black.withOpacity(1),
                          ])),
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10,top: 40),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.8),
                                          blurRadius: 25,
                                          spreadRadius: 10)
                                    ]),
                                child: Image(
                                  image: AssetImage('img/ani.jpg'),
                                  width: imageSize,
                                  height: imageSize,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sam C.S., Santhosh Narayanan and Vivek- Mervin',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text('Aniruth Ravichandran', style: TextStyle(color: Colors.white),),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Image(
                                          image: AssetImage('img/ani.jpg'),
                                          width: 35,
                                          height: 35,
                                        ),
                                        SizedBox(width: 10,),
                                        Text(
                                          'Made for Bhuvanesh',
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Text(
                                      '7580000 saves . 4h 6m',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(height: 10,),
                                    Stack(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.favorite_border_outlined,size: 25.5, color: Colors.white,),
                                            SizedBox(width: 10,),
                                            Icon(Icons.arrow_circle_down,size: 25, color: Colors.white,),
                                            SizedBox(width: 10,),
                                            Icon(Icons.more_vert,size: 25, color: Colors.white,),
                                            Spacer(),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 8.0),
                                              child: Icon(Icons.shuffle,size: 25, color: Colors.green,),
                                            ),
                                            Icon(Icons.play_circle,size: 50, color: Colors.green,),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index) {
                    return Container(
                      width: double.infinity,
                      color: Colors.black,
                      child: ListTile(
                        leading: Image(image: AssetImage('img/ani.jpg'),width: 50,),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Song $index', style: TextStyle(color: Colors.white)),
                                Text('Teejay,AI Rufian $index', style: TextStyle(color: Colors.white.withOpacity(0.4),fontSize: 13)),
                              ],
                            ),
                            Icon(Icons.more_vert,color: Colors.white,)
                          ],
                        ),
                        onTap: () {
                          // Handle song tap
                        },
                      ),
                    );
                  },
                  childCount: 20, // You can change this number based on your requirement
                ),
              ),
      
            ],
          ),
        ),
      ),
    );
  }
}