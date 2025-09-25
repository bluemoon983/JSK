import 'package:flutter/material.dart';

import 'package:jck/presentation/%08main/widget/card/match_card.dart';
import 'package:jck/presentation/%08main/widget/card/state_card.dart';
import 'package:jck/presentation/%08main/widget/textfiled/search_textfiled.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1F),

      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(24, 74, 24, 56),
        child: Column(
          spacing: 40,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchTextField(),
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  "JCK 요약",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Card(
                  color: const Color(0xFF31313C),
                  child: Padding(
                    padding: const EdgeInsets.all(10), // 카드 안쪽 전체 여백
                    child: Column(
                      spacing: 10,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 5,
                          children: [
                            Expanded(
                              child: StatCard(
                                title: "최단 게임",
                                value: "24:47",
                                icon: Icons.timer,
                              ),
                            ),
                            Expanded(
                              child: StatCard(
                                title: "최장 게임",
                                value: "30:55",
                                icon: Icons.schedule,
                              ),
                            ),
                            Expanded(
                              child: StatCard(
                                title: "최단 첫킬",
                                value: "02:20",
                                icon: Icons.bloodtype,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 5,
                          children: [
                            Expanded(
                              child: StatCard(
                                title: "타워",
                                value: "31 / 10.3",
                                icon: Icons.location_city,
                              ),
                            ),
                            Expanded(
                              child: StatCard(
                                title: "바론",
                                value: "2 / 0.7",
                                icon: Icons.shield,
                              ),
                            ),
                            Expanded(
                              child: StatCard(
                                title: "장로 드래곤",
                                value: "0",
                                icon: Icons.local_fire_department,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  "최근 매치",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Card(
                  color: Color(0xFF31313C),
                  child: Padding(
                    padding: const EdgeInsets.all(10), // 카드 안쪽 전체 여백
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            MatchCard(
                              time: "15:57",
                              onTap: () {
                                print("MatchCard 클릭됨");
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            MatchCard(
                              time: "88:84",
                              onTap: () {
                                print("MatchCard 클릭됨");
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  "밴픽 챔피언 순위",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
