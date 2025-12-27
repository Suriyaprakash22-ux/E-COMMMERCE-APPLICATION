# ShopHub - E-Commerce Flutter Application

A complete E-Commerce mobile application built with Flutter and Dart, featuring a modern UI similar to Amazon but with unique design elements.

## Features

### 🛍️ Core Features
- **Product Browsing**: Browse products by category with beautiful UI
- **Product Details**: Detailed product information with image carousel
- **Shopping Cart**: Add, remove, and manage items in cart
- **Search**: Search products by name, brand, or description
- **User Authentication**: Login and registration system
- **User Profile**: Manage user information and view orders
- **Checkout**: Complete checkout process with shipping and payment options

### 🎨 UI/UX Features
- Modern Material Design
- Responsive layouts
- Smooth animations
- Image caching for better performance
- Rating and review display
- Discount badges
- Stock status indicators

### 📱 Screens
1. **Home Screen**: Featured products, categories, and all products
2. **Product Details**: Full product information with specifications
3. **Cart Screen**: Shopping cart management
4. **Checkout Screen**: Order placement with shipping details
5. **Search Screen**: Product search with suggestions
6. **Profile Screen**: User account management
7. **Login/Register Screen**: Authentication

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── models/                   # Data models
│   ├── product.dart
│   ├── cart_item.dart
│   ├── user.dart
│   └── order.dart
├── providers/                # State management
│   ├── product_provider.dart
│   ├── cart_provider.dart
│   └── auth_provider.dart
├── screens/                  # UI screens
│   ├── home_screen.dart
│   ├── product_details_screen.dart
│   ├── cart_screen.dart
│   ├── checkout_screen.dart
│   ├── search_screen.dart
│   ├── profile_screen.dart
│   └── login_screen.dart
├── widgets/                  # Reusable widgets
│   ├── product_card.dart
│   ├── category_card.dart
│   ├── cart_item_card.dart
│   └── product_image_carousel.dart
├── services/                 # Business logic
│   └── product_service.dart
└── theme/                    # App theming
    └── app_theme.dart
```

## Getting Started

### Prerequisites
- Flutter SDK (3.0.0 or higher)
- Dart SDK (3.0.0 or higher)
- Android Studio / VS Code with Flutter extensions

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd E-Commerce
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Dependencies

- `provider`: State management
- `cached_network_image`: Image caching
- `flutter_rating_bar`: Rating display
- `intl`: Internationalization and formatting
- `google_fonts`: Custom fonts
- `http`: HTTP requests (for future API integration)
- `shared_preferences`: Local storage (for future use)

## State Management

The app uses **Provider** for state management with three main providers:
- `ProductProvider`: Manages product data and search
- `CartProvider`: Manages shopping cart state
- `AuthProvider`: Manages user authentication

## Design Highlights

- **Color Scheme**: Blue primary color (#2563EB) with green accents
- **Typography**: Inter font family via Google Fonts
- **Components**: Material Design 3 components
- **Layout**: Responsive grid and list layouts

## Future Enhancements

- Backend API integration
- Payment gateway integration
- Push notifications
- Order tracking
- Wishlist functionality
- Product reviews and ratings
- Social sharing
- Dark mode support

## Notes

- Currently uses mock data for products
- Authentication is simulated (no real backend)
- Images are loaded from Unsplash (placeholder URLs)
- Ready for backend integration

## License

This project is open source and available for educational purposes.

