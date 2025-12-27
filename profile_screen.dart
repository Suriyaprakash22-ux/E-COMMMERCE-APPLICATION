import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import '../theme/app_theme.dart';
import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: authProvider.isAuthenticated
          ? _buildAuthenticatedProfile(context, authProvider)
          : _buildUnauthenticatedProfile(context),
    );
  }

  Widget _buildAuthenticatedProfile(BuildContext context, AuthProvider authProvider) {
    final user = authProvider.user!;

    return SingleChildScrollView(
      child: Column(
        children: [
          // Profile Header
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppTheme.primaryColor, AppTheme.secondaryColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: user.profileImageUrl != null
                      ? ClipOval(
                          child: Image.network(
                            user.profileImageUrl!,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        )
                      : const Icon(
                          Icons.person,
                          size: 50,
                          color: AppTheme.primaryColor,
                        ),
                ),
                const SizedBox(height: 16),
                Text(
                  user.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  user.email,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          // Menu Items
          _buildMenuSection(
            context,
            'Account',
            [
              _buildMenuItem(
                context,
                icon: Icons.person_outline,
                title: 'Edit Profile',
                onTap: () {},
              ),
              _buildMenuItem(
                context,
                icon: Icons.location_on_outlined,
                title: 'Addresses',
                onTap: () {},
              ),
              _buildMenuItem(
                context,
                icon: Icons.payment_outlined,
                title: 'Payment Methods',
                onTap: () {},
              ),
            ],
          ),
          _buildMenuSection(
            context,
            'Orders',
            [
              _buildMenuItem(
                context,
                icon: Icons.shopping_bag_outlined,
                title: 'My Orders',
                onTap: () {},
              ),
              _buildMenuItem(
                context,
                icon: Icons.favorite_outline,
                title: 'Wishlist',
                onTap: () {},
              ),
            ],
          ),
          _buildMenuSection(
            context,
            'Support',
            [
              _buildMenuItem(
                context,
                icon: Icons.help_outline,
                title: 'Help Center',
                onTap: () {},
              ),
              _buildMenuItem(
                context,
                icon: Icons.info_outline,
                title: 'About',
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  authProvider.logout();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Logged out successfully')),
                  );
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  side: const BorderSide(color: AppTheme.errorColor),
                ),
                child: const Text(
                  'Logout',
                  style: TextStyle(
                    color: AppTheme.errorColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildUnauthenticatedProfile(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person_outline,
              size: 100,
              color: Colors.grey[300],
            ),
            const SizedBox(height: 24),
            const Text(
              'Please login to continue',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Login to access your profile, orders, and more',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuSection(BuildContext context, String title, List<Widget> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 12),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppTheme.textSecondary,
            ),
          ),
        ),
        ...items,
      ],
    );
  }

  Widget _buildMenuItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: AppTheme.primaryColor),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}

