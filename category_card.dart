import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CategoryCard extends StatelessWidget {
  final String category;
  final IconData? icon;

  const CategoryCard({
    super.key,
    required this.category,
    this.icon,
  });

  IconData _getCategoryIcon() {
    switch (category.toLowerCase()) {
      case 'electronics':
        return Icons.devices;
      case 'fashion':
        return Icons.checkroom;
      case 'home & kitchen':
        return Icons.home;
      case 'sports & fitness':
        return Icons.fitness_center;
      default:
        return Icons.category;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          // Navigate to category products
        },
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 100,
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon ?? _getCategoryIcon(),
                size: 32,
                color: AppTheme.primaryColor,
              ),
              const SizedBox(height: 8),
              Text(
                category,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

