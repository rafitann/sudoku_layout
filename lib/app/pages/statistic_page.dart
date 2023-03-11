import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sudoku_layout/app/widgets/game_card_widget.dart';
import 'package:sudoku_layout/app/widgets/statistic_item_widget.dart';
import 'package:sudoku_layout/app/widgets/time_card_widget.dart';

class StatisticPage extends StatelessWidget {
  const StatisticPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Estatísticas'),
        trailing: Icon(CupertinoIcons.settings),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StatisticItemWidget(
                  title: "Jogos",
                  body: Column(
                    children: const [
                      GameCardWidget(
                          icon: CupertinoIcons.table_fill,
                          title: 'Jogos Iniciados',
                          amount: '5'),
                      GameCardWidget(
                          icon: CupertinoIcons.star,
                          title: 'Jogos vencidos',
                          amount: '10'),
                      GameCardWidget(
                          icon: CupertinoIcons.flag,
                          title: 'Taxa de vitórias ',
                          amount: '3'),
                      GameCardWidget(
                          icon: CupertinoIcons.flag_slash,
                          title: 'Taxa de vitórias ',
                          amount: '75%'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                StatisticItemWidget(
                  title: "Tempo",
                  body: Column(
                    children: [
                      const SizedBox(
                        width: double.infinity,
                        child: TimeCardWidget(
                          icon: CupertinoIcons.star,
                          title: "Classifição",
                          description: Text.rich(
                            TextSpan(
                                children: [
                                  TextSpan(
                                      text: "Você é mais é mais veloz que "),
                                  TextSpan(
                                      text: "75%",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: CupertinoColors.systemPink)),
                                  TextSpan(text: " dos jogadores")
                                ],
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 15,
                                    letterSpacing: 0.2)),
                          ),
                        ),
                      ),
                      const GameCardWidget(
                          icon: CupertinoIcons.time_solid,
                          title: 'Melhor Tempo',
                          amount: '00:25'),
                      const GameCardWidget(
                          icon: CupertinoIcons.timer,
                          title: 'Melhor Tempo em Partida',
                          amount: '00:40'),
                      const GameCardWidget(
                          icon: CupertinoIcons.flag,
                          title: 'Taxa de vitórias ',
                          amount: '10'),
                      const GameCardWidget(
                          icon: CupertinoIcons.flag_slash,
                          title: 'Taxa de vitórias ',
                          amount: '75%'),
                      const SizedBox(
                        height: 8,
                      ),
                      CupertinoButton(
                          alignment: Alignment.bottomCenter,
                          child: const Text(
                            'Zerar Estatísticas',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {})
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
