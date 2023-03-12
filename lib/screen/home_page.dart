import 'package:carousel_slider/carousel_slider.dart';
import 'package:eschool/consts/color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  int currentSlide = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColor.bgcolor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              height: 210,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 70),
                    child: CircleAvatar(
                      radius: 37,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 36,
                        backgroundColor: AppColor.bgcolor,
                        child: CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage('assets/boy.jpg'),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 130, left: 20),
                        child: Text(
                          'Divy M. Jani',
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 5),
                        child: Text(
                          'Class : 9 A  |  RollNo : 13',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: 190,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentSlide = index;
                    });
                  }),
              items: [1, 2,3,4].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColor.slideColor,
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                              top: 70,
                              left: 15,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Exam Date',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Your exam start date is',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    '02, Mar, 2020',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )),
                          Container(
                              margin: EdgeInsets.only(right: 20),
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                'assets/slide_image.png',
                                height: 160,
                              ))
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [0, 1, 2, 3].map((index) {
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentSlide == index ? Colors.blue : Colors.grey,
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 10,),

            Container(
                margin: EdgeInsets.symmetric(horizontal: 35),
                child: Text('My Subjects', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),


            Stack(
              children: [
                Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: AppColor.subject1,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                            height: 90,
                            width: 90,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/english.png',color: Colors.white,),
                            ),

                          ),
                          SizedBox(height: 4,),
                          Text('English')
                        ],
                      ),

                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: AppColor.subject2,
                                borderRadius: BorderRadius.circular(15)
                            ),
                             margin: EdgeInsets.only(top: 30,),
                            height: 90,
                            width: 90,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Image.asset('assets/math.png', color: Colors.white,),
                            ),

                          ),

                          SizedBox(height: 4,),
                          Text('Maths')
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: AppColor.subject3,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                            height: 90,
                            width: 90,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.asset('assets/microscope.png',color: Colors.white,),
                            ),

                          ),
                          SizedBox(height: 4,),
                          Text('Science')
                        ],
                      )

                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: AppColor.subject4,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            margin: EdgeInsets.only(top: 10, right: 30, left: 30),
                            height: 90,
                            width: 90,
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Image.asset('assets/accounting.png', color: Colors.white,),
                            ),

                          ),
                          SizedBox(height: 4,),
                          Text('Account')
                        ],
                      ),

                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: AppColor.subject5,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            margin: EdgeInsets.only(top: 10),
                            height: 90,
                            width: 90,
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Image.asset('assets/computer.png',color: Colors.white,),
                            ),

                          ),
                          SizedBox(height: 4,),
                          Text('Computer')
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: AppColor.subject6,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                            height: 90,
                            width: 90,
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Image.asset('assets/geo.png', color: Colors.white,),
                            ),

                          ),
                          SizedBox(height: 4,),
                          Text('Geometric')
                        ],
                      )

                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColor.subject7,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 30 ,vertical: 30),
                        height: 90,
                        width: 90,

                      ),

                      Container(
                        decoration: BoxDecoration(
                            color: AppColor.subject8,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        // margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                        height: 90,
                        width: 90,

                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColor.subject9,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                        height: 90,
                        width: 90,

                      )

                    ],
                  )


                ],
              ),
            ])







          ],
        ),
      ),
    );
  }
}
