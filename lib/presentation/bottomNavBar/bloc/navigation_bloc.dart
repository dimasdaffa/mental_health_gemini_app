

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_health_app/presentation/bottomNavBar/bloc/navigation_state.dart';
import 'package:mental_health_app/presentation/bottomNavBar/bloc/navigation_event.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState>{
  NavigationBloc() : super(NavigationChanged(index: 0)){
    on<NavigateTo>((event, emit) {
      emit(NavigationChanged(index: event.index));
    });
  }
}