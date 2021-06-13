import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dynamic_theme/dynamic_theme/theme_bloc.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Center(child: Text('Change Theme')),
            ),
            SwitchListTile(
              title: const Text('Light brightness'),
              value: (BlocProvider.of<ThemeBloc>(context).state
                      // ignore: avoid_as
                      as LoadedThemeState)
                  .isBrightnessLight,
              onChanged: (bool value) {
                BlocProvider.of<ThemeBloc>(context)
                    .add(UpdateBrightness(isBrightnessLight: value));
              },
            ),
          ],
        ),
      );
}
