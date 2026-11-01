class Movie {
  const Movie({
    required this.title,
    required this.year,
    required this.genre,
    required this.description,
    required this.imageUrl,
  });

  final String title;
  final String year;
  final String genre;
  final String description;
  final String imageUrl;
}

const nowPlayingMovies = [
  Movie(
    title: 'Deadpool & Wolverine',
    year: '2024',
    genre: 'Action, Comedy',
    description: 'Deadpool mendapat tawaran dari TVA untuk masuk ke Marvel Cinematic Universe, lalu merekrut variant Wolverine untuk menyelamatkan semestanya dari kehancuran.',
    imageUrl: 'https://image.tmdb.org/t/p/w500/8cdWjvZQUExUUTzyp4t6EDMubfO.jpg',
  ),
  Movie(
    title: 'Spider-Man: No Way Home',
    year: '2021',
    genre: 'Action, Adventure',
    description: 'Peter Parker meminta Doctor Strange mengembalikan secret identity-nya, tetapi spell tersebut justru membuka jalan bagi para villain dari berbagai universe.',
    imageUrl: 'https://image.tmdb.org/t/p/w500/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg',
  ),
  Movie(
    title: 'Avengers: Infinity War',
    year: '2018',
    genre: 'Action, Adventure',
    description: 'The Avengers dan para allies bersatu untuk menghentikan Thanos mengumpulkan seluruh Infinity Stones.',
    imageUrl: 'https://image.tmdb.org/t/p/w500/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg',
  ),
  Movie(
    title: 'Guardians of the Galaxy Vol. 3',
    year: '2023',
    genre: 'Action, Sci-Fi',
    description: 'The Guardians menjalankan misi untuk melindungi Rocket dan menjaga masa depan found family mereka.',
    imageUrl: 'https://image.tmdb.org/t/p/w500/r2J02Z2OpNTctfOSN1Ydgii51I3.jpg',
  ),
  Movie(
    title: 'Black Panther',
    year: '2018',
    genre: 'Action, Adventure',
    description: 'T’Challa kembali ke Wakanda dan harus menghadapi challenger kuat yang mengincar tahtanya.',
    imageUrl: 'https://image.tmdb.org/t/p/w500/uxzzxijgPIY7slzFvMotPv8wjKA.jpg',
  ),
];

const popularPosters = [
  'https://image.tmdb.org/t/p/w500/78lPtwv72eTNqFW9COBYI0dWDJa.jpg',
  'https://image.tmdb.org/t/p/w500/rzRwTcFvttcN1ZpX2xv4j3tSdJu.jpg',
  'https://image.tmdb.org/t/p/w500/rAGiXaUfPzY7CDEyNKUofk3Kw2e.jpg',
  'https://image.tmdb.org/t/p/w500/uGBVj3bEbCoZbDjjl9wTxcygko1.jpg',
  'https://image.tmdb.org/t/p/w500/6WBeq4fCfn7AN0o21W9qNcRF2l9.jpg',
];

const topRatedPosters = [
  'https://image.tmdb.org/t/p/w500/or06FN3Dka5tukK1e9sl16pB3iy.jpg',
  'https://image.tmdb.org/t/p/w500/4ssDuvEDkSArWEdyBl2X5EHvYKU.jpg',
  'https://image.tmdb.org/t/p/w500/AtsgWhDnHTq68L0lLsUrCnM7TjG.jpg',
  'https://image.tmdb.org/t/p/w500/qAZ0pzat24kLdO3o8ejmbLxyOac.jpg',
  'https://image.tmdb.org/t/p/w500/1BIoJGKbXjdFDAqUEiA2VHqkK1Z.jpg',
];
