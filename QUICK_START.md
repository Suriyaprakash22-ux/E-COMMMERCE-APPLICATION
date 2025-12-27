# Quick Start Guide

## Getting Started with ShopHub E-Commerce App

### Step 1: Install Flutter
Make sure you have Flutter installed on your system. If not, follow the official Flutter installation guide:
https://flutter.dev/docs/get-started/install

### Step 2: Verify Installation
```bash
flutter doctor
```

### Step 3: Install Dependencies
Navigate to the project directory and run:
```bash
flutter pub get
```

### Step 4: Run the App
```bash
flutter run
```

## Testing the App

### Login Credentials
Since this is a demo app with simulated authentication, you can use any email and password (minimum 6 characters) to login or register.

### Features to Try:
1. **Browse Products**: Scroll through the home screen to see featured and all products
2. **Search**: Use the search screen to find products
3. **Product Details**: Tap any product to see detailed information
4. **Add to Cart**: Add products to your shopping cart
5. **Checkout**: Complete a mock checkout process
6. **Profile**: View and manage your profile (after logging in)

## Project Structure Overview

- **Models**: Data structures (Product, CartItem, User, Order)
- **Providers**: State management (ProductProvider, CartProvider, AuthProvider)
- **Screens**: All UI screens of the app
- **Widgets**: Reusable UI components
- **Services**: Business logic and data fetching
- **Theme**: App-wide styling and colors

## Customization

### Changing Colors
Edit `lib/theme/app_theme.dart` to customize the app's color scheme.

### Adding Products
Edit `lib/services/product_service.dart` to add more products or connect to a real API.

### Modifying UI
All screens are in `lib/screens/` and can be customized as needed.

## Troubleshooting

### If you get dependency errors:
```bash
flutter clean
flutter pub get
```

### If images don't load:
The app uses placeholder images from Unsplash. Make sure you have an internet connection.

### For platform-specific issues:
- **Android**: Make sure Android SDK is properly configured
- **iOS**: Make sure Xcode is installed (macOS only)

## Next Steps

1. Connect to a real backend API
2. Implement real payment processing
3. Add push notifications
4. Implement order tracking
5. Add product reviews and ratings

Enjoy building with ShopHub! 🚀

