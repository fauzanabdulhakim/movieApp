//import 'dart:async';
import 'package:bookingnonton/halaman_detail.dart';
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(SearchApp());
}

class SearchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentSlide = 0;

  final List<String> imageBanner = [
    'https://wallpapershome.com/images/wallpapers/transformers-the-last-knight-1920x1080-transformers-5-4k-13755.jpg',
    'https://m.media-amazon.com/images/S/pv-target-images/c69c3dc2389404590a90c421f5cf68eb4e4e6f3bc584ab557afcd7e8a3a28f78._UR1920,1080_.jpg',
    'https://theubj.com/wp-content/uploads/2022/09/Sweet-Home.jpg',
    // Tambahkan URL gambar sesuai kebutuhan
  ];

  final List<String> imageNewAdded = [
    'https://cdn1-production-images-kly.akamaized.net/1IAR-AWkgYDaxop5DDvK-eCTLdc=/800x1066/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4022571/original/047840300_1652510347-X.jpeg',
    'https://wallpapercave.com/wp/wp1945912.jpg',
    'https://wallpapercave.com/wp/1RG7Mvh.jpg',
    'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//98/MTA-29054563/no-brand_no-brand_full01.jpg',
    'https://www.bestmovieposters.co.uk/wp-content/uploads/2019/01/fUWo-msb-1.jpeg',
    'https://cdn11.bigcommerce.com/s-ydriczk/images/stencil/1280x1280/products/87108/88101/edge_of_tomorrow_regular_buy_original_movie_posters_at_starstills__48110.1668162591.jpg?c=2',
    'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/06/06/106192063.jpg',
    // Tambahkan URL gambar sesuai kebutuhan
  ];

  final List<String> imageTren = [
    'https://cdn0-production-images-kly.akamaized.net/hWZDtIZQU3g1qFWc7dFM3OWhTq0=/800x1066/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3045373/original/052979700_1581249544-Joker.jpg',
    'https://dl.kaskus.id/i.imgur.com/Q1Nc8q4.jpg',
    'https://cdn0-production-images-kly.akamaized.net/BOUMSHt9C0jP141q9IliY9b2C90=/800x1066/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3626225/original/083910500_1636362148-FDo0mohVQAAP5Td.jpg',
    'https://m.media-amazon.com/images/M/MV5BMzk1YzRkNmMtMTEzMC00MzhiLThhMWQtNzE2YzgzYWVmYzZhXkEyXkFqcGdeQXVyNjIwMTgzMTg@._V1_.jpg',
    'https://pbs.twimg.com/media/D4FVhxlWsAA2N61.jpg',
    'https://cdn.kinocheck.com/i/vz25ur41fa.jpg',
    'https://aws-images-prod.sindonews.net/dyn/600/pena/sindo-article/original/2022/12/09/Jendela%20Seribu%20Sungai%20(ist)%2000.jpg',
    // Tambahkan URL gambar sesuai kebutuhan
  ];

  final List<String> imageRekomendasi = [
    'https://cdns.klimg.com/kapanlagi.com/p/journey-2.jpg',
    'https://pbs.twimg.com/media/FTgVSiMacAAXSL8.jpg',
    'https://www.ngopibareng.id/images/uploads/2022/2022-05-12/daftar-film-hollywood-yang-tayang-bulan-mei-2022--01',
    'https://www.baperanews.com/uploads/images/2023/01/image_750x_63c6498abe64c.jpg',
    'https://www.orientaserie.it/wp-content/uploads/2022/09/FCKdHXVXEAsaylL.jpg',
    'https://assets.ayobandung.com/crop/0x0:0x0/x/photo/2023/02/22/Poster-terbaru-Island-bagian-2-telah-dibagikan-TVING-1762435089.jpg',
    'https://awsimages.detik.net.id/community/media/visual/2021/01/22/poster-vincenzo-song-joong-ki.jpeg?w=1400',
    // Tambahkan URL gambar sesuai kebutuhan
  ];

  final List<String> imageLanjutNonton = [
    'https://akcdn.detik.net.id/community/media/visual/2020/12/03/sweet-home.jpeg?w=1080',
    'https://cdn-2.tstatic.net/tribunnews/foto/bank/originals/poster-drama-terbaru-han-so-hee-berjudul-my-name-segera-tayang-pada-15-oktober-2021.jpg',
    'https://www.kabarbintang.id/wp-content/uploads/2021/11/Shadow-Beauty-Poster.jpeg',
    'https://cdns.klimg.com/kapanlagi.com/p/strangerfromhell2019derv5bntlkztc2yzktzg.jpg',
    'https://cinemags.org/wp-content/uploads/2020/12/tom-and-jerry-poster.jpg',
    'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/03/03/2803198924.jpg',
    'https://ramenparados.com/wp-content/uploads/2021/04/TokyoRevengersLive00-724x1024.jpg',
    // Tambahkan URL gambar sesuai kebutuhan
  ];

  final List<String> textList = [
    'Action',
    'Crime',
    'Comedy',
    'Drama',
    'Horror',
    'Anime',
    'Romace',
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> textList2 = [
    'Film Baru 1',
    'Film Baru 2',
    'Film Baru 3',
    'Film Baru 4',
    'Film Baru 5',
    'Film Baru 6',
    'Film Baru 7'
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> titles = [
    'Movie Title 1',
    'Movie Title 2',
    'Sweet Home Season 2',
    'Movie Title 4',
    // Add more movie titles here...
  ];

  final List<String> actors = [
    'Actor Name 1',
    'Actor Name 2',
    'Actor Name 3',
    'Actor Name 4',
    // Add more actor names here...
  ];

  final List<String> categories = [
    'Category 1',
    'Category 2',
    'Horror, Action',
    'Category 4',
    // Add more categories here...
  ];

  final List<String> synopses = [
    'Synopsis 1',
    'Synopsis 2',
    'Synopsis 3',
    'Synopsis 4',
    // Add more synopses here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 210,
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    enlargeCenterPage: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentSlide = index;
                      });
                    },
                  ),
                  items: imageBanner.map((url) {
                    int index = imageBanner.indexOf(url);
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              imageUrl: url,
                              title: titles[index],
                              actor: actors[index],
                              category: categories[index],
                              synopsis: synopses[index],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                        child: Image.network(
                          url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageBanner.map((url) {
                  int index = imageBanner.indexOf(url);
                  return Container(
                    width: 7,
                    height: 7,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index == _currentSlide
                          ? Colors.blueAccent
                          : Colors.grey,
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 10),
              Container(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: textList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(textList[index]),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(textList[index]),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Baru Ditambahkan',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageNewAdded.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(textList2[index]),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      child: Container(
                        width: 100,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(
                            imageNewAdded[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sedang Tren Saat Ini',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageTren.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(textList2[index]),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      child: Container(
                        width: 100,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(
                            imageTren[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Rekomendasi Untukmu',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageRekomendasi.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(textList2[index]),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      child: Container(
                        width: 100,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(
                            imageRekomendasi[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Lanjutkan Menonton',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageLanjutNonton.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(textList2[index]),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      child: Container(
                        width: 100,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(
                            imageLanjutNonton[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
          Text(
            'Nonton Kuy',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
