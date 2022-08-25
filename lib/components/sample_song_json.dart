import 'package:flutter/material.dart';

const List song_type_1 = [
  "Music",
  "Rock",
  "Soul",
  "Classic",
  "Pop",
  "R&B",
];

const List song_type_2 = [
  "Podcasts",
  "Made For You",
  "Charts",
  "New Releases",
  "Discover",
  "Concerts",
];

const List songs = [
  {
    "img": "assets/images/img_3.jpg",
    "title": "Feelin' Good",
    "description": "Feel good with this positively timeless playlist!",
    "song_count": "100 songs",
    "date": "about 19 hr",
    "color": Color(0xFFf69129),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_5.jpg",
    "title": "Peaceful Piano",
    "description": "Relax and indulge with beautiful piano pieces",
    "song_count": "324 songs",
    "date": "about 14 hr",
    "color": Color(0xFF64849c),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Kaleidoscope", "duration": "2:01"},
      {"title": "Larks", "duration": "2:54"},
      {"title": "Homeland", "duration": "2:22"},
      {"title": "Une Danse", "duration": "3:03"},
      {"title": "Almonte", "duration": "2:31"},
      {"title": "Days Like These", "duration": "4:09"},
      {"title": "In questo momento", "duration": "2:40"},
    ]
  },
  {
    "img": "assets/images/img_7.jpg",
    "title": "Deep Focus",
    "description": "Keep calm and focus with ambient and post-rock music.",
    "song_count": "195 songs",
    "date": "about 10 hr",
    "color": Color(0xFF58546c),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Escaping Time", "duration": "3:20"},
      {"title": "Just Look at You", "duration": "3:07"},
      {"title": "Flowing", "duration": "2:11"},
      {"title": "With Resolve", "duration": "2:09"},
      {"title": "Infinite Sustain", "duration": "2:29"},
      {"title": "Ingénue", "duration": "2:38"},
      {"title": "Hidden Chambers", "duration": "2:49"},
    ]
  },
  {
    "img": "assets/images/img_4.jpg",
    "title": "Lo-Fi Beats",
    "description": "Beats to relax, study and focus.",
    "song_count": "599 songs",
    "date": "about 21 hr",
    "color": Color(0xFFbad6ec),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_2.jpg",
    "title": "Chill Lofi Study Beats",
    "description": "The perfect study beats, twenty four seven.",
    "song_count": "317 songs",
    "date": "about 11 hr",
    "color": Color(0xFF93689a),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_6.jpg",
    "title": "Chill Hits",
    "description": "Kick back to the best new and recent chill tunes.",
    "song_count": "130 songs",
    "date": "about 7 hr",
    "color": Color(0xFFa4c4d3),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_1.jpg",
    "title": "Dark & Stormy",
    "description": "Beautifully dark, dramatic tracks.",
    "song_count": "50 songs",
    "date": "about 17 hr",
    "color": Color(0xFF5e4f78),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Kaleidoscope", "duration": "2:01"},
      {"title": "Larks", "duration": "2:54"},
      {"title": "Homeland", "duration": "2:22"},
      {"title": "Une Danse", "duration": "3:03"},
      {"title": "Almonte", "duration": "2:31"},
      {"title": "Days Like These", "duration": "4:09"},
      {"title": "In questo momento", "duration": "2:40"},
    ]
  },
  {
    "img": "assets/images/img_8.jpg",
    "title": "Feel Good Piano",
    "description": "Positive piano music",
    "song_count": "69 songs",
    "date": "2 hr 14 min",
    "color": Color(0xFFa4c1ad),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Escaping Time", "duration": "3:20"},
      {"title": "Just Look at You", "duration": "3:07"},
      {"title": "Flowing", "duration": "2:11"},
      {"title": "With Resolve", "duration": "2:09"},
      {"title": "Infinite Sustain", "duration": "2:29"},
      {"title": "Ingénue", "duration": "2:38"},
      {"title": "Hidden Chambers", "duration": "2:49"},
    ]
  },
  {
    "img": "assets/images/img_9.jpg",
    "title": "Sad Songs",
    "description": "Beautiful songs to break your heart...",
    "song_count": "60 songs",
    "date": "3 hr 25 min",
    "color": Color(0xFFd9e3ec),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_10.jpg",
    "title": "Mood Booster",
    "description": "Get happy with today's dose of feel-good songs",
    "song_count": "75 songs",
    "date": "3 hr 56 min",
    "color": Color(0xFF4e6171),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  }
];

