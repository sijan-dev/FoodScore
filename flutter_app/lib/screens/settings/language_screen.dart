import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app/tokens.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String _selected = 'en';
  bool _loading = true;

  static const _languages = [
    ('en', 'English', 'English'),
    ('ne', 'Nepali', 'नेपाली'),
    ('hi', 'Hindi', 'हिन्दी'),
    ('es', 'Spanish', 'Español'),
    ('fr', 'French', 'Français'),
    ('de', 'German', 'Deutsch'),
    ('zh', 'Chinese', '中文'),
    ('ja', 'Japanese', '日本語'),
    ('ko', 'Korean', '한국어'),
    ('ar', 'Arabic', 'العربية'),
    ('pt', 'Portuguese', 'Português'),
    ('ru', 'Russian', 'Русский'),
  ];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _selected = prefs.getString('pref_language') ?? 'en';
      _loading = false;
    });
  }

  Future<void> _select(String code) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('pref_language', code);
    setState(() => _selected = code);
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Language set to ${_languages.firstWhere((l) => l.$1 == code).$2}',
          ),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.surface,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        automaticallyImplyLeading: false,
        title: const Text('Language'),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView.separated(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 28),
              itemCount: _languages.length,
              separatorBuilder: (ctx, index) => const Divider(height: 1),
              itemBuilder: (context, i) {
                final lang = _languages[i];
                final isSelected = lang.$1 == _selected;
                return ListTile(
                  onTap: () => _select(lang.$1),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 2,
                  ),
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: context.primaryContainer.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        lang.$3.isNotEmpty
                            ? lang.$3[0].toUpperCase()
                            : lang.$2[0],
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: context.primary,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    lang.$2,
                    style: TextStyle(
                      fontWeight: isSelected
                          ? FontWeight.w700
                          : FontWeight.w500,
                      color: isSelected ? context.primary : context.onSurface,
                    ),
                  ),
                  subtitle: Text(
                    lang.$3 != lang.$2 ? lang.$3 : '',
                    style: TextStyle(color: context.onSurfaceVariant),
                  ),
                  trailing: isSelected
                      ? Icon(Icons.check_circle, color: context.primary)
                      : Icon(
                          Icons.radio_button_unchecked,
                          color: context.onSurfaceVariant,
                        ),
                );
              },
            ),
    );
  }
}
