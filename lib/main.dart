import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dynamic_theme/dynamic_theme/theme_bloc.dart';
import 'package:flutter_dynamic_theme/home_page.dart';

void main() {
  runApp(BlocProvider<ThemeBloc>(
      create: (BuildContext context) => ThemeBloc(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => BlocBuilder<ThemeBloc, ThemeState>(
          builder: (BuildContext context, ThemeState state) {
        if (state is LoadedThemeState) {
          return MaterialApp(
            title: 'Flutter Dynamic Theme',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
              brightness:
                  state.isBrightnessLight ? Brightness.light : Brightness.dark,
            ),
            home: MyHomePage(title: 'Flutter Dynamic Theme Home Page'),
          );
        }
        return const SizedBox.shrink();
      });
}
