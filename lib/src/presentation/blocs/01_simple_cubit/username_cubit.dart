import 'package:flutter_bloc/flutter_bloc.dart';

class UsernameCubit extends Cubit<String> {
  UsernameCubit() : super('no-username') {
    print('LazyLoad');
  }

  void setUsername(String state) {
    emit(state);
  }
}
