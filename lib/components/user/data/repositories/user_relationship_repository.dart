import 'package:facebbok_clean_archteture_responsive/components/user_profile/domain/repositories/enums/fiendship_status_enum.dart';
import 'package:facebbok_clean_archteture_responsive/components/user_profile/domain/repositories/user_relationship_repository_interface.dart';

class UserRelationshipRepository implements IUserRelationshipRepository {
  @override
  Future<void> blockUser(String userId) {
    // TODO: implement blockUser
    throw UnimplementedError();
  }

  @override
  Future<FriendshipStatus> checkFriendshipStatus(String userId) {
    // TODO: implement checkFriendshipStatus
    throw UnimplementedError();
  }

  @override
  Future<void> followUser(String userId) {
    // TODO: implement followUser
    throw UnimplementedError();
  }

  @override
  Future<void> reportContent(String contentId, String reason) {
    // TODO: implement reportContent
    throw UnimplementedError();
  }

  @override
  Future<void> unfollowUser(String userId) {
    // TODO: implement unfollowUser
    throw UnimplementedError();
  }
}
