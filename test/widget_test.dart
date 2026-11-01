import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:movie_app/app/main.dart';
import 'package:movie_app/data/movie_data.dart';

void main() {
  testWidgets('Home page displays the movie navigation and carousel', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Movie App'), findsOneWidget);
    expect(find.byTooltip('Search movies'), findsOneWidget);
    expect(find.byTooltip('Account'), findsOneWidget);
    expect(find.text('Deadpool & Wolverine'), findsOneWidget);
    expect(find.byType(CarouselSlider), findsOneWidget);
    expect(find.text('Trending'), findsOneWidget);
    expect(find.text('Popular'), findsOneWidget);
    expect(find.text('Top Rated'), findsOneWidget);
  });

  test('movie catalog categories contain five unique posters each', () {
    final trending = nowPlayingMovies.map((movie) => movie.imageUrl).toList();
    final posters = [...trending, ...popularPosters, ...topRatedPosters];

    expect(trending, hasLength(5));
    expect(popularPosters, hasLength(5));
    expect(topRatedPosters, hasLength(5));
    expect(posters.toSet(), hasLength(15));
  });
}
