
import '../../domain/entities/computer_entity.dart';

import '../../domain/usecases/get_computer_bybrand/get_computer_bybrand_usecase.dart';

class BrandController {
  final IGetComputerByBrandByBrandUsecase _getComputerBybrandUseCase;
  BrandController(this._getComputerBybrandUseCase) {
    getComputerByBrand();
  }

  late ComputerEntity brand;
  void getComputerByBrand() {
    brand = _getComputerBybrandUseCase.call("Apple");
  }


}