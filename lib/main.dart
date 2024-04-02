import 'dart:async';

import 'package:quiz_app_3/src/core/util/logger.dart';
import 'package:quiz_app_3/src/features/app/app_runner.dart';

void main() {
  logger.runLogging(
    () => runZonedGuarded(
      () => AppRunner().initializeAndRun(),
      logger.logZoneError,
    ),
    const LogOptions(),
  );
}
