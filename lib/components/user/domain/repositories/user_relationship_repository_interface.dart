import 'enums/fiendship_status_enum.dart';

abstract class IUserRelationshipRepository {
  Future<void> followUser(String userId);
  Future<void> unfollowUser(String userId);
  Future<FriendshipStatus> checkFriendshipStatus(String userId);
  Future<void> blockUser(String userId);
  Future<void> reportContent(String contentId, String reason);
}