List homeTopCardOne = [
  {"title": "Liked Songs", "img": "assets/images/home/Art-5.png"},
  {"title": "Augustten Ft jhesy", "img": "assets/images/home/Art-4.png"},
  {"title": "Emotional Songs", "img": "assets/images/home/Art-3.png"},
  {"title": "A Place We Knew", "img": "assets/images/home/Art-2.png"},
  {"title": "Origins/Deluxe", "img": "assets/images/home/Art-1.png"},
  {"title": "1000 Forms Of Fears", "img": "assets/images/home/Art.png"},
];
List homeCarouselTypeOne = [
  {
    "img": "assets/images/home/carousel1/1.png",
    "text0": "Your weekly mixtape of fresh music. Enjoy new music and dramatic",
  },
  {
    "img": "assets/images/home/carousel1/2.png",
    "title": "Numb Little Bug",
    "type": "Single",
    "album": "Em Beihold",
  },
  {
    "img": "assets/images/home/carousel1/3.png",
    "title": "Evering Road (Deluxe)",
    "type": "Album",
    "album": "Tom Grennen",
  },
  {
    "img": "assets/images/home/carousel1/4.png",
    "title": "Numb Little Bug",
    "type": "Single",
    "album": "Em Beihold",
  },
  {
    "img": "assets/images/home/carousel1/5.png",
    "title": "Evering Road (Deluxe)",
    "type": "Album",
    "album": "Tom Grennen",
  },
];
List homeCarouselTypeOne2 = [
  {
    "img": "assets/images/home/carousel2/1.png",
    "text0": "Your weekly mixtape of fresh music. Enjoy new music and dramatic",
  },
  {
    "img": "assets/images/home/carousel2/2.png",
    "title": "Numb Little Bug",
    "type": "Single",
    "album": "Em Beihold",
  },
  {
    "img": "assets/images/home/carousel2/3.png",
    "title": "Evering Road (Deluxe)",
    "type": "Album",
    "album": "Tom Grennen",
  },
  {
    "img": "assets/images/home/carousel2/4.png",
    "title": "Numb Little Bug",
    "type": "Single",
    "album": "Em Beihold",
  },
  {
    "img": "assets/images/home/carousel2/5.png",
    "title": "Evering Road (Deluxe)",
    "type": "Album",
    "album": "Tom Grennen",
  },
];
List homeCarouselTypeTwo = [
  {
    "img": "assets/images/home/carousel3/1.png",
    "title":
        "Maverick City Music, Hillsong UNITED, Hillsong Worship, Better Music"
  },
  {
    "img": "assets/images/home/carousel3/2.png",
    "title": "Ed Sheeran, Passenger, Justin Bieber, Dean Lewis, Taylor Swift"
  },
  {
    "img": "assets/images/home/carousel3/3.png",
    "title": "Yo-Yo Ma, Ludovico Einaudi, Alexis Ffrench, Daniel Hope, Yi..."
  },
  {
    "img": "assets/images/home/carousel3/4.png",
    "title": "Ed Sheeran, Passenger, Justin Bieber, Dean Lewis, Taylor Swift"
  },
  {
    "img": "assets/images/home/carousel3/5.png",
    "title": "Yo-Yo Ma, Ludovico Einaudi, Alexis Ffrench, Daniel Hope, Yi..."
  },
];

