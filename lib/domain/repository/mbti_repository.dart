import '../model/mbti_model.dart';

abstract interface class MbtiRepository {
  Future<List<MbtiModel>> getMbtiQuestions();
}