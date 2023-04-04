import 'package:fitness_app/app/ui_kit/components/custom_app_bar.dart';
import 'package:fitness_app/features/everyday_picture_page/bloc/everyday_picture_bloc.dart';
import 'package:fitness_app/features/everyday_picture_page/bloc/everyday_picture_state.dart';
import 'package:fitness_app/features/everyday_picture_page/presentation/ui/components/apod_main_card.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class EverydayPicturePage extends StatelessWidget {
  const EverydayPicturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: BlocBuilder<EverydayPictureBloc, EverydayPictureState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const SizedBox.shrink(),
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            success: (value) => CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 8,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: Text('Astronomical picure of the day'),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 8,
                  ),
                ),
                SliverToBoxAdapter(
                  child: ApodMainCard(
                    imageUrl: value.everydayPictureData.url ?? 'unknown',
                    title: value.everydayPictureData.title ?? 'null',
                    explanation: value.everydayPictureData.explanation ?? '',
                    copyright: value.everydayPictureData.copyright,
                    hdImage: value.everydayPictureData.hdurl ?? 'unknown',
                  ),
                ),
              ],
            ),
            error: (value) => Center(child: Text(value.errorMessage)),
          );
        },
      ),
    );
  }
}
