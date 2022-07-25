
import '../../domain/entities/computer_entity.dart';
import '../../domain/repositories/get_computer_bybrand_repository.dart';
import '../datasources/local/get_computer_bybrand_local_datasource.dart';

class GetComputerBybrandRepositoryImp implements IGetComputerBybrandRepository {
final GetComputerBybrandLocalDatasource _datasource;
 GetComputerBybrandRepositoryImp(this._datasource);

  @override
  ComputerEntity getComputerByBrand(String brand) {
    return _datasource.call(brand);
  } 
}