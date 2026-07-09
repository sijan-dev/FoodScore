import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app/tokens.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool _shareAnalytics = true;
  bool _personalizedAds = false;
  bool _publicProfile = false;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _shareAnalytics = prefs.getBool('privacy_analytics') ?? true;
      _personalizedAds = prefs.getBool('privacy_ads') ?? false;
      _publicProfile = prefs.getBool('privacy_public') ?? false;
      _loading = false;
    });
  }

  Future<void> _set(String key, bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
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
        title: const Text('Privacy'),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 28),
              children: [
                const SizedBox(height: 4),
                Text(
                  'Data & Privacy',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    color: context.surfaceContainerLowest,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      _PrivacyToggle(
                        icon: Icons.analytics_outlined,
                        label: 'Share Analytics',
                        description: 'Help us improve with anonymous usage data',
                        value: _shareAnalytics,
                        onChanged: (v) {
                          setState(() => _shareAnalytics = v);
                          _set('privacy_analytics', v);
                        },
                      ),
                      const Divider(height: 1, indent: 56),
                      _PrivacyToggle(
                        icon: Icons.ads_click,
                        label: 'Personalized Ads',
                        description: 'Allow personalized advertising',
                        value: _personalizedAds,
                        onChanged: (v) {
                          setState(() => _personalizedAds = v);
                          _set('privacy_ads', v);
                        },
                      ),
                      const Divider(height: 1, indent: 56),
                      _PrivacyToggle(
                        icon: Icons.public,
                        label: 'Public Profile',
                        description: 'Make your scan history visible to others',
                        value: _publicProfile,
                        onChanged: (v) {
                          setState(() => _publicProfile = v);
                          _set('privacy_public', v);
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Your Data',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    color: context.surfaceContainerLowest,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: context.surfaceContainer,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(Icons.download_outlined, color: context.onSurface),
                        ),
                        title: const Text('Download My Data'),
                        subtitle: const Text('Get a copy of your data'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Data export coming soon.'),
                              behavior: SnackBarBehavior.floating,
                            ),
                          );
                        },
                      ),
                      const Divider(height: 1, indent: 56),
                      ListTile(
                        leading: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: context.surfaceContainer,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(Icons.delete_outline, color: context.error),
                        ),
                        title: Text(
                          'Delete Account',
                          style: TextStyle(color: context.error),
                        ),
                        subtitle: const Text('Permanently remove all data'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: const Text('Delete Account'),
                              content: const Text(
                                'This will permanently delete your account and all associated data. This action cannot be undone.',
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(ctx).pop(),
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Account deletion coming soon.'),
                                        behavior: SnackBarBehavior.floating,
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Delete',
                                    style: TextStyle(color: context.error),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: context.primaryContainer.withValues(alpha: 0.10),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.info_outline, color: context.primary, size: 20),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Your privacy matters. We only collect data needed to provide accurate food scores and recommendations. No data is sold to third parties.',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: context.onSurfaceVariant,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}

class _PrivacyToggle extends StatelessWidget {
  final IconData icon;
  final String label;
  final String description;
  final bool value;
  final ValueChanged<bool> onChanged;

  const _PrivacyToggle({
    required this.icon,
    required this.label,
    required this.description,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: context.surfaceContainer,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, color: context.onSurface),
      ),
      title: Text(
        label,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        description,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: context.onSurfaceVariant,
        ),
      ),
      trailing: Switch.adaptive(value: value, onChanged: onChanged),
    );
  }
}
