
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'amazon.dart';
class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  List d=[
    'img/watch.jpg',
    'img/wat.jpg',
  ];
  final List<String> items = ['1', '2', '3','4',];
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
            padding: const EdgeInsets.only(top:8.0),
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
          leading: IconButton(icon: Icon(Icons.arrow_back_outlined),onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHome()));
          },)
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Brand:LOUIS DEVIN'),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 20,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('2472',style: TextStyle(fontSize: 18),),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text('LOUIS DEVIN Silicone Strap Analog Wrist Watch for Men Black/Blue/Red | LD-BK054'),
            ),
            Container(
              width: double.infinity,
              child: Stack(
                children: [ CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 417,
                      aspectRatio: 8 / 9,
                      viewportFraction: 1,
                      initialPage: 4,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: false,
                      autoPlayInterval: const Duration(seconds: 2),
                      autoPlayAnimationDuration:
                      const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                    ),
                    itemCount: d.length,
                    itemBuilder: (BuildContext context, int index,
                        int pageViewIndex) {
                      return Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(d[index]),fit: BoxFit.cover
                          ),),
                      );
                    }),
                  Padding(
                    padding: const EdgeInsets.only(left: 360.0),
                    child: IconButton(onPressed: () {},
                      icon: Icon(Icons.share_outlined),
                      color: Colors.black38,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 380.0),
                    child: IconButton(onPressed: () {},
                        color: Colors.black38,
                        icon: Icon(Icons.favorite_border)),
                  ),

                ],
              ),
              decoration: BoxDecoration(
                color: Colors.cyan.shade50,
              ),
            ),
            Center(child: DotsIndicator(dotsCount: d.length)),
            Center(child: Text('2k+bought in past month')),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 7),
              child: Container(
                width: 80,
                height: 24,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))
                    ),
                    onPressed: (){}, child: Text('Deal',
                  style: TextStyle(color: Colors.white,fontSize: 13),)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [

                      Text('-82%',style: TextStyle(color: Colors.grey,fontSize: 20),),
                      Text('\u{20B9}'),
                      Text('389',style: TextStyle(color: Colors.black,fontSize: 20),),
                    ],
                  ),
                  Row(
                    children: [
                      Text('M.R.P.:',style: TextStyle(color: Colors.grey,fontSize: 12),),
                      Text('2,199',style: TextStyle(
                          decoration: TextDecoration.lineThrough,color: Colors.grey,fontSize: 12),)
                    ],
                  ),
                  Text('Inclusive of all taxes'),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text('Total:389',style: TextStyle(color: Colors.black),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 13),
                      children: const <TextSpan>[
                        TextSpan(text: 'FREE delivery',
                            style: TextStyle(color: Colors.lightBlue)),
                        TextSpan(text: ' Monday, 12 February',style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'on orders dispatched by Amazon over 499.'),
                        TextSpan(text: 'Details',style: TextStyle(color: Colors.blue))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 13),
                        children: const <TextSpan>[
                          TextSpan(text: 'Or fastest delivery',
                          ),
                          TextSpan(text: ' Tomorrow,11 February.',style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: 'Order within'),
                          TextSpan(text: '8 hrs 49 mins.',style: TextStyle(color: Colors.green)),
                          TextSpan(text: 'Details',style: TextStyle(color: Colors.blue))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0,left: 10),
              child: Text('In stock',style: TextStyle(color: Colors.green,fontSize: 17),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10.0,top: 6),
              child: Container(
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white70,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  border: Border.all(color: Colors.grey),
                ),
                child: DropdownButton(
                  value: items[0],
                  items: items.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Qty:",style: TextStyle(fontSize: 15),),
                      ),
                    );
                  }).toList(),
                  underline: Container(), onChanged: (String? value) {  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                width: 390,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellowAccent,
                    ),
                    onPressed: (){},
                    child: Text('Add to Cart',style: TextStyle(color: Colors.black),)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                width: 390,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    onPressed: (){},
                    child: Text('Buy Now',style: TextStyle(color: Colors.black),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
