import 'package:eschool/consts/color.dart';
import 'package:flutter/material.dart';




class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey.shade300, width: 2))
            ),
            margin: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 37.2,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 36,
                    backgroundImage: AssetImage('assets/boy.jpg'),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 25),
                      child: Text(
                        'Divy M. Jani',
                        style: TextStyle(color: Colors.black, fontSize: 19),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 25),
                      child: Text(
                        'Class : 9 A  |  RollNo : 13',
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 35, left: 77),
                  child: Icon(Icons.arrow_forward_ios_sharp),
                )
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: AppColor.menuColor,),
                    height: 75,
                    width: 75,
                    child: Icon(Icons.calendar_month, size: 45, color: AppColor.menuIconColor,),


                  ),
                  SizedBox(height: 10,),
                  Text('Attendance', style: TextStyle(fontSize: 17),)
                ],
              ),
              Column(
                children: [
                  Container(

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: AppColor.menuColor,),
                    height: 75,
                    width: 75,
                    child: Icon(Icons.lock_clock, size: 45, color: AppColor.menuIconColor,),


                  ),
                  SizedBox(height: 10,),
                  Text('Attendance', style: TextStyle(fontSize: 17),)
                ],
              ),
              Column(
                children: [
                  Container(

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: AppColor.menuColor,),
                    height: 75,
                    width: 75,
                    child: Icon(Icons.developer_board, size: 45, color: AppColor.menuIconColor,),



                  ),
                  SizedBox(height: 10,),
                  Text('Attendance', style: TextStyle(fontSize: 17),)
                ],
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(

                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: AppColor.menuColor,),
                      height: 75,
                      width: 75,
                      child: Icon(Icons.person, size: 45, color: AppColor.menuIconColor,),



                    ),
                    SizedBox(height: 10,),
                    Text('Attendance', style: TextStyle(fontSize: 17),)
                  ],
                ),
                Column(
                  children: [
                    Container(

                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: AppColor.menuColor,),
                      height: 75,
                      width: 75,
                      child: Icon(Icons.holiday_village, size: 45, color: AppColor.menuIconColor,),



                    ),
                    SizedBox(height: 10,),
                    Text('Attendance', style: TextStyle(fontSize: 17),)
                  ],

                ),
                Column(
                  children: [
                    Container(

                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: AppColor.menuColor,),
                      height: 75,
                      width: 75,
                      child: Icon(Icons.settings, size: 45, color: AppColor.menuIconColor,),



                    ),
                    SizedBox(height: 10,),
                    Text('Attendance', style: TextStyle(fontSize: 17),)
                  ],
                ),
              ],
            ),
          )
        ],
      ),

    );
  }
}
