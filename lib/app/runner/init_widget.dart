import 'package:fitness_app/core/network/api/dio_client.dart';
import 'package:fitness_app/features/everyday_picture_page/bloc/everyday_picture_bloc.dart';
import 'package:fitness_app/features/everyday_picture_page/data_source/everyday_picture_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitWidget extends StatelessWidget {
  const InitWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => DioClient()),
        RepositoryProvider(
          create: (context) => EverydayPictureRepo(
            dioClient: RepositoryProvider.of<DioClient>(context),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => EverydayPictureBloc(
              RepositoryProvider.of<EverydayPictureRepo>(context),
            )..add(EverydayPictureFetch()),
          ),
        ],
        child: child,
      ),
    );
  }
}
