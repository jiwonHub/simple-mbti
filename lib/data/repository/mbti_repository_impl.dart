import '../../domain/model/mbti_model.dart';
import '../../domain/repository/mbti_repository.dart';
import '../data_source/mbti_data_source.dart';

class MbtiRepositoryImpl implements MbtiRepository {
  @override
  Future<List<MbtiModel>> getMbtiQuestions() async {
    return questions.map((e) => MbtiModel.fromJson(e)).toList();
  }
}