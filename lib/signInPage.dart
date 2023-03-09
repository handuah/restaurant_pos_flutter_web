import 'package:flutter/material.dart';
import 'package:restaurant_pos_flutter_web/Styles/style.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height,
            width: size.width / 2,
            color: orangish,
          ),
          Container(
            height: size.height,
            width: size.width / 2,
            color: grayish,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.1,
                  horizontal: size.width * 0.04,
                ),
                child: SizedBox(
                  width: size.width * 0.3,
                  height: size.height * 0.6,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    elevation: 2.0,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.04,
                        horizontal: size.width * 0.02,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sign In',
                            style: blackText.copyWith(
                              fontSize: 30.0,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          Form(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Email',
                                  style: blackText.copyWith(
                                    fontSize: 14.0,
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                TextFormField(
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: 'Enter your Email',
                                    hintStyle: boldText.copyWith(
                                      color: blackish.withOpacity(0.8),
                                      fontSize: 12.0,
                                    ),
                                    border: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                      borderSide: BorderSide.none,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: orangish,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    filled: true,
                                    fillColor: grayish,
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                Text(
                                  'Password',
                                  style: blackText.copyWith(
                                    fontSize: 14.0,
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                TextFormField(
                                  textInputAction: TextInputAction.done,
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  obscuringCharacter: '*',
                                  decoration: InputDecoration(
                                    hintText: 'Enter your Password',
                                    hintStyle: boldText.copyWith(
                                      color: blackish.withOpacity(0.8),
                                      fontSize: 12.0,
                                    ),
                                    border: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                      borderSide: BorderSide.none,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: orangish,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    filled: true,
                                    fillColor: grayish,
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Forgot Password?',
                                        style: blackText.copyWith(
                                          fontSize: 14.0,
                                          color: orangish,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                SizedBox(
                                  height: size.height * 0.06,
                                  width: size.width,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: orangish,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                    ),
                                    child: Text(
                                      'Sign In',
                                      style: blackText.copyWith(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Don\'t have an account? ',
                                      style: boldText.copyWith(
                                        fontSize: 14.0,
                                        color: blackish.withOpacity(0.5),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Sign Up',
                                        style: blackText.copyWith(
                                          fontSize: 14.0,
                                          color: orangish,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
