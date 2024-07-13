import 'package:facebbok_clean_archteture_responsive/components/user_profile/domain/repository/user_relationship_repository_interface.dart';

class BlockUser {
  final IUserRelationshipRepository _repository;

  BlockUser(this._repository);

  Future<void> execute(String userId) async {
    await _repository.blockUser(userId);
  }
}
