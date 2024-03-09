// ignore_for_file: constant_identifier_names

import 'package:bookly/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/home/presentation/view/book_details_view.dart';
import 'package:bookly/Features/home/presentation/view/home_view.dart';
import 'package:bookly/Features/search/data/repo/search_repo_impl.dart';
import 'package:bookly/Features/search/presentation/manger/search_cubit/search_cubit.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KhomeView = '/homeView';
  static const KhomeDetailsView = '/homeDetailsView';
  static const KsearchView = '/searchView';
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: KhomeView, builder: (context, state) => const HomeView()),
    GoRoute(
        path: KhomeDetailsView,
        builder: (context, state) => BlocProvider(
              create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
              child: BookDetailsView(
                bookModel: state.extra as BookModel,
              ),
            )),
    GoRoute(
        path: KsearchView,
        builder: (context, state) => BlocProvider(
              create: (context) => SearchCubit(getIt.get<SearchRepoImpl>()),
              child: const SearchView(),
            )),
  ]);
}
