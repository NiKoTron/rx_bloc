// Copyright (c) 2021, Prime Holding JSC
// https://www.primeholding.com
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';

import 'base/app/config/app_config.dart';
import 'base/app/config/environment_config.dart';
import 'base/app/initialization/app_setup.dart';
import 'base/app/reminders.dart';

// ignore_for_file: avoid_void_async

/// Main entry point for the production environment
void main() async {
  // Enable integration testing with the Flutter Driver extension.
  // See https://flutter.dev/testing/ for more info.
  // enableFlutterDriverExtension();
  WidgetsFlutterBinding.ensureInitialized();

  // Configure global app tools before launching the app
  await configureApp();

  var configuredApp = AppConfig(
    config: EnvironmentConfig.prod,
    child: Reminders(config: EnvironmentConfig.prod),
  );
  runApp(configuredApp);
}
