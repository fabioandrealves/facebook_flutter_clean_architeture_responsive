import '../entity/user_entity.dart';
import '../repository/user_profile_repository_interface.dart';

class LoadUserProfile {
  final IUserProfileRepository _repository;

  LoadUserProfile(this._repository);

  Future<User> execute(String userId) async {
    return await _repository.getUserProfile(userId);
  }
}
