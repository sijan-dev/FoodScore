import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/tokens.dart';
import '../../providers/onboarding_provider.dart';
import 'pages/welcome_page.dart';
import 'pages/scan_page.dart';
import 'pages/tracking_page.dart';
import 'pages/goals_page.dart';
import 'pages/ready_page.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  final _pageController = PageController();
  int _currentPage = 0;
  final List<String> _goals = [];
  late AnimationController _pulseController;
  int _pulseCount = 0;

  static const _pages = [
    WelcomePage(),
    ScanPage(),
    TrackingPage(),
  ];

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: 1.2.seconds,
    )..addStatusListener(_onPulseStatus);
    _pulseController.forward();
  }

  void _onPulseStatus(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      if (_pulseCount < 3) {
        _pulseCount++;
        _pulseController.reverse();
      }
    } else if (status == AnimationStatus.dismissed) {
      if (_pulseCount < 3) {
        _pulseController.forward();
      }
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    _pulseController.removeStatusListener(_onPulseStatus);
    _pulseController.dispose();
    super.dispose();
  }

  bool get _isLastPage => _currentPage == 4;

  void _nextPage() {
    if (_isLastPage) {
      _complete();
    } else {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOutCubicEmphasized,
      );
    }
  }

  Future<void> _complete() async {
    await ref.read(onboardingProvider.notifier).complete();
    await ref.read(onboardingProvider.notifier).saveGoals(_goals);
  }

  @override
  Widget build(BuildContext context) {
    final isLast = _isLastPage;

    return Scaffold(
      backgroundColor: context.surface,
      body: SafeArea(
        child: Column(
          children: [
            AnimatedSize(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOutCubic,
              alignment: Alignment.topCenter,
              child: isLast
                  ? const SizedBox.shrink()
                  : Padding(
                      padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () => _pageController.jumpToPage(4),
                            child: Text(
                              'Skip',
                              style: TextStyle(color: context.onSurfaceVariant),
                            ),
                          ).animate().fadeIn(duration: 300.ms),
                          _DotsIndicator(count: 5, currentIndex: _currentPage),
                          TextButton(
                            onPressed: _nextPage,
                            child: Text(
                              'Next',
                              style: TextStyle(
                                color: context.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ).animate().fadeIn(duration: 300.ms),
                        ],
                      ),
                    ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (i) => setState(() => _currentPage = i),
                children: [
                  ..._pages,
                  GoalsPage(
                    onGoalsChanged: (goals) => _goals
                      ..clear()
                      ..addAll(goals),
                  ),
                  ReadyPage(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 32),
              child: SizedBox(
                width: double.infinity,
                child: AnimatedBuilder(
                  animation: _pulseController,
                  builder: (context, child) {
                    final scale = isLast ? 1.0 + (_pulseController.value * 0.03) : 1.0;
                    return Transform.scale(
                      scale: scale,
                      child: child,
                    );
                  },
                  child: FilledButton(
                    onPressed: _nextPage,
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      isLast ? 'Get Started' : 'Continue',
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ).animate().fadeIn(duration: 400.ms, delay: isLast ? 600.ms : 0.ms),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DotsIndicator extends StatelessWidget {
  final int count;
  final int currentIndex;

  const _DotsIndicator({required this.count, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(count, (i) {
        final isActive = i == currentIndex;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeOutBack,
            width: isActive ? 22 : 8,
            height: 8,
            decoration: BoxDecoration(
              color: isActive ? context.primary : context.onSurfaceVariant.withValues(alpha: 0.25),
              borderRadius: BorderRadius.circular(4),
              boxShadow: isActive
                  ? [BoxShadow(
                      color: context.primary.withValues(alpha: 0.3),
                      blurRadius: 4,
                      offset: const Offset(0, 1),
                    )]
                  : null,
            ),
          ),
        );
      }),
    );
  }
}
