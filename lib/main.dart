import 'package:flutter/material.dart';

import 'routing/app_router.dart';
import 'routing/routes.dart';
import 'ui/core/themes/app_theme.dart';

void main() {
  runApp(const MonetaApp());
}

class MonetaApp extends StatelessWidget {
  const MonetaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moneta',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      onGenerateRoute: AppRouter.generate,
      initialRoute: Routes.stats,
    );
  }
}
