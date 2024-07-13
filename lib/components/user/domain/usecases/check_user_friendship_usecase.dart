import 'package:facebbok_clean_archteture_responsive/components/user_profile/domain/repository/user_relationship_repository_interface.dart';

import '../repository/enums/fiendship_status_enum.dart';

class CheckUserFriendship {
  final IUserRelationshipRepository _repository;

  CheckUserFriendship(this._repository);

  Future<FriendshipStatus> execute(String userId) async {
    return await _repository.checkFriendshipStatus(userId);
  }
}
