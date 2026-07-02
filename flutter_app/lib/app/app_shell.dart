import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'navigation.dart';
import '../screens/home/home_screen.dart';
import '../screens/placeholders/history_screen.dart';
import '../screens/placeholders/settings_screen.dart';
import 'tokens.dart';

class AppShell extends ConsumerWidget {
  const AppShell({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screens = const [HomeScreen(), HistoryScreen(), SettingsScreen()];

    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: navIndex,
        builder: (context, index, _) =>
            IndexedStack(index: index, children: screens),
      ),
      bottomNavigationBar: const _BottomNavBar(),
    );
  }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: navIndex,
      builder: (context, currentIndex, _) {
        return Container(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 18),
          decoration: BoxDecoration(
            color: context.surfaceContainerLowest,
            boxShadow: [
              BoxShadow(
                color: context.onSurface.withValues(alpha: 0.08),
                blurRadius: 18,
                offset: const Offset(0, -6),
              ),
            ],
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _NavItem(
                label: 'Home',
                icon: Icons.home,
                activeIcon: Icons.home_rounded,
                isActive: currentIndex == 0,
                onTap: () => navIndex.value = 0,
              ),
              _NavItem(
                label: 'History',
                icon: Icons.history,
                activeIcon: Icons.history_rounded,
                isActive: currentIndex == 1,
                onTap: () => navIndex.value = 1,
              ),
              _NavItem(
                label: 'Settings',
                icon: Icons.settings,
                activeIcon: Icons.settings_rounded,
                isActive: currentIndex == 2,
                onTap: () => navIndex.value = 2,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _NavItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconData activeIcon;
  final bool isActive;
  final VoidCallback onTap;

  const _NavItem({
    required this.label,
    required this.icon,
    required this.activeIcon,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = isActive ? context.onPrimary : context.onSurfaceVariant;
    final bgColor = isActive ? context.primaryContainer : Colors.transparent;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOutCubic,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedScale(
              scale: isActive ? 1.15 : 1.0,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOutBack,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                transitionBuilder: (child, anim) => ScaleTransition(
                  scale: anim,
                  child: child,
                ),
                child: Icon(
                  isActive ? activeIcon : icon,
                  key: ValueKey(isActive),
                  color: color,
                  size: 24,
                ),
              ),
            ),
            AnimatedCrossFade(
              duration: const Duration(milliseconds: 250),
              sizeCurve: Curves.easeOutCubic,
              firstChild: const SizedBox(width: 0, height: 0),
              secondChild: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  label,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: color,
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                  ),
                ),
              ),
              crossFadeState: isActive
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
            ),
          ],
        ),
      ),
    );
  }
}
