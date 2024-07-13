import 'package:facebbok_clean_archteture_responsive/components/user/domain/entity/user_entity.dart';
import 'package:uuid/uuid.dart';

class Users {
  static const uuid = Uuid();

  static User currentUser = User(
      id: uuid.v4(),
      name: 'Fabio',
      imageUrl:
          'https://kc-media-production.azureedge.net/media/3078/breed-health-at-dog-shows.jpg?rmode=pad&width=1000&rnd=132180479724200000');
}
