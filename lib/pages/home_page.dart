import 'package:flutter/material.dart';

import '../data/movie_data.dart';
import '../widgets/home_sections.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.movie_creation_outlined, color: Colors.white),
            SizedBox(width: 8),
            Text('Movie App', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            tooltip: 'Search movies',
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
            tooltip: 'Notifications',
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.account_circle_outlined),
            tooltip: 'Account',
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const MovieCarousel(movies: nowPlayingMovies),
              const SizedBox(height: 24),
              _Section(title: 'Trending', posters: _nowPlayingPosters),
              const _Section(title: 'Popular', posters: popularPosters),
              const _Section(title: 'Top Rated', posters: topRatedPosters),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    const items = [
      (icon: Icons.home, label: 'Home'),
      (icon: Icons.music_note, label: 'Genre'),
      (icon: Icons.favorite, label: 'Favorite'),
    ];

    return Material(
      color: Colors.black,
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            for (var index = 0; index < items.length; index++)
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Material(
                      color: Colors.transparent,
                      shape: const CircleBorder(),
                      clipBehavior: Clip.antiAlias,
                      child: InkWell(
                        onTap: () => setState(() => _currentIndex = index),
                        customBorder: const CircleBorder(),
                        splashColor: Colors.white.withValues(alpha: 0.2),
                        highlightColor: Colors.white.withValues(alpha: 0.12),
                        hoverColor: Colors.white.withValues(alpha: 0.08),
                        child: SizedBox(
                          width: 48,
                          height: 48,
                          child: Icon(
                            items[index].icon,
                            color: _currentIndex == index
                                ? Colors.white
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      items[index].label,
                      style: TextStyle(
                        color: _currentIndex == index
                            ? Colors.white
                            : Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.posters});

  final String title;
  final List<String> posters;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SectionHeader(title: title),
        ),
        PosterList(posters: posters),
      ],
    );
  }
}

final _nowPlayingPosters = nowPlayingMovies
    .map((movie) => movie.imageUrl)
    .toList(growable: false);
