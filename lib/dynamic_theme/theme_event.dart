part of 'theme_bloc.dart';

abstract class ThemeEvent {}

class UpdateBrightness extends ThemeEvent {
  UpdateBrightness({required this.isBrightnessLight});
  final bool isBrightnessLight;
}
