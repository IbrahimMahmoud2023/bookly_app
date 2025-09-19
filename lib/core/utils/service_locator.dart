import 'package:bookely_app/features/home/data/repos/home_repo_implement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/search/data/repos/search_repo_implement.dart';
import 'api_services.dart';

final getIt = GetIt.instance;

void serviceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
      HomeRepoImpl(getIt.get<ApiServices>())
  );getIt.registerSingleton<SearchRepoImpl>(
      SearchRepoImpl(getIt.get<ApiServices>())
  );

}

