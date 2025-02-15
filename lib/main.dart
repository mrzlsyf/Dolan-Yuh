import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:office_app_store/core/app_theme.dart';
import 'package:office_app_store/src/view/screen/intro_screen.dart';

import 'bloc/login/login_cubit.dart';
import 'bloc/register/register_cubit.dart';
import 'firebase_options.dart';
import 'ui/login.dart';
import 'utils/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => RegisterCubit())
      ],
      child: MaterialApp(
        title: 'DolanYuh!',
        debugShowCheckedModeBanner: false,
        navigatorKey: NAV_KEY,
        onGenerateRoute: generateRoute,
        home: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              return IntroScreen();
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Ada yang salah nih!'),
              );
            } else {
              return const LoginScreen();
            }
          },
        ),
        theme: AppTheme.lightTheme,
      ),
    );
  }
}
