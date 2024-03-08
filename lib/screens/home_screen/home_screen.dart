import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/data/models/data_repository/all_products.dart';
import 'package:task/screens/cart_screen/cart_screen.dart';
import 'package:task/screens/home_screen/widgets/global_button.dart';
import 'package:task/screens/home_screen/widgets/my_drawer.dart';
import 'package:task/utils/app_icons/app_icons.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../data/models/coffee_category_model/coffee_category_model.dart';
import '../../data/models/coffee_model/coffee_model.dart';
import '../../utils/size/app_size.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // category all
  List<CoffeeCategoryModel> categories = [
    CoffeeCategoryModel(
      id: 0,
      name: "All",
    ),
    CoffeeCategoryModel(
      id: 1,
      name: "Mocha",
    ),
    CoffeeCategoryModel(
      id: 2,
      name: "Latte",
    ),
    CoffeeCategoryModel(
      id: 3,
      name: "Cappucino",
    ),
    CoffeeCategoryModel(
      id: 4,
      name: "Espresso",
    ),
  ];

  // ozgaruvchilar
  List<CoffeeModel> temp = [];
  int categoryIndex = 0;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isSelected = false;

  selected() async {
    isSelected = await AdaptiveTheme.getThemeMode() == AdaptiveThemeMode.dark;
    setState(() {});
  }

  @override
  void initState() {
    temp = allProducts;
    selected();
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
        key: scaffoldKey,
        drawerEnableOpenDragGesture: false,
        drawer: MyDrawer(
          isSelected: isSelected,
          onChanged: (v) {
            if (v) {
              AdaptiveTheme.of(context).setDark();
            } else {
              AdaptiveTheme.of(context).setLight();
            }
            isSelected = v;
          },
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.getW()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 48.getH()),
              Row(
                children: [
                  GlobalButton(
                    isSelected: isSelected,
                    iconPath: AppIcons.menu,
                    padding: EdgeInsets.only(
                      top: 8.getH(),
                      bottom: 8.getH(),
                      right: 8.getW(),
                    ),
                    onTap: () {
                      scaffoldKey.currentState!.openDrawer();
                    },
                  ),
                  const Spacer(),
                  GlobalButton(
                    isSelected: isSelected,
                    iconPath: AppIcons.search,
                    padding: EdgeInsets.all(8.r),
                    onTap: () {},
                  ),
                  SizedBox(width: 8.getW()),
                  GlobalButton(
                    isSelected: isSelected,
                    iconPath: AppIcons.favorite,
                    padding: EdgeInsets.all(8.r),
                    onTap: () {},
                  ),
                ],
              ),
              // TODO FAVORITE LISTI CHIQARILIWI KERAK!
              // SizedBox(height: 24.getH()),
              // Text(
              //   "Your Favorites",
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 30.sp,
              //   ),
              // ),
              SizedBox(height: 16.getH()),
              Text(
                "Popular Now",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 24.w,
                    ),
              ),
              SizedBox(height: 24.getH()),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      categories.length,
                      (index) {
                        return ZoomTapAnimation(
                          onTap: () {
                            temp = [];
                            if (index == 0) {
                              categoryIndex = 0;
                              temp = allProducts;
                            } else if (index == 1) {
                              categoryIndex = 1;
                              temp = allProducts
                                  .where(
                                    (element) =>
                                        element.name == categories[index].name,
                                  )
                                  .toList();
                            } else if (index == 2) {
                              categoryIndex = 2;
                              temp = allProducts
                                  .where(
                                    (element) =>
                                        element.name == categories[index].name,
                                  )
                                  .toList();
                            } else if (index == 3) {
                              categoryIndex = 3;
                              temp = allProducts
                                  .where(
                                    (element) =>
                                        element.name == categories[index].name,
                                  )
                                  .toList();
                            } else {
                              categoryIndex = 4;
                              temp = allProducts
                                  .where(
                                    (element) =>
                                        element.name == categories[index].name,
                                  )
                                  .toList();
                            }
                            categoryIndex = index;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(
                                width: 1.r,
                                color: categoryIndex == true
                                    ? Colors.grey
                                    : Colors.transparent,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.getW(), vertical: 8.getH()),
                            child: Text(
                              categories[index].name,
                              style: TextStyle(
                                color: categoryIndex == index
                                    ? Theme.of(context)
                                        .colorScheme
                                        .tertiaryContainer
                                    : Theme.of(context)
                                        .colorScheme
                                        .tertiaryContainer
                                        .withOpacity(.7),
                                fontSize: 16.w,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15.getW(),
                    mainAxisSpacing: 15.getH(),
                    childAspectRatio: 0.72,
                    children: List.generate(
                      temp.length,
                      (index) {
                        return ZoomTapAnimation(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return CartScreen(
                                    coffeeModel: temp[index],
                                  );
                                },
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 232.getH(),
                                  width: 178.getW(),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  child: categoryIndex == index
                                      ? ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          child: Image.asset(
                                            temp[index].imagePath,
                                            fit: BoxFit.cover,
                                          ),
                                        )
                                      : const SizedBox(),
                                ),
                                SizedBox(height: 10.getH()),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.getW()),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        temp[index].name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              fontSize: 16.getW(),
                                            ),
                                      ),
                                      SizedBox(height: 5.getH()),
                                      Text(
                                        temp[index].subtitle,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                              fontSize: 16.getW(),
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )),
              ),
              SizedBox(height: 20.getH()),
            ],
          ),
        ),
      ),
    );
  }
}
