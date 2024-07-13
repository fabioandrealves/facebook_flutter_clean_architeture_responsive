import 'package:facebbok_clean_archteture_responsive/components/user_profile/domain/repository/user_relationship_repository_interface.dart';

class ReportUserContent {
  final IUserRelationshipRepository _repository;

  ReportUserContent(this._repository);

  Future<void> execute(String contentId, String reason) async {
    await _repository.reportContent(contentId, reason);
  }
}
