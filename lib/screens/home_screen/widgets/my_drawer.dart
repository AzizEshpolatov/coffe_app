import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/size/app_size.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key, required this.isSelected, required this.onChanged});
  final bool isSelected;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 20.getW(), vertical: 30.getH()),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Theme",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontSize: 16.w,
                      ),
                ),
                const Spacer(),
                Switch(
                  value: isSelected,
                  onChanged: onChanged,
                  activeTrackColor: isSelected ? Colors.blue : Colors.grey,
                  inactiveTrackColor: isSelected
                      ? Colors.blue.withOpacity(0.5)
                      : Colors.grey.withOpacity(0.5),
                  activeColor: isSelected ? Colors.white : Colors.black,
                  inactiveThumbColor: isSelected ? Colors.white : Colors.black,
                ),
              ],
            ),
            SizedBox(height: 15.getH()),
            // TODO til ozgarishi qowiladi!!!
          ],
        ),
      ),
    );
  }
}
