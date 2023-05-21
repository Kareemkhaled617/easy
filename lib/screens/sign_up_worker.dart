import 'package:esay/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../component/DefualtTextform.dart';
import '../component/default_botton.dart';
import '../resources/assets_manager.dart';
import 'select_role.dart';

class SignUpWorker extends StatelessWidget {
  SignUpWorker({Key? key}) : super(key: key);
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController type = TextEditingController();
  @override
  Widget build(BuildContext context) {


    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xfff5f5f7),

          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                  const Image(
                    image: AssetImage(ImageAssets.logo),
                    width: 150,
                    height: 150,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Montserrat',

                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Continue with',
                      style: TextStyle(
                        fontFamily: 'Montserrat',

                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 120,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.blueAccent,
                            shape: BoxShape.rectangle),
                        child:
                        const Icon(FontAwesome.facebook, color: Colors.white),
                      ),
                      Container(
                        height: 60,
                        width: 120,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.grey,
                            shape: BoxShape.rectangle),
                        child: const Icon(MaterialCommunityIcons.google,
                            color: Colors.white),
                      ),
                      Container(
                        height: 60,
                        width: 120,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.black,
                            shape: BoxShape.rectangle),
                        child: const Icon(MaterialCommunityIcons.apple,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(borderRadius:BorderRadiusDirectional.circular(16) ,color: Colors.grey),
                            height: 2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "OR",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(borderRadius:BorderRadiusDirectional.circular(16) ,color: Colors.grey),
                            height: 2,
                          ),
                        ),
                      ],
                    ),
                  ),              const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'From Email',
                      style: TextStyle(
                        fontFamily: 'Montserrat',

                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DefaultTextForm(
                          hint: 'Name',
                          onTap: () {},
                          icon:const Icon(Icons.person),
                          controller: name,
                          type: TextInputType.text,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        DefaultTextForm(
                          hint: 'email',
                          icon:const Icon(Icons.email),
                          onTap: () {},
                          controller: email,
                          type: TextInputType.emailAddress,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        DefaultTextForm(
                          hint: 'Password',
                          icon:const Icon(Icons.lock),

                          onTap: () {},
                          controller: password,
                          type: TextInputType.text,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        DefaultTextForm(
                          hint: 'Category',
                          icon:const Icon(Icons.type_specimen_outlined),

                          onTap: () {},
                          controller: type,
                          type: TextInputType.text,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DefaultButton(
                      title: 'Sign Up',
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()));

                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontFamily: 'Montserrat',

                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
