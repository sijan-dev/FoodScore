import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final navIndexProvider = NotifierProvider<NavIndexNotifier, int>(
  NavIndexNotifier.new,
);

class NavIndexNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void goTo(int index) => state = index;
}

ValueNotifier<int> navIndex = ValueNotifier(0);
