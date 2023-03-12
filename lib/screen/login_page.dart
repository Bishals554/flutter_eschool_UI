import 'package:eschool/consts/color.dart';
import 'package:flutter/material.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgcolor,
      body: Column(
        children: [
          Container(
            height: 450,
            width: double.infinity,
            color: AppColor.bgcolor,
            child: Image.asset('assets/logo.jpg'),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
                color: Colors.white,
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 80,),
                  Text('eSchool', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),),
                  SizedBox(height: 10,),
                  Text('eSchool Serves You Virtual Education', style: TextStyle(fontSize: 17),),
                  SizedBox(height: 5,),
                  Text('At Your Home',style: TextStyle(fontSize: 17)),
                  SizedBox(height: 15,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(285, 50),
                      elevation: 0,
                      backgroundColor: AppColor.buttonColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    ),
                      onPressed: (){},
                      child: Text('Login as student', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),)
                  ),
                  SizedBox(height: 15,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      side: BorderSide(
                        width: 1,
                        color: AppColor.bgcolor
                      ),
                      minimumSize: Size(285, 50),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    ),
                      onPressed: (){},
                      child: Text('Login as Parent', style: TextStyle(color: AppColor.bgcolor,fontSize: 18, fontWeight: FontWeight.w400),)
                  )
                ],
              ),
            ),
          )
        ],
      )


    );
  }
}
