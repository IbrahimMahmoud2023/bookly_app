import 'package:bookely_app/features/home/presentation/view/book_details_view.dart';
import 'package:bookely_app/features/home/presentation/view/home_view.dart';
import 'package:bookely_app/features/home/presentation/view/wigdets/book_details_view_body.dart';
import 'package:bookely_app/features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const String kHomeView = '/homeView';
  static const String kSearchView = '/searchView';

  static const String kBookDetailsViewBody = '/bookDetailsViewBody';
 static final route = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => SearchView(),
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