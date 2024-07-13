import '../entity/user_entity.dart';
import '../repository/user_profile_repository_interface.dart';

class UpdateUserProfile {
  final IUserProfileRepository _repository;

  UpdateUserProfile(this._repository);

  Future<void> execute(User user) async {
    await _repository.updateUserProfile(user);
  }
}
