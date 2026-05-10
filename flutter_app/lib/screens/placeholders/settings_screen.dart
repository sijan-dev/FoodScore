import 'package:flutter/material.dart';

import '../../app/tokens.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
          child: ListView(
            children: [
              Text(
                'Settings',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Manage your profile, scanning behavior and app preferences.',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 18),
              _SettingsCard(
                children: const [
                  _SettingsTile(
                    icon: Icons.person_outline,
                    title: 'Profile',
                    subtitle: 'Name, avatar and account information',
                  ),
                  _SettingsDivider(),
                  _SettingsTile(
                    icon: Icons.qr_code_scanner,
                    title: 'Scan Preferences',
                    subtitle: 'Default camera and auto-scan behavior',
                  ),
                  _SettingsDivider(),
                  _SettingsTile(
                    icon: Icons.notifications_outlined,
                    title: 'Reminders',
                    subtitle: 'Healthy habits and scan reminders',
                  ),
                ],
              ),
              const SizedBox(height: 12),
              _SettingsCard(
                children: const [
                  _SettingsTile(
                    icon: Icons.privacy_tip_outlined,
                    title: 'Privacy',
                    subtitle: 'History storage and data controls',
                  ),
                  _SettingsDivider(),
                  _SettingsTile(
                    icon: Icons.help_outline,
                    title: 'Help & Support',
                    subtitle: 'FAQs and contact support',
                  ),
                  _SettingsDivider(),
                  _SettingsTile(
                    icon: Icons.info_outline,
                    title: 'About',
                    subtitle: 'Version and acknowledgements',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SettingsCard extends StatelessWidget {
  const _SettingsCard({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.outlineVariant.withValues(alpha: 0.6),
        ),
      ),
      child: Column(children: children),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  const _SettingsTile({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: AppColors.primaryFixed,
        foregroundColor: AppColors.primary,
        child: Icon(icon),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w700)),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {},
    );
  }
}

class _SettingsDivider extends StatelessWidget {
  const _SettingsDivider();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Divider(
        height: 1,
        color: AppColors.outlineVariant.withValues(alpha: 0.55),
      ),
    );
  }
}
