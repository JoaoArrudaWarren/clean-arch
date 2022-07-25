import 'dart:convert';

import '../../domain/entities/computer_entity.dart';

class ComputerDto extends ComputerEntity {
  String model;
  String brand;
  double price;
  int quantity;
  bool isNew;

  ComputerDto({
    required this.model,
    required this.brand,
    required this.price,
    required this.quantity,
    required this.isNew,
  }) : super(
          brand: brand,
          model: model,
          price: price,
          quantity: quantity,
          isNew: isNew,
        );

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'model': model});
    result.addAll({'brand': brand});
    result.addAll({'price': price});
    result.addAll({'quantity': quantity});
    result.addAll({'isNew': isNew});

    return result;
  }

  factory ComputerDto.fromMap(Map<String, dynamic> map) {
    return ComputerDto(
      model: map['model'] ?? '',
      brand: map['brand'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      quantity: map['quantity']?.toInt() ?? 0,
      isNew: map['isNew'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory ComputerDto.fromJson(String source) =>
      ComputerDto.fromMap(json.decode(source));
}
