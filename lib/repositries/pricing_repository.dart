enum SandwichSize { sixInch, footlong }

class PricingRepository {
  static const double sixInchPrice = 7.0;
  static const double footlongPrice = 11.0;

  final SandwichSize sandwichSize;
  final int quantity;

  PricingRepository({
    required this.sandwichSize,
    required this.quantity,
  });

  double getTotalPrice() {
    double pricePerSandwich =
        sandwichSize == SandwichSize.sixInch ? sixInchPrice : footlongPrice;
    return pricePerSandwich * quantity;
  }
}