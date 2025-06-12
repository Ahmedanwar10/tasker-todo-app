import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tasker/core/common/widgets/custtom_button.dart';
import 'package:tasker/core/resources/Assets.dart';
import 'package:tasker/core/resources/colorManager.dart';
import 'package:tasker/core/resources/font_manager.dart';
import 'package:tasker/routes.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesGroup270),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(Assets.imagesGroup270),
              const SizedBox(height: 60),
              Text(
                "Tasker",
              
                style: const TextStyle(
                  fontSize: 40,
                  color: ColorManager.checkboxCompleted,
                  fontWeight: FontWeightManager.regular,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Center(
                child: CustomButton(
                  color: ColorManager.checkboxCompleted,
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                 
                  text: "Get Started",
                  textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white), onPressed: () { 
                        context.go(AppRoutes.homeRoute);
                       },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
