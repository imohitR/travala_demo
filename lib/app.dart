import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travalacom/router.dart';
import 'package:travalacom/theme/core/flex_theme_dark.dart';
import 'package:travalacom/theme/core/flex_theme_light.dart';
import 'package:travalacom/theme/core/theme_data_dark.dart';
import 'package:travalacom/theme/core/theme_data_light.dart';
import 'package:travalacom/theme/shared/controllers/theme_controller.dart';
import 'package:travalacom/theme/shared/services/theme_service.dart';
import 'package:travalacom/theme/shared/utils/app_scroll_behavior.dart';

class MyApp extends ConsumerWidget {
  final ThemeController controller;
  MyApp({
    Key? key,
    required this.controller,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp.router(
            restorationScopeId: 'app',
            themeMode: controller.themeMode,
            onGenerateTitle: (BuildContext context) => 'Flutter Shop',
            scrollBehavior: const AppScrollBehavior(),
            theme: controller.useFlexColorScheme
                ? flexThemeLight(controller)
                : themeDataLight(controller),
            darkTheme: controller.useFlexColorScheme
                ? flexThemeDark(controller)
                : themeDataDark(controller),
            debugShowCheckedModeBanner: false,
            routerDelegate: router.routerDelegate,
            routeInformationParser: router.routeInformationParser,
            routeInformationProvider: router.routeInformationProvider,
          );
        });
  }
}
