import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../utils/size/app_size.dart';
import '../home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _init() async {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomeScreen();
            },
          ),
        );
      },
    );
  }

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: const Color(0xFF0C0F14),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/splash_img.png",
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                        height: 560.getH(),
                      ),
                      SizedBox(height: 15.getH()),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 28 * width / 428),
                        child: Expanded(
                          child: Text(
                            "FIND THE BEST COFFEE FOR YOU",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const Spacer(),
                      ZoomTapAnimation(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const HomeScreen();
                              },
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 32.getW(),
                            vertical: 16.getH(),
                          ),
                          color: Colors.white.withOpacity(.1),
                          child: Text(
                            "Proceed",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 65 * height / 926),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
