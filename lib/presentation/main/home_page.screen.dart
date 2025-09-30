import 'package:flutter/material.dart';
import 'package:jck/presentation/%08main/ban_pick_page.dart';
import 'package:jck/presentation/%08main/search_result_page.dart';
import 'package:jck/presentation/%08main/widget/DDRAGON/Champ/champion_image.dart';
import 'package:jck/presentation/%08main/widget/card/ban_pick_card.dart';
import 'package:jck/presentation/%08main/widget/card/match_card.dart';
import 'package:jck/presentation/%08main/widget/card/state_card.dart';
import 'package:jck/presentation/%08main/widget/textfiled/search_textfiled.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeContent(),
    const Center(child: Text("매치 페이지", style: TextStyle(color: Colors.white))),
    const Center(
      child: Text("선수통계 페이지", style: TextStyle(color: Colors.white)),
    ),
    const Center(
      child: Text("챔프통계 페이지", style: TextStyle(color: Colors.white)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1F),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // 4개 이상일 때 필요
        currentIndex: _currentIndex,
        backgroundColor: const Color(0xFF31313C),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_esports),
            label: "매치",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "선수 통계"),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: "챔프통계",
          ),
        ],
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(24, 74, 24, 56),
      child: Column(
        spacing: 40,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchTextField(
            onSubmitted: (query) {
              if (query.isNotEmpty) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchResultPage(query: query),
                  ),
                );
              }
            },
          ),
          Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
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
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        spacing: 5,
                        children: const [
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
                        children: const [
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
              const Text(
                "최근 매치",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Card(
                color: const Color(0xFF31313C),
                child: Padding(
                  padding: const EdgeInsets.all(10),
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
                            time: "33:11",
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BanPickPage(),
                    ),
                  );
                },
                child: const Text(
                  "밴픽 챔피언 순위",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              Card(
                color: const Color(0xFF31313C),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Text(
                          "Most Picked",
                          style: TextStyle(color: Colors.white, fontSize: 23),
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              BanPickCard(
                                order: 1,
                                imageUrl: ChampionImage.getUrl("KSante"),
                                championName: "크산테",
                                count: 15,
                              ),
                              BanPickCard(
                                order: 2,
                                imageUrl: ChampionImage.getUrl("MasterYi"),
                                championName: "마스터 이",
                                count: 13,
                              ),
                              BanPickCard(
                                order: 3,
                                imageUrl: ChampionImage.getUrl("Sylas"),
                                championName: "사일러스",
                                count: 12,
                              ),
                              BanPickCard(
                                order: 4,
                                imageUrl: ChampionImage.getUrl("Leona"),
                                championName: "레오나",
                                count: 11,
                              ),
                              BanPickCard(
                                order: 5,
                                imageUrl: ChampionImage.getUrl("Ashe"),
                                championName: "애쉬",
                                count: 5,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Text(
                          "Most Banned",
                          style: TextStyle(color: Colors.white, fontSize: 23),
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              BanPickCard(
                                order: 1,
                                imageUrl: ChampionImage.getUrl("Aatrox"),
                                championName: "아트록스",
                                count: 32,
                              ),
                              BanPickCard(
                                order: 2,
                                imageUrl: ChampionImage.getUrl("Yone"),
                                championName: "요네",
                                count: 30,
                              ),
                              BanPickCard(
                                order: 3,
                                imageUrl: ChampionImage.getUrl("Irelia"),
                                championName: "이렐리아",
                                count: 20,
                              ),
                              BanPickCard(
                                order: 4,
                                imageUrl: ChampionImage.getUrl("Varus"),
                                championName: "바루스",
                                count: 18,
                              ),
                              BanPickCard(
                                order: 5,
                                imageUrl: ChampionImage.getUrl("Azir"),
                                championName: "아지르",
                                count: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
