import 'package:ecommerce_proj/presentation/screens/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerce_proj/presentation/screens/auth/forgetpassword/resetpassword.dart';

import 'package:ecommerce_proj/presentation/screens/auth/success_signup.dart';
import 'package:ecommerce_proj/presentation/screens/auth/forgetpassword/sucess_restpassword.dart';
import 'package:ecommerce_proj/presentation/screens/auth/forgetpassword/verifycode.dart';
import 'package:ecommerce_proj/presentation/screens/auth/verifycodesignup.dart';
import 'package:ecommerce_proj/presentation/screens/languages.dart';

import 'package:ecommerce_proj/presentation/screens/auth/login.dart';
import 'package:ecommerce_proj/presentation/screens/auth/signup.dart';
import 'package:ecommerce_proj/presentation/screens/onboarding.dart';
import 'package:ecommerce_proj/test.dart';
import 'package:get/get.dart';

import 'core/constant/rootes.dart';
import 'core/middelware/mymiddelware.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage(
  //     name: "/", page: () => const Languages(), middlewares: [MyMiddleWare()]),
  GetPage(name: "/", page: () => Test()),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signup, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetpass, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiycode, page: () => const VerifiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successRestPassword,
      page: () => const SucessRestpassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignup()),
  GetPage(name: AppRoute.onboarding, page: () => const Onboarding()),
  GetPage(
      name: AppRoute.verfiycodeSignUp, page: () => const Verifycodesignup()),
];

// Map<String, Widget Function(BuildContext)> routes = {
//   //Auth
//   AppRoute.login: (context) => const Login(),

//   AppRoute.signup: (context) => const SignUp(),
//   AppRoute.forgetpass: (context) => const ForgetPassword(),
//   AppRoute.resetPassword: (context) => const ResetPassword(),

//   AppRoute.verfiycode: (context) => const VerifiyCode(),
//   AppRoute.successRestPassword: (context) => const SucessRestpassword(),
//   AppRoute.successSignUp: (context) => const SuccessSignup(),

//   //onboarding
//   AppRoute.onboarding: (context) => const Onboarding(),
//   AppRoute.verfiycodeSignUp:(context) => const Verifycodesignup(),
// };
