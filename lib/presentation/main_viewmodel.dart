

import 'package:flutter/material.dart';

import '../data/repository/mbti_repository_impl.dart';
import 'main_state.dart';

class MainViewModel with ChangeNotifier {
  final MbtiRepositoryImpl _impl;

  MainViewModel({
    required MbtiRepositoryImpl impl,
  }) : _impl = impl;

  MainState _state = const MainState();

  MainState get state => _state;

  void getQuestions() async {
    final questions = await _impl.getMbtiQuestions();
    final question = questions.map((e) => e.question).toList();
    final option = questions.map((e) => e.options).toList();
    final mbti = questions.map((e) => e.mbti).toList();

    _state = _state.copyWith(mbtis: mbti, options: option, questions: question);

    notifyListeners();
  }

  void getMbti(List mbtis) {
    final E = mbtis.where((element) => element == "E").length;
    final I = mbtis.where((element) => element == "I").length;
    final S = mbtis.where((element) => element == "S").length;
    final N = mbtis.where((element) => element == "N").length;
    final F = mbtis.where((element) => element == "F").length;
    final T = mbtis.where((element) => element == "T").length;
    final P = mbtis.where((element) => element == "P").length;
    final J = mbtis.where((element) => element == "J").length;

    final EI = E > I ? "E" : "I";
    final SN = S > N ? "S" : "N";
    final FT = F > T ? "F" : "T";
    final PJ = P > J ? "P" : "J";

    final mbti = EI + SN + FT + PJ;
    print(mbti);
    _state = _state.copyWith(result: mbti);

    notifyListeners();
  }
}