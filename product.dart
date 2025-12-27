class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final double originalPrice;
  final String imageUrl;
  final List<String> images;
  final String category;
  final double rating;
  final int reviewCount;
  final bool inStock;
  final String brand;
  final Map<String, dynamic>? specifications;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.originalPrice,
    required this.imageUrl,
    required this.images,
    required this.category,
    required this.rating,
    required this.reviewCount,
    required this.inStock,
    required this.brand,
    this.specifications,
  });

  double get discountPercentage {
    if (originalPrice > price) {
      return ((originalPrice - price) / originalPrice * 100).roundToDouble();
    }
    return 0;
  }

  Product copyWith({
    String? id,
    String? name,
    String? description,
    double? price,
    double? originalPrice,
    String? imageUrl,
    List<String>? images,
    String? category,
    double? rating,
    int? reviewCount,
    bool? inStock,
    String? brand,
    Map<String, dynamic>? specifications,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      originalPrice: originalPrice ?? this.originalPrice,
      imageUrl: imageUrl ?? this.imageUrl,
      images: images ?? this.images,
      category: category ?? this.category,
      rating: rating ?? this.rating,
      reviewCount: reviewCount ?? this.reviewCount,
      inStock: inStock ?? this.inStock,
      brand: brand ?? this.brand,
      specifications: specifications ?? this.specifications,
    );
  }
}

