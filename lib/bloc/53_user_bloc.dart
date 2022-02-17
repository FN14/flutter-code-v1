import 'package:bloc/bloc.dart';
import 'package:flutter_chapter01/model/53_user.dart';

class UserBloc extends Bloc<int, User> {
  @override
  User get initialState => UninitializedUser();

  @override
  Stream<User> mapEventToState(int event) async* {
    User user = await User.getUserFromApi(event);
    yield user;
  }
}
