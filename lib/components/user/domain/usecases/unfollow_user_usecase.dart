import 'package:facebbok_clean_archteture_responsive/components/user_profile/domain/repository/user_relationship_repository_interface.dart';

class UnfollowUser {
  final IUserRelationshipRepository _repository;

  UnfollowUser(this._repository);

  Future<void> execute(String userId) async {
    await _repository.unfollowUser(userId);
  }
}
