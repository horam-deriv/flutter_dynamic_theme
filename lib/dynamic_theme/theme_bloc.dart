import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

part 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(LoadedThemeState(isBrightnessLight: true));

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    if (event is UpdateBrightness && state is LoadedThemeState) {
      // ignore: avoid_as
      yield (state as LoadedThemeState)
          .copywith(isBrightnessLight: event.isBrightnessLight);
    }
  }
}
