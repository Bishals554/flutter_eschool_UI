import 'package:eschool/screen/assignment.dart';
import 'package:eschool/screen/attendance.dart';
import 'package:eschool/screen/home_page.dart';
import 'package:eschool/screen/menu_page.dart';
import 'package:flutter/material.dart';

class AttendanceTababe extends StatefulWidget {
  @override
  _AttendanceTababeState createState() => _AttendanceTababeState();
}

class _AttendanceTababeState extends State<AttendanceTababe>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _showMenu = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    // _tabController.addListener(_handleTabSelection);
  }

  // void _handleTabSelection() {
  //   setState(() {
  //     _showMenu = _tabController.index == 2;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: IndexedStack(
              index: _tabController.previousIndex,
              children: <Widget>[
                // First tab


                 AttendancePage(),
                HomePage(),
                AssignmentPage(),


              ],
            ),
          ),
          // if (_showMenu)
          //   Positioned(
          //     bottom: 0,
          //     left: 0,
          //     right: 0,
          //     child: ClipRRect(
          //       borderRadius: BorderRadius.only(
          //         topLeft: Radius.circular(25),
          //         topRight: Radius.circular(25),
          //       ),
          //       child: Container(
          //         decoration: BoxDecoration(
          //           color: Colors.white,
          //         ),
          //         height: 500,
          //         child: MenuPage(),
          //       ),
          //     ),
          //   ),
          Positioned(
            bottom: 25,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 5)
                  ]),
              margin: EdgeInsets.only(top: 240, right: 30, left: 30),
              height: 65,
              width: double.infinity,
              child: TabBar(
                unselectedLabelColor: Colors.white,
                labelColor: Colors.black,
                padding: EdgeInsets.only(top: 6),
                indicatorColor: Colors.transparent,
                controller: _tabController,
                tabs: [
                  Tab(
                    text: 'Home',
                    icon: Icon(Icons.home_outlined,
                        color: _tabController.index == 2
                            ? Colors.green
                            : Colors.black),
                  ),
                  Tab(
                    text: 'Assignment',
                    icon: Icon(Icons.book,
                        color: _tabController.index == 1
                            ? Colors.green
                            : Colors.black),
                  ),
                  Tab(
                    text: 'Menu',
                    icon: Icon(Icons.menu,
                        color: _tabController.index == 0
                            ? Colors.green
                            : Colors.black),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
