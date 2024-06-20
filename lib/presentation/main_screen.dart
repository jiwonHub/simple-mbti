import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../domain/model/mbti_model.dart';
import 'main_viewmodel.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<MbtiModel> questionList = [];
  List mbtiList = [];
  int currentQuestionIndex = 0;

  @override
  void initState() {
    super.initState();
    context.read<MainViewModel>().getQuestions();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;


    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // 수직 중앙 정렬
            crossAxisAlignment: CrossAxisAlignment.center, // 수평 중앙 정렬
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'MBTI 검사',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  fontFamily: 'bit_font',
                ),
              ),
              Spacer(),
              if (currentQuestionIndex == 0) // 시작 버튼
                ElevatedButton(
                  onPressed: () {setState(() {
                    currentQuestionIndex++;
                  });},
                  child: Text(
                    '시작하기!',
                    style: TextStyle(fontFamily: 'bit_font'),
                  ),
                ),
              if (currentQuestionIndex > 0 && currentQuestionIndex < 12)
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          state.questions[currentQuestionIndex - 1],
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Spacer(), // 여유 간격 생성
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            currentQuestionIndex++;
                            mbtiList.add(state.mbtis[currentQuestionIndex - 1][0]);
                            if (currentQuestionIndex == 11) {
                              viewModel.getMbti(mbtiList);
                            }
                          });
                        },
                        child: Text(
                          state.options[currentQuestionIndex - 1][0],
                          style: TextStyle(fontFamily: 'bit_font', fontSize: 30),
                        ),
                      ),
                      Spacer(), // 여유 간격 생성
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            currentQuestionIndex++;
                            mbtiList.add(state.mbtis[currentQuestionIndex - 1][1]);
                            if (currentQuestionIndex == 11) {
                              viewModel.getMbti(mbtiList);
                            }
                          });
                        },
                        child: Text(
                          state.options[currentQuestionIndex - 1][1],
                          style: TextStyle(fontFamily: 'bit_font', fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
              if (currentQuestionIndex == 12)
                Expanded(
                  child: Center(
                    child: Column(
                      children: [
                        const Text(
                          '당신은',
                          style: TextStyle(fontFamily: 'bit_font', fontSize: 25),
                        ),
                        Text(
                          state.result,
                          style: const TextStyle(fontFamily: 'bit_font', fontSize: 30, color: Colors.blue),
                        ),
                        const Text(
                          '입니다!',
                          style: TextStyle(fontFamily: 'bit_font', fontSize: 25),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              currentQuestionIndex = 0;
                            });
                          },
                          child: const Text(
                            '처음으로 가기!',
                            style: TextStyle(fontFamily: 'bit_font'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
