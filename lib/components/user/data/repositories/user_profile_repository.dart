import 'package:facebbok_clean_archteture_responsive/components/user_profile/domain/entity/user_entity.dart';

import '../../domain/repositories/user_profile_repository_interface.dart';

class UserProfileRepositoryDatasource implements IUserProfileRepository {
  @override
  Future<void> createUserProfile(User user) {
    // TODO: implement createUserProfile
    throw UnimplementedError();
  }

  @override
  Future<User> getUserProfile(String userId) {
    // TODO: implement getUserProfile
    throw UnimplementedError();
  }

  @override
  Future<void> updateUserProfile(User user) {
    // TODO: implement updateUserProfile
    throw UnimplementedError();
  }
}
