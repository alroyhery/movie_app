class Series {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final String rating;
  final String year;
  final String episode;

  Series({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.rating,
    required this.year,
    required this.episode,
  });




}

final seriesList = [
  Series(
    id: 'tt4154796',
    title: 'Sandman',
    imageUrl: 'https://wwwflickeringmythc3c8f7.zapwp.com/q:i/r:1/wp:1/w:362/u:https://cdn.flickeringmyth.com/wp-content/uploads/2022/06/The-Sandman-poster-600x750.jpg',
    description: 'After years of imprisonment, Morpheus — the King of Dreams — embarks on a journey across worlds to find what was stolen from him and restore his power.',
    rating: '7.9',
    year: '2022',
    episode: '10 episode'
  ),
  Series(
    id: 'tt7286456',
    title: 'The End of The F World',
    imageUrl: 'https://ae01.alicdn.com/kf/HTB1VyKJXrSYBuNjSspfq6AZCpXas/Woods-The-End-of-the-F-ing-World-Season-1-TV-Retro-Vintage-Poster-Canvas-Painting.jpg',
    description: 'A budding teen psychopath and a rebel hungry for adventure embark on a star-crossed road trip in this darkly comic series based on a graphic novel.',
    rating: '8.1',
    year: '2017',
    episode: '16 episode'
  ),
  Series(
    id: 'tt9248972',
    title: 'The Boys',
    imageUrl: 'https://cdn.flickeringmyth.com/wp-content/uploads/2019/07/The-Boys-poster.jpg',
    description: 'A group of vigilantes set out to take down corrupt superheroes who abuse their superpowers.',
    rating: '8.7',
    year: '2019',
    episode: '24 episode'
  ),
  Series(
    id: 'tt7349950',
    title: 'The Flash',
    imageUrl: 'https://i.pinimg.com/originals/1b/3a/a3/1b3aa34b0b35b7fd5ae40ba1143b9a33.jpg',
    description: 'After being struck by lightning, Barry Allen wakes up from his coma to discover he is been given the power of super speed, becoming the Flash, and fighting crime in Central City.',
    rating: '7.6',
    year: '2014',
    episode: '184 episode'
  ),
  Series(
    id: 'tt6806448',
    title: 'The Walking Dead',
    imageUrl: 'https://flxt.tmsimg.com/assets/p8282918_b_v13_bk.jpg',
    description: 'Sheriff Deputy Rick Grimes wakes up from a coma to learn the world is in ruins and must lead a group of survivors to stay alive.',
    rating: '8.2',
    year: '2010',
    episode: '177 episode'
  ),
  Series(
    id: 'tt6105098',
    title: 'Sex Education',
    imageUrl: 'https://m.media-amazon.com/images/M/MV5BOTE0MjQ1NDU3OV5BMl5BanBnXkFtZTgwNTI4MTgwNzM@._V1_FMjpg_UX1000_.jpg',
    description: 'A teenage boy with a sex therapist mother teams up with a high school classmate to set up an underground sex therapy clinic at school.',
    rating: '8.4',
    year: '2019',
    episode: '25 episode'
  ),
];

final topRatedSeriesList = [
  Series(
    id: 'tt1375666',
    title: 'Breaking Bad',
    imageUrl: 'https://m.media-amazon.com/images/M/MV5BNzk5NTA2NjE4OV5BMl5BanBnXkFtZTcwMjUwNjY1NQ@@._V1_FMjpg_UX1000_.jpg',
    description: 'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family future.',
    rating: '9.5',
    year: '2008',
    episode: '62 episode'
  ),
  Series(
    id: 'tt0468569',
    title: 'The Witcher',
    imageUrl: 'https://www.themoviedb.org/t/p/original/7vjaCdMw15FEbXyLQTVa04URsPm.jpg',
    description: 'Geralt of Rivia, a solitary monster hunter, struggles to find his place in a world where people often prove more wicked than beasts.',
    rating: '8.2',
    year: '2019',
    episode: '17 episode'
  ),
  Series(
    id: 'tt0816692',
    title: 'Game of Thrones',
    imageUrl: 'https://i.pinimg.com/originals/ac/4f/fd/ac4ffd8309980a091dd1dc57abe908b4.jpg',
    description: 'Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia.',
    rating: '9.2',
    year: '2011',
    episode: '73 episode'
  ),
  Series(
    id: 'tt4633694',
    title: 'The Mandalorian',
    imageUrl: 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/2e9745105683521.5f7e5a7d614e3.jpg',
    description: 'The travels of a lone bounty hunter in the outer reaches of the galaxy, far from the authority of the New Republic.',
    rating: '8.7',
    year: '2019',
    episode: '24 episode'
  ),
  Series(
    id: 'tt1187043',
    title: 'Arcane',
    imageUrl: 'http://res.heraldm.com/content/image/2021/11/19/20211119000388_0.jpg',
    description: 'Set in utopian Piltover and the oppressed underground of Zaun, the story follows the origins of two iconic League champions-and the power that will tear them apart.',
    rating: '9.0',
    year: '2021',
    episode: '10 episode'
  ),
  Series(
    id: 'tt1049413',
    title: 'Stranger Things',
    imageUrl: 'https://awsimages.detik.net.id/community/media/visual/2022/06/28/stranger-things-4-volume-2.jpeg?w=700&q=90',
    description: 'When a young boy disappears, his mother, a police chief and his friends must confront terrifying supernatural forces in order to get him back.',
    rating: '8.7',
    year: '2016',
    episode: '35 episode'
  ),
];

final bestSeriesList = [
  Series(
    id: 'tt0437086',
    title: 'Moon Knight',
    imageUrl: 'https://m.media-amazon.com/images/M/MV5BYTc5OWNhYjktMThlOS00ODUxLTgwNDQtZjdjYjkyM2IwZTZlXkEyXkFqcGdeQXVyNTA3MTU2MjE@._V1_.jpg',
    description: 'Steven Grant discovers he is been granted the powers of an Egyptian moon god. But he soon finds out that these newfound powers can be both a blessing and a curse to his troubled life.',
    rating: '7.4',
    year: '2022',
    episode: '6 episode'
  ),
  Series(
    id: 'tt6320628',
    title: 'Obi-Wan Kenobi',
    imageUrl: 'https://static.republika.co.id/uploads/member/images/news/jd4wydva11.jpg',
    description: 'Jedi Master Obi-Wan Kenobi has to save young Leia after she is kidnapped, all the while being pursued by Imperial Inquisitors and his former Padawan, now known as Darth Vader.',
    rating: '7.1',
    year: '2012',
    episode: '6 episode'
  ),
  Series(
    id: 'tt1979376',
    title: 'Peacemaker',
    imageUrl: 'https://m.media-amazon.com/images/M/MV5BODk2NjAyOWMtM2FjZC00MjZhLTkxMjQtZTM3NjJlYTE5MDdlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg',
    description: 'Picking up where The Suicide Squad (2021) left off, Peacemaker returns home after recovering from his encounter with Bloodsport - only to discover that his freedom comes at a price',
    rating: '8.3',
    year: '2022',
    episode: '9 episode'
  ),
];