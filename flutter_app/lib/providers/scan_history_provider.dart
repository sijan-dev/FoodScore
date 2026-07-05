import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/scan_record.dart';

final scanHistoryProvider =
    NotifierProvider<ScanHistoryNotifier, List<ScanRecord>>(
      ScanHistoryNotifier.new,
    );

class _LoadingNotifier extends Notifier<bool> {
  @override
  bool build() => false;
}

final scanHistoryLoadingProvider =
    NotifierProvider<_LoadingNotifier, bool>(_LoadingNotifier.new);

class ScanHistoryNotifier extends Notifier<List<ScanRecord>> {
  static const _historyKey = 'scan_history';

  @override
  List<ScanRecord> build() {
    _loadHistory();
    return [];
  }

  Future<void> _loadHistory() async {
    ref.read(scanHistoryLoadingProvider.notifier).state = true;
    try {
      final prefs = await SharedPreferences.getInstance();
      final historyJson = prefs.getStringList(_historyKey) ?? [];
      state = historyJson
          .map((item) => ScanRecord.fromJson(jsonDecode(item)))
          .toList();
    } finally {
      ref.read(scanHistoryLoadingProvider.notifier).state = false;
    }
  }

  Future<void> addRecord(ScanRecord record) async {
    state = [record, ...state];
    await _saveHistory();
  }

  Future<void> clearHistory() async {
    state = [];
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_historyKey);
  }

  Future<void> _saveHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final historyJson = state.map((item) => jsonEncode(item.toJson())).toList();
    await prefs.setStringList(_historyKey, historyJson);
  }
}
