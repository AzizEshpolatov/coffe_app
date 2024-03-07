import 'package:task/utils/app_images/app_images.dart';

import '../coffee_category_model.dart';
import '../coffee_model/coffee_model.dart';

List<CoffeeCategoryModel> categories = [
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

List<CoffeeModel> allProducts = [
  // ========================== mocha coffee =====================//
  CoffeeModel(
    name: "Mocha",
    description:
        "Although a mocha is often interpreted differently across the world, the basis is that a shot of espresso is combined with a chocolate powder or syrup, followed by milk or cream. It is a variant of a latte, in the sense that it is often 1/3 espresso and 2/3 steamed milk. However, a chocolate flavour is added, and this can be milk or dark.",
    subtitle: "Caramel Mocha",
    price: 120,
    type: CoffeeType.s.toString(),
    imagePath: AppImages.coffeeOne,
    rate: 4.6,
    categoryId: 1,
    isFavourite: false,
  ),
  CoffeeModel(
    name: "Mocha",
    description:
        "Although a mocha is often interpreted differently across the world, the basis is that a shot of espresso is combined with a chocolate powder or syrup, followed by milk or cream. It is a variant of a latte, in the sense that it is often 1/3 espresso and 2/3 steamed milk. However, a chocolate flavour is added, and this can be milk or dark.",
    subtitle: "With Oat Milk",
    price: 130,
    type: CoffeeType.s.toString(),
    imagePath: AppImages.coffeeTwo,
    rate: 4.6,
    categoryId: 1,
    isFavourite: false,
  ),
  CoffeeModel(
    name: "Mocha",
    description:
        "Although a mocha is often interpreted differently across the world, the basis is that a shot of espresso is combined with a chocolate powder or syrup, followed by milk or cream. It is a variant of a latte, in the sense that it is often 1/3 espresso and 2/3 steamed milk. However, a chocolate flavour is added, and this can be milk or dark.",
    subtitle: "With chocolate",
    price: 140,
    type: CoffeeType.s.toString(),
    rate: 4.6,
    categoryId: 1,
    isFavourite: false,
    imagePath: AppImages.coffeeThree,
  ),
  // ========================== latte coffee =====================//
  CoffeeModel(
    name: "Latte",
    description:
        "A latte or caffè latte is a milk coffee that boasts a silky layer of foam as a real highlight to the drink. A true latte will be made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
    subtitle: "Caramel Latte",
    price: 120,
    type: CoffeeType.s.toString(),
    rate: 4.6,
    categoryId: 2,
    isFavourite: false,
    imagePath: AppImages.img1,
  ),
  CoffeeModel(
    name: "Latte",
    description:
        "A latte or caffè latte is a milk coffee that boasts a silky layer of foam as a real highlight to the drink. A true latte will be made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
    subtitle: "With Oat Milk",
    price: 130,
    rate: 4.6,
    categoryId: 2,
    isFavourite: false,
    type: CoffeeType.s.toString(),
    imagePath: AppImages.img2,
  ),
  CoffeeModel(
    name: "Latte",
    description:
        "A latte or caffè latte is a milk coffee that boasts a silky layer of foam as a real highlight to the drink. A true latte will be made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.",
    subtitle: "With chocolate",
    price: 130,
    type: CoffeeType.s.toString(),
    rate: 4.6,
    categoryId: 2,
    isFavourite: false,
    imagePath: AppImages.img3,
  ),

  // ========================== cappucino coffee =====================//
  CoffeeModel(
    name: "Cappucino",
    description:
        "A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all elements into equal thirds.",
    subtitle: "Caramel Cappucino",
    price: 120,
    type: CoffeeType.s.toString(),
    imagePath: AppImages.img4,
    rate: 4.6,
    categoryId: 3,
    isFavourite: false,
  ),
  CoffeeModel(
    name: "Cappucino",
    description:
        "A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all elements into equal thirds.",
    subtitle: "With Oat Milk",
    price: 130,
    type: CoffeeType.s.toString(),
    rate: 4.6,
    categoryId: 3,
    isFavourite: false,
    imagePath: AppImages.img5,
  ),
  CoffeeModel(
    name: "Cappucino",
    description:
        "A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all elements into equal thirds.",
    subtitle: "With chocolate",
    price: 140,
    type: CoffeeType.s.toString(),
    rate: 4.6,
    categoryId: 3,
    isFavourite: false,
    imagePath: AppImages.img6,
  ),

  // ========================== Espresso coffee =====================//
  CoffeeModel(
    name: "Espresso",
    description:
        "As a beverage, espresso is a concentrated form of coffee brewed with high pressure, hot water and finely ground coffee beans.",
    subtitle: "With chocolate",
    price: 120,
    type: CoffeeType.s.toString(),
    rate: 4.6,
    categoryId: 4,
    isFavourite: false,
    imagePath: AppImages.img7,
  ),
  CoffeeModel(
    name: "Espresso",
    description:
        "As a beverage, espresso is a concentrated form of coffee brewed with high pressure, hot water and finely ground coffee beans.",
    subtitle: "With Oat Milk",
    price: 130,
    type: CoffeeType.s.toString(),
    rate: 4.6,
    categoryId: 4,
    isFavourite: false,
    imagePath: AppImages.img8,
  ),
  CoffeeModel(
    name: "Espresso",
    description:
        "As a beverage, espresso is a concentrated form of coffee brewed with high pressure, hot water and finely ground coffee beans.",
    subtitle: "Caramel Espresso",
    price: 140,
    type: CoffeeType.s.toString(),
    rate: 4.6,
    categoryId: 4,
    isFavourite: false,
    imagePath: AppImages.img9,
  ),
];

enum CoffeeType {
  s,
  m,
  l,
}
