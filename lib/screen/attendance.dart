import 'package:eschool/consts/color.dart';
import 'package:flutter/material.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              padding: EdgeInsets.only(bottom: 40),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                color: AppColor.bgcolor,
              ),
              height: 150,
              width: double.infinity,
              child: Text(
                'Attendance',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(color: Colors.grey, blurRadius: 1)
                  ]),
              margin: EdgeInsets.only(top: 120, left: 30),
              height: 60,
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColor.bgcolor,
                    ),
                    height: 30,
                    width: 30,
                    child: Center(
                        child: Icon(
                      Icons.arrow_back_ios_sharp,
                      color: Colors.white,
                      size: 20,
                    )),
                  ),
                  Text(
                    'June 2022',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColor.lightBlue,
                    ),
                    height: 30,
                    width: 30,
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            )
          ]),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 5,
                      spreadRadius: 0.1,
                      offset: Offset(5, 5))
                ]),
            height: 320,
            child: Column(
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 40,
                          child: Text(
                            'Sun',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColor.bgcolor),
                          )),
                      Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 40,
                          child: Text(
                            'Mon',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColor.bgcolor),
                          )),
                      Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 40,
                          child: Text(
                            'Tue',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColor.bgcolor),
                          )),
                      Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 40,
                          child: Text(
                            'Wed',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColor.bgcolor),
                          )),
                      Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 40,
                          child: Text(
                            'Thu',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColor.bgcolor),
                          )),
                      Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 40,
                          child: Text(
                            'Fri',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColor.bgcolor),
                          )),
                      Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 40,
                          child: Text(
                            'Sat',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColor.bgcolor),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '29',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '30',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '31',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '1',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '2',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '3',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '4',
                            style: TextStyle(fontSize: 16),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '5',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '6',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '7',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '8',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '9',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                      Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '10',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                      Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '11',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '12',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                      Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '13',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                      Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '14',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '15',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '16',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '17',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '18',
                            style: TextStyle(fontSize: 16),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '19',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '20',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '21',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '22',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '23',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '24',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '25',
                            style: TextStyle(fontSize: 16),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '26',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '27',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '28',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '29',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '30',
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '1',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          )),
                      Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          child: Text(
                            '2',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.green,
                ),
                height: 150,
                width: 150,
                child: Column(
                  children: [
                    Text(
                      'Total Present',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      height: 60,
                      width: 60,
                      child: Text(
                        '4',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.red,
                ),
                height: 150,
                width: 150,
                child: Column(
                  children: [
                    Text(
                      'Total Absent',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      height: 60,
                      width: 60,
                      child: Text(
                        '2',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
