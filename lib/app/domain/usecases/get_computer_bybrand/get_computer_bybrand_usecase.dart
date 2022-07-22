import '../../entities/computer_entity.dart';

abstract class IGetComputerByBrandByBrandUsecase {
  ComputerEntity call(String brand);
}