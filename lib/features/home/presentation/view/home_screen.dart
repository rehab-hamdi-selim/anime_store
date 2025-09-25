import 'package:anime_store/features/home/data/data_source/characters_dummy_data.dart';
import 'package:anime_store/features/home/data/data_source/movie_dummy_data.dart';
import 'package:anime_store/features/home/presentation/view/widgets/character_item.dart';
import 'package:anime_store/features/home/presentation/view/widgets/custom_tab.dart';
import 'package:anime_store/features/home/presentation/view/widgets/movie_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> tabs = ['All', 'Popular', 'Trending', 'New Releases'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/background/home_background.png'),
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.03),
                Text(
                  'Where Anime Comes Alive',
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),

                //TabBar
                TabBar(
                  tabAlignment: TabAlignment.start,
                  controller: _tabController,
                  isScrollable: true,
                  indicator: const BoxDecoration(),
                  dividerColor: Colors.transparent,
                  labelPadding: const EdgeInsets.symmetric(
                    horizontal: 6,
                  ), // for reducing the space between tabs
                  tabs: List.generate(tabs.length, (index) {
                    final bool isActive = _tabController.index == index;
                    return CustomTab(title: tabs[index], isActive: isActive);
                  }),
                ),
                //TODO: TabBar Content
                // SizedBox(
                //   height: screenHeight * 0.4,
                //   child: TabBarView(
                //     controller: _tabController,
                //     children: tabs.map((tab) {
                //       return Center(
                //         child: Text(
                //           '$tab Content',
                //           style: const TextStyle(
                //             color: Colors.white,
                //             fontSize: 18,
                //           ),
                //         ),
                //       );
                //     }).toList(),
                //   ),
                // ),
                SizedBox(height: screenHeight * 0.01),

                //Movies
                SizedBox(
                  height: screenHeight * 0.35,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, int index) =>
                        MovieItem(movie: movies[index]),
                    separatorBuilder: (_, _) =>
                        SizedBox(width: screenWidth * 0.05),
                    itemCount: movies.length,
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),

                //Text -> Top Characters
                Text(
                  'Top Characters',
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),

                //CharactersList
                SizedBox(
                  height: screenHeight * 0.2,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, int index) =>
                        CharacterItem(character: characters[index]),
                    separatorBuilder: (_, _) =>
                        SizedBox(width: screenWidth * 0.05),
                    itemCount: characters.length,
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
