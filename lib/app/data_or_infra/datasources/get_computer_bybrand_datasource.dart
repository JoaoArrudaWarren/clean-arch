
import '../../domain/entities/computer_entity.dart';

abstract class IGetComputerBybrandDatasource {
  ComputerEntity call(String brand);
}