import 'package:flutter_application_1/features/auth/presention/view_model/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit(super.LoginInitStates);

  static LoginCubit get(context) => BlocProvider.of(context);

  
}
