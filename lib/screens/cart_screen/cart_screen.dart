import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/data/models/coffee_model/coffee_model.dart';
import 'package:task/utils/app_icons/app_icons.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../utils/size/app_size.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, required this.coffeeModel});

  @override
  State<CartScreen> createState() => _CartScreenState();
  final CoffeeModel coffeeModel;
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.onBackground,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.getW()),
          child: Column(
            children: [
              SizedBox(height: 24.getH()),
              Stack(
                children: [
                  Image.asset(
                    widget.coffeeModel.imagePath,
                    fit: BoxFit.cover,
                    height: 540.getH(),
                    width: width - 48.getW(),
                  ),
                  Positioned(
                    left: 16.getW(),
                    top: 20.getH(),
                    child: ZoomTapAnimation(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(AppIcons.arrowBack),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.getW(), vertical: 16.getH()),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.coffeeModel.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      fontSize: 24.getW(),
                                    ),
                              ),
                              const Spacer(),
                              SvgPicture.asset(AppIcons.stay),
                              SizedBox(width: 5.getW()),
                              Text(
                                "4.6(1.250)",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      fontSize: 16.getW(),
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