List homeCarouselTypeTwo2 = [
  {
    "img": "assets/images/home/carousel4/1.png",
    "title":
        "Maverick City Music, Hillsong UNITED, Hillsong Worship, Better Music"
  },
  {
    "img": "assets/images/home/carousel4/2.png",
    "title": "Ed Sheeran, Passenger, Justin Bieber, Dean Lewis, Taylor Swift"
  },
  {
    "img": "assets/images/home/carousel4/3.png",
    "title": "Yo-Yo Ma, Ludovico Einaudi, Alexis Ffrench, Daniel Hope, Yi..."
  },
  {
    "img": "assets/images/home/carousel4/4.png",
    "title": "Ed Sheeran, Passenger, Justin Bieber, Dean Lewis, Taylor Swift"
  },
  {
    "img": "assets/images/home/carousel4/5.png",
    "title": "Yo-Yo Ma, Ludovico Einaudi, Alexis Ffrench, Daniel Hope, Yi..."
  },
];
List homeCarouselTypeTwo3 = [
  {
    "img": "assets/images/home/carousel5/1.png",
    "title":
        "Maverick City Music, Hillsong UNITED, Hillsong Worship, Better Music"
  },
  {
    "img": "assets/images/home/carousel5/2.png",
    "title": "Ed Sheeran, Passenger, Justin Bieber, Dean Lewis, Taylor Swift"
  },
  {
    "img": "assets/images/home/carousel5/3.png",
    "title": "Yo-Yo Ma, Ludovico Einaudi, Alexis Ffrench, Daniel Hope, Yi..."
  },
  {
    "img": "assets/images/home/carousel5/4.png",
    "title": "Ed Sheeran, Passenger, Justin Bieber, Dean Lewis, Taylor Swift"
  },
  {
    "img": "assets/images/home/carousel5/5.png",
    "title": "Yo-Yo Ma, Ludovico Einaudi, Alexis Ffrench, Daniel Hope, Yi..."
  },
];
List homeCarouselTypeTwo4 = [
  {
    "img": "assets/images/home/carousel6/1.png",
    "title":
        "Maverick City Music, Hillsong UNITED, Hillsong Worship, Better Music"
  },
  {
    "img": "assets/images/home/carousel6/2.png",
    "title": "Ed Sheeran, Passenger, Justin Bieber, Dean Lewis, Taylor Swift"
  },
  {
    "img": "assets/images/home/carousel6/3.png",
    "title": "Yo-Yo Ma, Ludovico Einaudi, Alexis Ffrench, Daniel Hope, Yi..."
  },
  {
    "img": "assets/images/home/carousel6/4.png",
    "title": "Ed Sheeran, Passenger, Justin Bieber, Dean Lewis, Taylor Swift"
  },
  {
    "img": "assets/images/home/carousel6/5.png",
    "title": "Yo-Yo Ma, Ludovico Einaudi, Alexis Ffrench, Daniel Hope, Yi..."
  },
];
List homeCarouselTypeTwo5 = [
  {
    "img": "assets/images/home/carousel7/1.png",
    "title":
        "Maverick City Music, Hillsong UNITED, Hillsong Worship, Better Music"
  },
  {
    "img": "assets/images/home/carousel7/2.png",
    "title": "Ed Sheeran, Passenger, Justin Bieber, Dean Lewis, Taylor Swift"
  },
  {
    "img": "assets/images/home/carousel7/3.png",
    "title": "Yo-Yo Ma, Ludovico Einaudi, Alexis Ffrench, Daniel Hope, Yi..."
  },
  {
    "img": "assets/images/home/carousel7/4.png",
    "title": "Ed Sheeran, Passenger, Justin Bieber, Dean Lewis, Taylor Swift"
  },
  {
    "img": "assets/images/home/carousel7/5.png",
    "title": "Yo-Yo Ma, Ludovico Einaudi, Alexis Ffrench, Daniel Hope, Yi..."
  },
];

// ! Search page JSONs

List topGenres = [
  'assets/images/search/topGenres/Pop.png',
  'assets/images/search/topGenres/Christian&Gospel.png',
  'assets/images/search/topGenres/Indie.png',
  'assets/images/search/topGenres/Rock.png',
];
