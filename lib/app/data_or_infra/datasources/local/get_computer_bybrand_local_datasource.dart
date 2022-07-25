import '../get_computer_bybrand_datasource.dart';
import '../../../domain/entities/computer_entity.dart';

class GetComputerBybrandLocalDatasource
    implements IGetComputerBybrandDatasource {
  @override
  ComputerEntity call(String brand) {
    return ComputerEntity(
      model: "Nitro5",
      brand: "Acer",
      price: 6000,
      quantity: 10,
      isNew: true,
    );
  }
}
