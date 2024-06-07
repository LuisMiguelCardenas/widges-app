import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widges_app/config/router/app_router.dart';
import 'package:widges_app/config/theme/app_them.dart';
import 'package:widges_app/presentation/providers/theme_provider.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});




  @override
  Widget build(BuildContext context, ref) {

    // final bool isDarkmode = ref.watch(isDarkmodeProvider);
    // final int selectedColor = ref.watch(selectedColorProvider);

    final AppTheme appTheme = ref.watch( themeNotifierProvider );

    return MaterialApp.router(
      title: 'Flutter widges',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
    );
  }
}
