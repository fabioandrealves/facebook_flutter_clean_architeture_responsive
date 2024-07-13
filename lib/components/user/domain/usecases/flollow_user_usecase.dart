import 'package:facebbok_clean_archteture_responsive/components/user_profile/domain/repository/user_relationship_repository_interface.dart';

class FollowUser {
  final IUserRelationshipRepository _repository;

  FollowUser(this._repository);

  Future<void> execute(String userId) async {
    await _repository.followUser(userId);
  }
}
