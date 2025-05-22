import 'package:booklyapp/constant.dart';
import 'package:booklyapp/core/ulits/assets.dart';
import 'package:booklyapp/features/home/presentation/view/howe_view.dart';
import 'package:booklyapp/features/splashview/presentation/view/widgets/text_sliding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;

  @override
  void initState() {
    super.initState();
    initanimationcontroller();

    navigatetohomeview();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          AssetsImage.logo,
          color: Colors.blue,
          width: MediaQuery.sizeOf(context).width,
        ),
        AnimatedBuilder(
          animation: slidinganimation,
          builder:
              (context, child) =>
                  CustomTextSliding(slidinganimation: slidinganimation),
        ),
      ],
    );
  }

  void initanimationcontroller() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    slidinganimation = Tween<Offset>(
      begin: Offset(0, 10),
      end: Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
    slidinganimation.addListener(() {
      setState(() {});
    });
  }

  void navigatetohomeview() {
    Future.delayed(Duration(seconds: KDuration), () {
      Get.to(
        () => HomeView(),
        transition: Transition.fade,
        duration: kDurationNavigation,
      );
    });
  }
}
