import '../entity/user_entity.dart';

abstract class IUserProfileRepository {
  Future<void> createUserProfile(User user);
  Future<User> getUserProfile(String userId);
  Future<void> updateUserProfile(User user);
}
