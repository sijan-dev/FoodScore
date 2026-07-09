import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/tokens.dart';
import '../../providers/auth_provider.dart';

class AuthScreen extends ConsumerStatefulWidget {
  const AuthScreen({super.key});

  @override
  ConsumerState<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends ConsumerState<AuthScreen> {

  bool _isRegisterMode = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
    super.dispose();
  }

  void _submit() {
    final email = _emailController.text.trim();
    final password = _passwordController.text;
    final username = _usernameController.text.trim();

    if (email.isEmpty) {
      ref.read(authProvider.notifier).setError('Please enter your email');
      return;
    }
    if (!_isValidEmail(email)) {
      ref.read(authProvider.notifier).setError('Please enter a valid email');
      return;
    }
    if (password.isEmpty) {
      ref.read(authProvider.notifier).setError('Please enter your password');
      return;
    }
    if (_isRegisterMode) {
      if (username.isEmpty) {
        ref.read(authProvider.notifier).setError('Please choose a username');
        return;
      }
      if (password.length < 6) {
        ref.read(authProvider.notifier).setError('Password must be at least 6 characters');
        return;
      }
      ref.read(authProvider.notifier).register(username, email, password);
    } else {
      ref.read(authProvider.notifier).signInWithEmail(email, password);
    }
  }

  bool _isValidEmail(String email) {
    return RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);

    return Scaffold(
      backgroundColor: context.surface,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              const SizedBox(height: 72),
              Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  border: Border.all(color: context.outlineVariant, width: 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    'assets/images/android-chrome-192x192.png',
                    width: 72,
                    height: 72,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'FoodScore',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.w300,
                  letterSpacing: 6,
                  color: context.primary,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Know what\'s on your food',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: context.onSurfaceVariant,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 56),
              if (authState.errorMessage != null)
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    border: Border.all(color: context.error.withValues(alpha: 0.3)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.error_outline, color: context.error, size: 18),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          authState.errorMessage!,
                          style: TextStyle(color: context.error, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
              if (authState.status == AuthStatus.loading)
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: CircularProgressIndicator(),
                ),
              _OutlinedButton(
                label: 'Continue with Google',
                icon: Icons.g_mobiledata,
                imagePath: 'assets/images/google_logo.png',
                onTap: () => ref.read(authProvider.notifier).signInWithGoogle(),
              ),
              const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: context.outlineVariant, width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      if (_isRegisterMode) ...[
                        _AuthField(
                          controller: _usernameController,
                          label: 'Username',
                          icon: Icons.person_outline,
                        ),
                        const SizedBox(height: 14),
                      ],
                      _AuthField(
                        controller: _emailController,
                        label: 'Email',
                        icon: Icons.email_outlined,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 14),
                      _AuthField(
                        controller: _passwordController,
                        label: 'Password',
                        icon: Icons.lock_outline,
                        isPassword: true,
                        obscureText: _obscurePassword,
                        onToggleVisibility: () => setState(
                          () => _obscurePassword = !_obscurePassword,
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton(
                          onPressed: _submit,
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            _isRegisterMode ? 'Create Account' : 'Sign In',
                            style: const TextStyle(letterSpacing: 1),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Center(
                        child: TextButton(
                          onPressed: () => setState(
                            () => _isRegisterMode = !_isRegisterMode,
                          ),
                          child: Text(
                            _isRegisterMode
                                ? 'Already have an account? Sign in'
                                : 'Don\'t have an account? Register',
                            style: TextStyle(
                              color: context.primary,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 32),
              TextButton(
                onPressed: () => ref.read(authProvider.notifier).skipToApp(),
                child: Text(
                  'Skip for now',
                  style: TextStyle(
                    color: context.onSurfaceVariant.withValues(alpha: 0.6),
                    fontSize: 13,
                    letterSpacing: 1,
                  ),
                ),
              ),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }
}

class _AuthField extends StatelessWidget {
  const _AuthField({
    required this.controller,
    required this.label,
    required this.icon,
    this.keyboardType,
    this.isPassword = false,
    this.obscureText = false,
    this.onToggleVisibility,
  });

  final TextEditingController controller;
  final String label;
  final IconData icon;
  final TextInputType? keyboardType;
  final bool isPassword;
  final bool obscureText;
  final VoidCallback? onToggleVisibility;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: const TextStyle(fontSize: 14),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: context.onSurfaceVariant,
          fontSize: 12,
          letterSpacing: 1,
        ),
        prefixIcon: Icon(icon, size: 20),
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                  size: 20,
                ),
                onPressed: onToggleVisibility,
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: context.outlineVariant),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: context.outlineVariant.withValues(alpha: 0.5)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: context.primary, width: 1),
        ),
        filled: true,
        fillColor: context.surface,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
    );
  }
}

class _OutlinedButton extends StatelessWidget {
  const _OutlinedButton({
    required this.label,
    required this.icon,
    required this.onTap,
    this.imagePath,
  });

  final String label;
  final IconData icon;
  final VoidCallback onTap;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          side: BorderSide(color: context.outlineVariant, width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imagePath != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset(imagePath!, width: 22, height: 22),
              )
            else
              Icon(icon, size: 22),
            const SizedBox(width: 10),
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                letterSpacing: 1,
                color: context.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
