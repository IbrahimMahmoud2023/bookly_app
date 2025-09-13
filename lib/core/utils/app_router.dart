import 'package:bookely_app/features/home/presentation/view/home_view.dart';
import 'package:bookely_app/features/home/presentation/view/wigdets/book_details_view_body.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const String kHomeView = '/homeView';
  static const String kBookDetailsViewBody = '/bookDetailsViewBody';
 static final route = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: kBookDetailsViewBody,
        builder: (context, state) => BookDetailsViewBody(),
      ),
    ],
  );
}