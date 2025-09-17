import 'package:bookely_app/core/utils/service_locator.dart';
import 'package:bookely_app/features/home/data/repos/home_repo_implement.dart';
import 'package:bookely_app/features/home/presentation/view/book_details_view.dart';
import 'package:bookely_app/features/home/presentation/view/home_view.dart';
import 'package:bookely_app/features/search/presentation/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/models/book_model/book_model.dart';
import '../../features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const String kHomeView = '/homeView';
  static const String kSearchView = '/searchView';

  static const String kBookDetailsVie = '/bookDetailsView';
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
        path: kBookDetailsVie,
        builder: (context, state) =>
            BlocProvider(
              create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
              child: BookDetailsView(
                bookModel: state.extra as BookModel,
              ),
            ),
      ),
    ],
  );
}