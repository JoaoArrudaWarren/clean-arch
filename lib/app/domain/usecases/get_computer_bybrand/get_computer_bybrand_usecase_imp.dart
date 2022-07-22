import '../../entities/computer_entity.dart';
import '../../repositories/get_computer_bybrand_repository.dart';
import 'get_computer_bybrand_usecase.dart';

class GetComputerByBrandUsercaseImp
    implements IGetComputerByBrandByBrandUsecase {
      final IGetComputerBybrandRepository _getComputerBybrandRepository;
      GetComputerByBrandUsercaseImp(this._getComputerBybrandRepository);
      
  @override
  ComputerEntity call(String brand) {
    return _getComputerBybrandRepository.getComputerByBrand(brand);
  }
}
