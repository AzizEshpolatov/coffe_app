import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/appcolors/app_colors.dart';


class AppTheme{
  static ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor:  Color(0xFFF3F3F3)
    ),
    scaffoldBackgroundColor: const Color(0xFFF3F3F3),
    iconTheme: const IconThemeData(
      color: AppColors.c0C0F14,
    ),
    textTheme:  TextTheme(
      displayLarge: TextStyle(
        fontSize: 57.sp,
        color: AppColors.c0C0F14,
        fontFamily: "Besley",
        fontWeight: FontWeight.w400,
      ),
      displayMedium: TextStyle(
        fontSize: 45.sp,
        color: AppColors.c0C0F14,
        fontFamily: "Besley",
        fontWeight: FontWeight.w400,
      ),
      displaySmall: TextStyle(
        fontSize: 36.sp,
        color: AppColors.c0C0F14,
        fontFamily: "Besley",
        fontWeight: FontWeight.w400,
      ),
      headlineLarge: TextStyle(
        fontSize: 32.sp,
        color:AppColors.c0C0F14,
        fontFamily: "Besley",
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: TextStyle(
        fontSize: 28.sp,
        color:AppColors.c0C0F14,
        fontFamily: "Besley",
        fontWeight: FontWeight.w400,
      ),
      headlineSmall: TextStyle(
        fontSize: 24.sp,
        color:AppColors.c0C0F14,
        fontFamily: "Besley",
        fontWeight: FontWeight.w500,
      ),
      titleLarge: TextStyle(
        fontSize: 22.sp,
        color: AppColors.c0C0F14,
        fontFamily: "Besley",
        fontWeight: FontWeight.w400,
      ),
      titleMedium: TextStyle(
        fontSize: 16.sp,
        color: AppColors.c0C0F14,
        fontFamily: "Besley",
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        fontSize: 14.sp,
        color: AppColors.c0C0F14,
        fontFamily: "Besley",
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        fontSize: 14.sp,
        color: AppColors.c0C0F14,
        fontFamily: "Besley",
        fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(
        fontSize: 12.sp,
        color:AppColors.c0C0F14,
        fontFamily: "Besley",
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        fontSize: 11.sp,
        color: AppColors.c0C0F14,
        fontFamily: "Besley",
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        fontSize: 16.sp,
        color:AppColors.c0C0F14,
        fontFamily: "Besley",
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.sp,
        color:AppColors.c0C0F14,
        fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
        fontSize: 12.sp,
        color: AppColors.c0C0F14,
        fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      ),
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFA5C8FF),
      onPrimary: Color(0xFF00315E),
      primaryContainer: Color(0xFF004785),
      onPrimaryContainer: Color(0xFFD4E3FF),
      secondary: Color(0xFFFFB68E),
      onSecondary: Color(0xFF532200),
      secondaryContainer: Color(0xFF763300),
      onSecondaryContainer: Color(0xFFFFDBCA),
      tertiary: Color(0xFFDABDE2),
      onTertiary: Color(0xFF3D2946),
      tertiaryContainer: Color(0xFF553F5E),
      onTertiaryContainer: Color(0xFFF7D8FF),
      error: Color(0xFFFFB4AB),
      errorContainer: Color(0xFF93000A),
      onError: Color(0xFF690005),
      onErrorContainer: Color(0xFFFFDAD6),
      background: Color(0xFF1A1C1E),
      onBackground: Color(0xFFE3E2E6),
      surface: Color(0xFF1A1C1E),
      onSurface: Color(0xFFE3E2E6),
      surfaceVariant: Color(0xFF43474E),
      onSurfaceVariant: Color(0xFFC3C6CF),
      outline: Color(0xFF8D9199),
      onInverseSurface: Color(0xFF1A1C1E),
      inverseSurface: Color(0xFFE3E2E6),
      inversePrimary: Color(0xFF1E5FA6),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFFA5C8FF),
      outlineVariant: Color(0xFF43474E),
      scrim: Color(0xFF000000),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.c0C0F14
    ),
    scaffoldBackgroundColor: AppColors.c0C0F14,
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        hoverColor: Colors.white,
      )
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    textTheme:  TextTheme(
      displayLarge: TextStyle(
        fontSize: 57.sp,
        color: Colors.white,
        fontFamily: "Besley",
        fontWeight: FontWeight.w400,
      ),
      displayMedium: TextStyle(
        fontSize: 45.sp,
        color: Colors.white,
        fontFamily: "Besley",
        fontWeight: FontWeight.w400,
      ),
      displaySmall: TextStyle(
        fontSize: 36.sp,
        color: Colors.white,
        fontFamily: "Besley",
        fontWeight: FontWeight.w400,
      ),
      headlineLarge: TextStyle(
        fontSize: 32.sp,
        color: Colors.white,
        fontFamily: "Besley",
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: TextStyle(
        fontSize: 28.sp,
        color: Colors.white,
        fontFamily: "Besley",
        fontWeight: FontWeight.w400,
      ),
      headlineSmall: TextStyle(
        fontSize: 24.sp,
        color: Colors.white,
        fontFamily: "Besley",
        fontWeight: FontWeight.w400,
      ),
      titleLarge: TextStyle(
        fontSize: 22.sp,
        color: Colors.white,
        fontFamily: "Besley",
        fontWeight: FontWeight.w400,
      ),
      titleMedium: TextStyle(
        fontSize: 16.sp,
        color: Colors.white,
        fontFamily: "Besley",
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        fontSize: 14.sp,
        color: Colors.white,
        fontFamily: "Besley",
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        fontSize: 14.sp,
        color: Colors.white,
        fontFamily: "Besley",
        fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(
        fontSize: 12.sp,
        color: Colors.white,
        fontFamily: "Besley",
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        fontSize: 11.sp,
        color: Colors.white,
        fontFamily: "Besley",
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        fontSize: 16.sp,
        color: Colors.white,
        fontFamily: "Besley",
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.sp,
        color: Colors.white,
        fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
        fontSize: 12.sp,
        color: Colors.white,
        fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      ),
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF1E5FA6),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFD4E3FF),
      onPrimaryContainer: Color(0xFF001C3A),
      secondary: Color(0xFF974811),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFFFDBCA),
      onSecondaryContainer: Color(0xFF331200),
      tertiary: Color(0xFF6D5676),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFF7D8FF),
      onTertiaryContainer: Color(0xFF271430),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
      onError: Color(0xFFFFFFFF),
      onErrorContainer: Color(0xFF410002),
      background: Color(0xFFFDFCFF),
      onBackground: Color(0xFF1A1C1E),
      surface: Color(0xFFFDFCFF),
      onSurface: Color(0xFF1A1C1E),
      surfaceVariant: Color(0xFFE0E2EC),
      onSurfaceVariant: Color(0xFF43474E),
      outline: Color(0xFF74777F),
      onInverseSurface: Color(0xFFF1F0F4),
      inverseSurface: Color(0xFF2F3033),
      inversePrimary: Color(0xFFA5C8FF),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF1E5FA6),
      outlineVariant: Color(0xFFC3C6CF),
      scrim: Color(0xFF000000),
    ),


  );
}