import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:spotify/product.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHome> {
  int index=0;
  final inde=PageController();
  List a = [
    "Mobile",
    "Fresh",
    "Electronics",
    "Fashion",
    "miniTV",
    "Home",
    "Deals",
    "Beauty",
    "Appliance",
    "Insurance"
  ];
  List b = [
    "img/dd.jpg",
    "img/nn.jpg",
    "img/phone.jpg",
    "img/ww.jpg",
    "img/aa.jpg",
    "img/mm.jpg",
    "img/nn.jpg",
    "img/phone.jpg",
    "img/ww.jpg",
    "img/download.jpg"
  ];
  List c=[
    "Deals of the day",
    "Deals of the day",
    "Deals of the day",
    "Deals of the day",
    "Deals of the day",
    "Deals of the day",
    "Deals of the day",
    "Deals of the day",
    "Deals of the day",
    "Deals of the day",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        toolbarHeight: 80,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Color(0xff85D9E3),Color(0xff9DE4D2)]
              )
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(1,3),
                      color: Colors.black.withOpacity(0.2)
                  )]),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                hintText: 'Search amazon.in',
                hintStyle:
                TextStyle(color: Colors.black.withOpacity(0.3)),
                prefixIcon: Icon(
                  Icons.search,size: 26,
                ),
                prefixIconColor: Colors.black,
                suffixIcon: Icon(Icons.center_focus_weak),
                suffixIconColor: Colors.black26,
                contentPadding:
                EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [Color(0xff85D9E3), Color(0xff9DE4D2)])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(Icons.location_on_outlined),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'delivering to Coimbatore 641029-Update location',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    color: Colors.white,
                    child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:22,top: 12),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(b[index]),
                                        fit: BoxFit.fill),
                                  ),
                                  // child: Center(child: Text(a[index]))
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Center(child: Text(a[index])),
                              ),
                            ],
                          );
                        }),
                  ),
                  Container(
                    width: double.infinity,
                    child: CarouselSlider.builder(
                        options: CarouselOptions(
                          height: 400,
                          aspectRatio: 8 / 9,
                          viewportFraction: 1,
                          initialPage: 4,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 2),
                          autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.3,
                          scrollDirection: Axis.horizontal,
                        ),
                        itemCount: b.length,
                        itemBuilder: (BuildContext context, int index,
                            int pageViewIndex) {
                          return Container(
                            height: 300,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(b[index]),
                                    fit: BoxFit.cover)),
                          );
                        }),
                  ),
                  DotsIndicator(dotsCount: b.length,
                  ),
                  Container(
                    height: 150,
                    child: ListView.builder(
                        itemCount: a.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(b[index]),
                                            fit: BoxFit.fill)),
                                    // child: Center(child: Text(a[index]))
                                  ),
                                  elevation: 15,
                                ),
                              ),
                              Center(child: Text(a[index])),
                            ],
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text('Deals for you',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  Container(
                    height: 180,
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: c.length,
                        gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                        itemBuilder: (BuildContext ctx, index) {
                          return Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 170,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      image: DecorationImage(
                                          image: AssetImage(b[index]),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                onTap:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>product()));
                                },
                              ),
                              Text(c[index],style: TextStyle(fontSize: 15),)
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
