import 'package:fitness_app/features/everyday_photo_page/bloc/everyday_picture_bloc.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class EverydayPhotoPage extends StatelessWidget {
  const EverydayPhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EverydayPictureBloc(),
      child: Scaffold(
        body: BlocBuilder<EverydayPictureBloc, EverydayPictureState>(
          builder: (context, state) {
            if (state is EverydayPictureLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is EverydayPictureSuccess) {
              Text(state.everydayPictureData.title);
            }
            return const SizedBox.shrink();
            // if ( )
            // return Column(
            //   children: [],
            // );
          },
        ),
      ),
    );
  }
}
