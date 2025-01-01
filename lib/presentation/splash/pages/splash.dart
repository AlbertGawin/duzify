import 'package:duzify/core/configs/assets/app_vectors.dart';
import 'package:duzify/core/configs/theme/app_colors.dart';
import 'package:duzify/presentation/splash/bloc/cubit/splash_cubit.dart';
import 'package:duzify/presentation/splash/bloc/cubit/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SplashCubit()..getAccessToken(),
        child: BlocBuilder<SplashCubit, SplashState>(
          builder: (context, state) {
            if (state is SplashFailure) {
              return Center(child: Text(state.message));
            } else {
              return Center(
                child: SvgPicture.asset(
                  AppVectors.logo,
                  colorFilter: ColorFilter.mode(
                    AppColors.green,
                    BlendMode.srcIn,
                  ),
                  width: 250,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
