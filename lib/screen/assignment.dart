import 'package:eschool/consts/color.dart';
import 'package:flutter/material.dart';



class AssignmentPage extends StatefulWidget {
  const AssignmentPage({Key? key}) : super(key: key);

  @override
  State<AssignmentPage> createState() => _AssignmentPageState();
}

class _AssignmentPageState extends State<AssignmentPage> with SingleTickerProviderStateMixin{
  late TabController _tabController;


  @override
  void initState() {

    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.bgcolor,
        actions: [
          Container(
              margin: EdgeInsets.only(right: 30),
              child: Image.asset('assets/dropdown.png', height: 35, width: 35, color: Colors.white,))
        ],
        centerTitle: true,
        title: Text('Assignments'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColor.bgcolor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            height: 90,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15,left: 35),
                  height: 55,
                  width:150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white)
                  ),
                  child: Container(
                    margin: EdgeInsets.all(5),
                    // decoration: BoxDecoration(+65
                    //   border: Border.all(color: Colors.white),
                    //   borderRadius: BorderRadius.circular(8)
                    // ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          side: BorderSide(color: Colors.white)


                        ),
                        onPressed: (){},
                        child: Text('Assigned', style: TextStyle(color: Colors.black, fontSize: 15),),


                      )),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15, left: 70),
                  child: Text('Submitted',style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 40),

            child: TabBar(
              controller: _tabController,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 18),
              tabs: [
                Tab(
                  text: 'All Subjects'
                ),
                Tab(
                  text: 'English',
                ),
                Tab(
                  text: 'Maths',
                ),
                Tab(
                  text: 'Science',
                ),
              ],
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 0,
              isScrollable: true,
                indicator: BoxDecoration(
                color: AppColor.bgcolor,
                borderRadius: BorderRadius.circular(10)),
            ),
          ),

          Container(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 70, right: 20, top: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200
                  ),
                  height: 120,

                ),

                Positioned(
                  left: 20,
                  top: 40,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColor.subject5,
                    ),
                    height: 80,
                    width: 90,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset('assets/computer.png', color: Colors.white),
                    ),
                  ),
                ),

                Positioned(
                  top: 35,
                  left: 130,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Basic of computer', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                        SizedBox(height: 5,),
                        Text('Please upload only pdf', ),
                        SizedBox(height: 5,),
                        Text('Computer'),
                        SizedBox(height: 15,),
                        Text('Due 27 July 2022, 10:21 AM', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 38, right: 35),
                  alignment: Alignment.topRight,
                  child: Text('14-06-2022', style: TextStyle(fontSize: 12, color: Colors.grey.shade600),),
                ),



              ],
            ),
          ),
          Container(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 70, right: 20, top: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200
                  ),
                  height: 120,

                ),

                Positioned(
                  left: 20,
                  top: 40,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColor.subject9,
                    ),
                    height: 80,
                    width: 90,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset('assets/guitar.png', color: Colors.white),
                    ),
                  ),
                ),

                Positioned(
                  top: 35,
                  left: 130,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Music Theory', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                        SizedBox(height: 5,),
                        Text('Please upload any music audio ...', ),
                        SizedBox(height: 5,),
                        Text('Music'),
                        SizedBox(height: 15,),
                        Text('Due 27 July 2022, 10:21 AM', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 38, right: 35),
                  alignment: Alignment.topRight,
                  child: Text('14-06-2022', style: TextStyle(fontSize: 12, color: Colors.grey.shade600),),
                ),



              ],
            ),
          ),
          Container(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 70, right: 20, top: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200
                  ),
                  height: 120,


                ),

                Positioned(
                  left: 20,
                  top: 40,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColor.subject3,
                    ),
                    height: 80,
                    width: 90,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset('assets/microscope.png', color: Colors.white),
                    ),
                  ),
                ),

                Positioned(
                  top: 35,
                  left: 130,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Science paper', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                        SizedBox(height: 5,),
                        Text('Please upload any docs', ),
                        SizedBox(height: 5,),
                        Text('Science'),
                        SizedBox(height: 15,),
                        Text('Due 27 July 2022, 10:21 AM', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 38, right: 35),
                  alignment: Alignment.topRight,
                  child: Text('14-06-2022', style: TextStyle(fontSize: 12, color: Colors.grey.shade600),),
                ),



              ],
            ),
          ),
          Container(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 70, right: 20, top: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200
                  ),
                  height: 120,

                ),

                Positioned(
                  left: 20,
                  top: 40,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColor.subject2,
                    ),
                    height: 80,
                    width: 90,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset('assets/math.png', color: Colors.white),
                    ),
                  ),
                ),

                Positioned(
                  top: 35,
                  left: 130,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Science paper', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                        SizedBox(height: 5,),
                        Text('Please upload any docs', ),
                        SizedBox(height: 5,),
                        Text('Science'),
                        SizedBox(height: 15,),
                        Text('Due 27 July 2022, 10:21 AM', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 38, right: 35),
                  alignment: Alignment.topRight,
                  child: Text('14-06-2022', style: TextStyle(fontSize: 12, color: Colors.grey.shade600),),
                ),



              ],
            ),
          ),
        ],
      ),
    );
  }
}
