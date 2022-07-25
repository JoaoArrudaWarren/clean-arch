import 'dart:convert';

import '../../domain/entities/computer_entity.dart';

class ComputerDto extends ComputerEntity {
  String modelDTO;
  String brandDTO;
  double priceDTO;
  int quantityDTO;
  bool isNewDTO;

  ComputerDto({
    required this.modelDTO,
    required this.brandDTO,
    required this.priceDTO,
    required this.quantityDTO,
    required this.isNewDTO,
  }) : super(
          brand: brandDTO,
          model: modelDTO,
          price: priceDTO,
          quantity: quantityDTO,
          isNew: isNewDTO,
        );

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'modelDTO': modelDTO});
    result.addAll({'brandDTO': brandDTO});
    result.addAll({'priceDTO': priceDTO});
    result.addAll({'quantityDTO': quantityDTO});
    result.addAll({'isNewDTO': isNewDTO});

    return result;
  }

  factory ComputerDto.fromMap(Map<String, dynamic> map) {
    return ComputerDto(
      modelDTO: map['modelDTO'] ?? '',
      brandDTO: map['brandDTO'] ?? '',
      priceDTO: map['priceDTO']?.toDouble() ?? 0.0,
      quantityDTO: map['quantityDTO']?.toInt() ?? 0,
      isNewDTO: map['isNewDTO'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory ComputerDto.fromJson(String source) =>
      ComputerDto.fromMap(json.decode(source));
}
