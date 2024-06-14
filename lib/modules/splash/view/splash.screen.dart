import 'dart:async';
import 'dart:convert';

import 'package:cashir/modules/auth/controller/auth.controller.dart';
import 'package:cashir/modules/auth/models/auth_status.model.dart';
import 'package:cashir/modules/products/controllers/sync_products.controller.dart';
import 'package:cashir/shared/services/local_storage.service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cashir/shared/constants/colors.dart' as colors;
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Rx<bool> _visible = true.obs;

  Timer? _animationTimer;

  final localStorage = Get.find<LocalStorageService>();
  final authController = Get.find<AuthController>();

  Future<void> _checkAuthStatus() async {
    // wait for 1 second
    await Future.delayed(const Duration(milliseconds: 1000));

    final authStatus = await _readAuthStatus();

    // check if user is not logged in, then redirect to login screen
    // if (!authStatus?.isLoggedIn) {
    //   Get.offNamed('/login');
    //   return;
    // }

    // update auth status in app scoop and redirect to home screen
    authController.updateAuthStatus(newAuthStatus: authStatus);
    Get.offNamed("/compony/dashboard");
  }

  _readAuthStatus() async {
    // make sure that local storage is done init
    await localStorage.initStorage();

    // read auth status from local storage
    final authStatusJson = await localStorage.read("AUTH_STATUS");

    // check if there is auth status is stored, if not redirect to login screen
    if (authStatusJson == null) {
      // Get.offNamed('/login');
      return const AuthStatus(isLoggedIn: false);
    }

    // map json string to object
    final authStatusMap = jsonDecode(authStatusJson);
    final authStatus = AuthStatus.fromJson(authStatusMap);

    return authStatus;
  }

  Future<void> init() async {
    // Animate logo
    _animationTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _visible.value = !_visible.value;
    });

    await _checkAuthStatus();
    await Get.find<SyncProductsController>().execute();
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  void dispose() {
    _animationTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundWaves(),
          Obx(
            () => AnimatedOpacity(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              opacity: _visible.value ? 1 : 0,
              child: Center(
                child: Image.asset(
                  "assets/images/logo_white.png",
                  height: 200,
                  width: 200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BackgroundWaves extends StatelessWidget {
  const BackgroundWaves({super.key});

  static const _colors = [
    colors.primaryVariant,
    colors.primary,
  ];

  static const _durations = [
    5000,
    4000,
  ];

  static const _heightPercentages = [
    0.15,
    0.16,
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: WaveWidget(
        config: CustomConfig(
          colors: _colors,
          durations: _durations,
          heightPercentages: _heightPercentages,
        ),
        backgroundColor: colors.background,
        size: const Size(double.infinity, double.infinity),
        waveAmplitude: 0,
      ),
    );
  }
}
