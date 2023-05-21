import 'package:esay/screens/sign_in_worker.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../resources/assets_manager.dart';
import 'drawer_page.dart';
import 'sign_in.dart';

class SelectRole extends StatelessWidget {
  const SelectRole({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff5f5f7),
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const Text(
            'Select a Role',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),
          ),
          const SizedBox(height: 40,),

          Center(
            child: Container(
              width: MediaQuery.of(context).size.width/1.1,
              height: 150,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Looking for a specialist',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(23, 41, 54, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w900,
                              height: 1.5),
                        ),
                        Text(
                          'To place any type of order to',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w500,
                              height: 1.5),
                        ),
                        Text(
                          ' search for a performer',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w500,
                              height: 1.5),
                        ),]
                        ),
                  ),
                   const Image(
                    image: AssetImage(ImageAssets.client),
                    width: 110,
                    height: 150,
                  ),

                ],
              ),

              ).onTap((){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignIn()));

            }),
      ),
          const SizedBox(height: 20,),

          Center(
            child: Container(
              width: MediaQuery.of(context).size.width/1.1,
              height: 150,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'I want to find a job',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(23, 41, 54, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w900,
                              height: 1.5),
                        ),
                        Text(
                          'Search and execute orders',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w500,
                              height: 1.5),
                        ),
                        Text(
                          ' in your field of activity',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w500,
                              height: 1.5),
                        ),]
                        ),
                  ),
                   const Image(
                    image: AssetImage(ImageAssets.worker),
                    width: 110,
                    height: 150,
                  ),

                ],
              ),

              ).onTap((){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignInWorker()));

            }),
      ),
          const SizedBox(height: 40,),

           InkWell(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeDrawer()));

             },
             child: const Center(
               child: Text(
                'Skip and Start',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
             ),
           )

        ]
    )));
  }
}
