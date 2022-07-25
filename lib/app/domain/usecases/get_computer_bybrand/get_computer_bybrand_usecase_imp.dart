import '../../entities/computer_entity.dart';
import '../../repositories/get_computer_bybrand_repository.dart';
import 'get_computer_bybrand_usecase.dart';

class GetComputerByBrandUsecaseImp
    implements IGetComputerByBrandByBrandUsecase {
      final IGetComputerBybrandRepository _getComputerBybrandRepository;
      GetComputerByBrandUsecaseImp(this._getComputerBybrandRepository);
      
  @override
  ComputerEntity call(String brand) {
    return _getComputerBybrandRepository.getComputerByBrand(brand);
  }
}
