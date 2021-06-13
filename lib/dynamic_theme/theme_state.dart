part of 'theme_bloc.dart';

abstract class ThemeState {}

class LoadedThemeState extends ThemeState {
  LoadedThemeState({required this.isBrightnessLight});
  final bool isBrightnessLight;

  LoadedThemeState copywith({required bool isBrightnessLight}) =>
      LoadedThemeState(isBrightnessLight: isBrightnessLight);
}
