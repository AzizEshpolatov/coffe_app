import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/utils/size/app_size.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    required this.isSelected,
    required this.iconPath,
    required this.padding,
    required this.onTap,
  });

  final bool isSelected;
  final String iconPath;
  final EdgeInsets padding;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      splashColor: Colors.grey,
      highlightColor: Colors.transparent,
      child: Padding(
        padding: padding,
        child: SvgPicture.asset(
          iconPath,
          width: 24.getW(),
          colorFilter: ColorFilter.mode(
            isSelected == true ? Colors.white : Colors.black,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
