import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:travalacom/theme/shared/controllers/theme_controller.dart';
import 'package:travalacom/theme/shared/services/theme_service.dart';
import 'package:travalacom/theme/shared/services/theme_service_hive.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  final ThemeService themeService =
      ThemeServiceHive('flex_color_scheme_v5_box_5');
  await themeService.init();
  themeController = ThemeController(themeService);
  await themeController.loadAll();

  runApp(
    ProviderScope(
      child: EasyDynamicThemeWidget(
        child: MyApp(
          controller: themeController,
        ),
      ),
    ),
  );
}
