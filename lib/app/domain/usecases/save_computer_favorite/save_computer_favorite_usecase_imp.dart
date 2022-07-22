
import '../../entities/computer_entity.dart';
import 'save_computer_favorite_usecase.dart';

class SaveComputerFavoriteUsecaseImp implements ISaveComputerFavoriteUsecase {
  final ISaveComputerFavoriteUsecase _iSaveComputerFavoriteUsecase;
  SaveComputerFavoriteUsecaseImp(this._iSaveComputerFavoriteUsecase);

  @override
  Future<bool> save(ComputerEntity computerEntity) {
    return _iSaveComputerFavoriteUsecase.save(computerEntity);
  }
}
