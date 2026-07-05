import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/nav_provider.dart';

class AppRouter {
  static void goToHistory(WidgetRef ref) {
    ref.read(navIndexProvider.notifier).goTo(1);
  }
}
