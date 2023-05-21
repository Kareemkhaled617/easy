import 'package:esay/screens/sign_up_worker.dart';
import 'package:flutter/material.dart';

import '../component/default_botton.dart';
import '../resources/assets_manager.dart';
import 'sign_up.dart';

class SignInWorker extends StatelessWidget {
  const SignInWorker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xfff5f5f7),

          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                  SizedBox(height: MediaQuery.of(context).size.height/7,),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage(ImageAssets.backSignIn),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/15,),

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontFamily: 'Montserrat',

                        fontWeight: FontWeight.w900,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/140,),

                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'To use all the available functionality of',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Montserrat',

                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'the application, you need to log in',
                      style: TextStyle(
                        fontFamily: 'Montserrat',

                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/25,),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DefaultButton(
                      title: 'Sign In',
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpWorker()));

                      },
                    ),
                  ),

                ],
              ),
            ),
          ),
        ));
  }
}
