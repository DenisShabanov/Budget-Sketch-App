import 'package:buget_sketch_app/theme/theme.dart';

import 'previous_page/view/view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PreviousPage(),
      theme: theme,
    );
  }
}
