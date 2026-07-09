import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/navigation.dart';
import '../../app/tokens.dart';
import '../../providers/auth_provider.dart';
import '../../providers/theme_provider.dart';
import '../profile/profile_setup_screen.dart';
import '../settings/health_goals_screen.dart';
import '../settings/privacy_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);

    return Scaffold(
      backgroundColor: context.surface,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          children: [
            Row(
              children: [
                _IconButton(
                  icon: Icons.arrow_back,
                  onTap: () => navIndex.value = 0,
                ),
                const Spacer(),
                Text(
                  'Settings',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                const SizedBox(width: 40),
              ],
            ),
            const SizedBox(height: 20),
            _ProfileCard(
              name: authState.user?.displayName ?? 'Your Profile',
              subtitle: authState.user?.email ?? 'Tap to edit your profile',
              avatarUrl: authState.user?.avatarUrl,
              onEdit: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const ProfileSetupScreen()),
                );
              },
            ),
            const SizedBox(height: 18),
            _SectionTitle(title: 'Account'),
            const SizedBox(height: 8),
            _SettingsGroup(
              children: [
                _SettingsTile(
                  icon: Icons.person_outline,
                  label: 'Profile',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const ProfileSetupScreen()),
                    );
                  },
                ),
                _ToggleSettingsTile(
                  icon: Icons.notifications_none,
                  label: 'Notifications',
                  prefKey: 'pref_notifications',
                ),
                _SettingsTile(
                  icon: Icons.favorite_border,
                  label: 'Health Goals',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const HealthGoalsScreen()),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            _SectionTitle(title: 'App Preferences'),
            const SizedBox(height: 8),
            _SettingsGroup(
              children: [
                _SettingsTile(
                  icon: Icons.palette_outlined,
                  label: 'Appearance',
                  onTap: () {
                    final notifier = ref.read(themeModeProvider.notifier);
                    showDialog(
                      context: context,
                      builder: (dialogContext) => SimpleDialog(
                        title: const Text('Choose theme'),
                        children: [
                          SimpleDialogOption(
                            onPressed: () {
                              notifier.set(ThemeMode.light);
                              Navigator.of(dialogContext).pop();
                            },
                            child: const Text('Light'),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              notifier.set(ThemeMode.dark);
                              Navigator.of(dialogContext).pop();
                            },
                            child: const Text('Dark'),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              notifier.set(ThemeMode.system);
                              Navigator.of(dialogContext).pop();
                            },
                            child: const Text('System'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                _SettingsTile(
                  icon: Icons.security_outlined,
                  label: 'Privacy',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const PrivacyScreen()),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            OutlinedButton.icon(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text('Sign Out'),
                    content: const Text('Are you sure you want to sign out?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(ctx).pop(),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                          ref.read(authProvider.notifier).signOut();
                        },
                        child: Text(
                          'Sign Out',
                          style: TextStyle(color: context.error),
                        ),
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.logout),
              label: const Text('Log Out'),
              style: OutlinedButton.styleFrom(
                foregroundColor: context.error,
                side: BorderSide(color: context.error),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _IconButton extends StatelessWidget {
  const _IconButton({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: context.surfaceContainer,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Icon(icon, color: context.onSurface),
      ),
    );
  }
}

class _ToggleSettingsTile extends StatefulWidget {
  const _ToggleSettingsTile({required this.icon, required this.label, required this.prefKey});

  final IconData icon;
  final String label;
  final String prefKey;

  @override
  State<_ToggleSettingsTile> createState() => _ToggleSettingsTileState();
}

class _ToggleSettingsTileState extends State<_ToggleSettingsTile> {
  bool _value = false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _value = prefs.getBool(widget.prefKey) ?? true;
    });
  }

  Future<void> _toggle(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(widget.prefKey, value);
    setState(() => _value = value);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: ListTile(
        leading: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: context.surfaceContainer,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(widget.icon, color: context.onSurface),
        ),
        title: Text(
          widget.label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
        ),
        trailing: Switch.adaptive(value: _value, onChanged: _toggle),
      ),
    );
  }
}

class _ProfileCard extends StatelessWidget {
  const _ProfileCard({
    required this.name,
    required this.subtitle,
    required this.onEdit,
    this.avatarUrl,
  });

  final String name;
  final String subtitle;
  final VoidCallback onEdit;
  final String? avatarUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: context.primaryContainer.withValues(alpha: 0.2),
            backgroundImage: avatarUrl != null ? NetworkImage(avatarUrl!) : null,
            child: avatarUrl == null
                ? Icon(Icons.person, color: context.primary)
                : null,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(
                  name,
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: context.onSurfaceVariant,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          FilledButton(onPressed: onEdit, child: const Text('Edit')),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(
        context,
      ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
    );
  }
}

class _SettingsGroup extends StatelessWidget {
  const _SettingsGroup({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.surfaceContainerLowest,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(children: children),
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  const _SettingsTile({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
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
        style: Theme.of(
          context,
        ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
      ),
      trailing: const Icon(Icons.chevron_right),
    );
  }
}
