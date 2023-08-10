//import 'dart:async';
import 'package:bookingnonton/halaman_detail.dart';
import 'package:bookingnonton/halaman_detailBanner.dart';
import 'package:bookingnonton/kategori.dart';
import 'package:bookingnonton/login_view.dart';
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
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

  final List<String> judulImageBanner = [
    'TRANSFORMERS',
    'JOHN WICK',
    'SWEET HOME',
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> aktorImageBanner = [
    'Anthony Ramos, Dominique Fishback, Peter Cullen, Ron Perlman, Pete Davidson, Michelle Yeoh, Peter Dinklage',
    'Keanu Reeves, Halle Berry, Ian McShane, Lance Reddick, Laurence Fishburne, Yayan Ruhian dan Cecep Arif Rahman',
    'Song Kang, Lee Jin Wook, Lee Si Young, Lee Do Hyun, Kim Nam Hee, Park Gyu Young.',
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> kategoriImageBanner = [
    'Fantasi, Fiksi Ilmiah, Laga, Petualangan',
    'Laga, Kejahatan',
    'Drama, Horror, Fiksi Pasca Apokaliptik',
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> sinopsisImageBanner = [
    'Di dunia yang terluka oleh perang antara manusia dan Transformers, Optimus Prime telah pergi. Kunci untuk menyelamatkan masa depan terletak pada masa lalu, di titik di mana para Transformer pertama kali tiba di Bumi. Dalam upaya untuk menyelamatkan dunia, Cade Yeager (Mark Wahlberg), seorang montir dan teman setia Autobot Bumblebee, bersekutu dengan seorang profesor Oxford yang eksentrik, Sir Edmund Burton (Anthony Hopkins), dan sekelompok Autobot yang tersisa.',
    'Setelah kejadian di film sebelumnya, John Wick (diperankan oleh Keanu Reeves) kini menjadi buronan internasional dengan harga kepala yang tinggi. Ia dikeluarkan dari Continental, hotel rahasia yang melindungi para pembunuh bayaran, dan diberi status "ekskomunikasi" oleh organisasi rahasia pembunuh bayaran yang disebut "High Table."',
    'Film ini mengisahkan tentang seorang pemuda bernama Cha Hyun-soo (diperankan oleh Song Kang), yang merasa terpuruk setelah mengalami kehilangan tragis dalam hidupnya. Ia merasa hidupnya hampa dan tak berarti lagi. Suatu hari, dunianya berubah drastis ketika wabah misterius menyebar di seluruh kota dan mengubah manusia menjadi monster buas yang haus darah.',
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> imageNewAdded = [
    'https://cdn1-production-images-kly.akamaized.net/1IAR-AWkgYDaxop5DDvK-eCTLdc=/800x1066/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4022571/original/047840300_1652510347-X.jpeg',
    'https://static.wikia.nocookie.net/onepiece/images/3/34/One_Piece_Film_Red_Poster_Visual.png/revision/latest?cb=20221211020850&path-prefix=id',
    'https://4.bp.blogspot.com/-PQBeF9eilyw/W_HMRuUMBtI/AAAAAAAACpI/nO3yH6ZzOB04WyzBFu9xf2-R0eVF0HtaQCLcBGAs/s1600/aqua%2B1.jpg',
    'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//98/MTA-29054563/no-brand_no-brand_full01.jpg',
    'https://www.bestmovieposters.co.uk/wp-content/uploads/2019/01/fUWo-msb-1.jpeg',
    'https://cdn11.bigcommerce.com/s-ydriczk/images/stencil/1280x1280/products/87108/88101/edge_of_tomorrow_regular_buy_original_movie_posters_at_starstills__48110.1668162591.jpg?c=2',
    'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/06/06/106192063.jpg',
    // Tambahkan URL gambar sesuai kebutuhan
  ];

  final List<String> judulNewAdded = [
    'GATOT KACA',
    'ONE PIECE',
    'AQUAMAN',
    'SHANG CHI',
    'ARRIVAL',
    'EDGE OF TOMORROW',
    'RANAH 3 WARNA',
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> aktorNewAdded = [
    'Rizky Nazar, Yasmin Napper, Omar Daniel, Ali Fikry, Yati Surachman, Jerome Kurnia',
    'Luffy, Zoro, Copper, Usop, sanji, Robin, Nami',
    'Jason Momoa, Amber Heard, Willem Dafoe, Patrick Wilson, Nicole Kidman, Dolph Lundgren',
    'Simu Liu, Awkwafina, Tony Leung Chiu-wai, Michelle Yeoh, Wah Yuen, Menger Zhang, Ben Kingsley',
    'Amy Adams,Jeremy Renner, Kolonel Weber, Agente Halpern,Jenderal Shang',
    'Tom Cruise, Emily Blunt, Bill Paxton, Brendan Gleeson, Noah Taylor, Kick Gurry, Dragomir Mrsic, Charlotte Riley, Jonas Armstrong',
    'Arbani Yasiz, Amanda Rawles, Teuku Rassya, David Chalik, Maudy Koesnaedi, Tanta Ginting, Donny Alamsyah, Lukman Sardi',
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> kategoriNewAdded = [
    'Laga, Fiksi Ilmiah, Petualangan, Pahlawan Super, Fantasi, Drama',
    'Aksi, Petualangan Fantasi',
    'Laga, Pahlawan Super, Fiksi Ilmiah, Petualangan',
    'Fantasi, Fiksi Ilmiah, Laga, Petualangan',
    'Laga, Pahlawan Super, Fiksi Ilmiah',
    'Fiksi Ilmiah, Cerita Seru, Drama, Misteri',
    'Drama, Religi',
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> sinopsisNewAdded = [
    'Gatot Kaca adalah seorang pahlawan hebat yang memiliki kekuatan fisik yang luar biasa sejak lahir. Ia adalah putra dari Bima, salah satu Pandawa, dan istrinya, Arimbi atau Hidimbi, yang berasal dari keturunan Raksasa. Gatot Kaca tumbuh menjadi sosok yang berani, bijaksana, dan setia pada kesetiaan serta kebenaran.',
    '"One Piece" adalah film animasi Jepang yang didasarkan pada manga dan anime populer berjudul sama, karya Eiichiro Oda. Film ini mengikuti petualangan seorang bajak laut muda bernama Monkey D. Luffy dan krunya yang berusaha mencari harta karun legendaris yang dikenal sebagai "One Piece." Mereka mengarungi lautan Grand Line, menghadapi bahaya, musuh-musuh kuat, dan sekutu yang tak terduga dalam perjalanan mereka.',
    '"Aquaman" mengisahkan tentang Arthur Curry (diperankan oleh Jason Momoa), seorang pria yang memiliki kemampuan luar biasa karena merupakan setengah manusia dan setengah Atlantean. Ia adalah anak dari Tom Curry (diperankan oleh Temuera Morrison), seorang manusia, dan Atlanna (diperankan oleh Nicole Kidman), ratu kerajaan Atlantis.',
    '"Shang-Chi and the Legend of the Ten Rings" mengikuti perjalanan hidup seorang pria bernama Shang-Chi, yang awalnya hidup dalam ketenangan dan menyamar sebagai Shaun. Ia adalah seorang pekerja sederhana di San Francisco yang menjalani kehidupan biasa. Namun, ketenangannya terganggu ketika masa lalunya datang menghantuinya.',
    'Kisahnya berpusat pada Dr. Louise Banks (diperankan oleh Amy Adams), seorang ahli linguistik yang dihadapkan pada situasi penuh misteri ketika dua belas wahana asing tiba-tiba muncul di berbagai lokasi di seluruh dunia. Sebagai tanggapan atas kedatangan misterius ini, pemerintah Amerika Serikat membentuk tim khusus untuk menyelidiki dan berkomunikasi dengan makhluk-makhluk asing tersebut.',
    'Di masa depan, Bumi diserang oleh makhluk luar angkasa misterius yang dikenal sebagai "Mimic." Mereka menyebar dengan cepat dan menghancurkan kota-kota besar di seluruh dunia dengan teknologi pertahanan yang tak terkalahkan. Dalam upaya untuk menghadapi invasi ini, pasukan gabungan dari berbagai negara berkumpul di Eropa untuk melawan Mimic dalam Pertempuran Normandia yang mendebarkan.',
    '"Ranah 3 Warna" adalah sebuah film drama Indonesia yang diadaptasi dari novel berjudul sama karya Remy Sylado. Film ini mengisahkan tentang perjalanan hidup seorang perempuan bernama Astrid (diperankan oleh Pevita Pearce) yang tumbuh di lingkungan yang keras dan penuh konflik.',
    // Tambahkan teks sesuai kebutuhan
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

  final List<String> judulTren = [
    'JOKER',
    'BLACK PANTHER',
    'SPIDERMAN',
    'MY STUPID BOS',
    'JOHN WICK',
    'FAST & FURIOUS 9',
    'JENDELA SERIBU SUNGAI',
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> aktorTren = [
    'Joaquin Phoenix, Robert De Niro, Zazie Beetz, Frances Conroy, Brett Cullen, Shea Whigham, Bill Camp, Glenn Fleshler, Leigh Gill',
    'Chadwick Boseman, Michael B. Jordan, Lupita Nyongo, Danai Gurira, Martin Freeman, Daniel Kaluuya',
    'Tobey Maguire, Andrew Garfield, Tom Holland',
    'Reza Rahadian, Bunga Citra Lestari, Alex Abbad, Ronny P. Tjandra, Bront Palarae',
    'Keanu Reeves, Michael Nyqvist, Alfie Allen, Willem Dafoe, Dean Winters',
    'Vin Diesel, Michelle Rodriguez, Tyrese Gibson, Ludacris (Chris Bridges), Jordana Brewster',
    'Agla Artalidia, Olla Ramlan, Ariyo Wahab, Ibrahim Baim Imran, Ajil Ditto',
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> kategoriTren = [
    'Laga, Aksi, Petualangan, Psikologis',
    'Aksi, Petualangan, Fantasi, Laga, Pahlawan, Ilmiah',
    'Laga, Pahlawan Super, Fiksi Ilmiah, Petualangan',
    'Komedi, Drama',
    'Laga, Kejahatan, Misteri, Petualangan',
    'Laga, Petualangan, Kejahatan, Seru',
    'Petualangan',
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> sinopsisTren = [
    '"Joker" menceritakan kisah kehidupan Arthur Fleck, seorang pria yang hidup di Gotham City pada era 1980-an. Arthur adalah seorang komedian gagal yang menderita gangguan mental dan hidup dalam kemiskinan. Dia merasa terasing dari masyarakat yang kasar dan tidak peduli, dan terus-menerus dihina dan dilecehkan oleh orang-orang di sekelilingnya.',
    'TChalla (diperankan oleh Chadwick Boseman) kembali ke negara fiksi Wakanda setelah kematian ayahnya, Raja TChaka. Wakanda adalah sebuah negara yang sangat maju secara teknologi dan dikenal sebagai tempat penghasil Vibranium, sebuah logam langka dan kuat yang membuatnya menjadi negara yang tersembunyi dari dunia luar.',
    '"Spider-Man" adalah sebuah film superhero yang mengisahkan petualangan ikonik Peter Parker yang menjadi pahlawan super dengan kemampuan laba-laba setelah terkena gigitan laba-laba yang telah dimodifikasi secara genetik. Film ini menceritakan perjalanan hidup Peter Parker yang awalnya hanya seorang remaja biasa, namun segala sesuatu berubah ketika ia mendapatkan kekuatan super yang luar biasa.',
    'Film "My Stupid Boss" mengisahkan tentang seorang wanita bernama Diana (Bunga Citra Lestari) yang mendapatkan pekerjaan sebagai sekretaris di sebuah perusahaan besar dengan bos yang sangat kaku dan eksentrik, Bossman (Reza Rahadian). Bossman adalah seorang direktur perusahaan yang sangat cerdas, tetapi kepribadiannya yang eksentrik dan tingkah lakunya yang aneh sering membuat bawahannya merasa kesulitan.',
    '"John Wick" adalah film aksi yang menceritakan tentang mantan pembunuh bayaran legendaris bernama John Wick, diperankan oleh Keanu Reeves. Setelah kehilangan istri tercintanya, Helen, karena suatu penyakit, John Wick memutuskan untuk pensiun dari dunia kejahatan dan hidup dalam kesunyian.',
    '"Fast & Furious 9" (juga dikenal sebagai "F9") merupakan sekuel dari franchise aksi balap mobil yang sangat populer, Fast & Furious. Film ini mengisahkan tentang kelanjutan petualangan Dominic Toretto (Vin Diesel) dan kelompoknya yang sudah menjadi keluarga, ketika mereka harus menghadapi ancaman baru yang sangat pribadi.',
    'Di tengah hutan belantara di pedalaman Indonesia, terdapat sebuah desa kecil yang tersembunyi di antara seribu sungai. Desa ini adalah tempat di mana alam dan budaya hidup dalam harmoni sempurna. Di sana tinggal seorang pemuda bernama Andi (diperankan oleh Iqbaal Ramadhan), yang memiliki semangat petualang yang tinggi. Dia menjalani kehidupan yang sederhana bersama keluarganya, memelihara adat dan tradisi nenek moyang mereka.',
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> imageRekomendasi = [
    'https://cdns.klimg.com/kapanlagi.com/p/journey-2.jpg',
    'https://pbs.twimg.com/media/FTgVSiMacAAXSL8.jpg',
    'https://www.ngopibareng.id/images/uploads/2022/2022-05-12/daftar-film-hollywood-yang-tayang-bulan-mei-2022--01',
    'https://www.baperanews.com/uploads/images/2023/01/image_750x_63c6498abe64c.jpg',
    'https://www.orientaserie.it/wp-content/uploads/2022/09/FCKdHXVXEAsaylL.jpg',
    'https://pbs.twimg.com/media/DnT6ufdVYAIukTP.jpg:large',
    'https://awsimages.detik.net.id/community/media/visual/2021/01/22/poster-vincenzo-song-joong-ki.jpeg?w=1400',
    // Tambahkan URL gambar sesuai kebutuhan
  ];

  final List<String> judulRekomendasi = [
    'JOURNEY 2',
    'THOR',
    'DOCTOR STRANGE',
    'ANTMAN',
    'SQUID GAME',
    'VENOM',
    'VINCENZO',
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> aktorRekomendasi = [
    'Dwayne "The Rock" Johnson, Josh Hutcherson, Vanessa Hudgens, Michael Caine, Luis Guzman',
    'Chris Hemsworth, Natalie Portman, Tom Hiddleston, Anthony Hopkins, Stellan Skarsgård',
    'Benedict Cumberbatch, Chiwetel Ejiofor, Rachel McAdams, Benedict Wong, Mads Mikkelsen',
    'Paul Rudd, Michael Douglas, Evangeline Lilly, Corey Stoll, Bobby Cannavale',
    'Lee Jung-jae, Park Hae-soo, Wi Ha-joon, Jung Ho-yeon, O Yeong-su',
    'Tom Hardy, Michelle Williams, Riz Ahmed, Scott Haze, Reid Scott',
    'Song Joong-ki, Jeon Yeo-been, Ok Taec-yeon, Kwak Dong-yeon, Kim Yeo-jin',
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> kategoriRekomendasi = [
    'Laga, Petualangan, Fantasi, Komedi, Ilmiah',
    'Aksi, Petualangan, Fantasi, Laga, Pahlawan, Ilmiah, Komedi, Persahabatan',
    'Laga, Pahlawan Super, Fiksi Ilmiah, Petualangan, Fantasi',
    'Laga, Pahlawan Super, Fiksi Ilmiah, Komedi, Fantasi',
    'Laga, Kejahatan, Kekerasan, Petualangan',
    'Aksi, Petualangan, Fantasi, Laga, Pahlawan, Ilmiah, Komedi, Persahabatan',
    'Dark Comedy',
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> sinopsisRekomendasi = [
    'Journey 2: The Mysterious Island adalah film petualangan fantastis yang menceritakan tentang seorang remaja bernama Sean Anderson, yang diperankan oleh Josh Hutcherson. Sean adalah seorang pemuda yang penuh petualangan dan sangat tertarik dengan mitos dan legenda. Dia menemukan kode misterius yang mengarah ke Pulau Misterius, tempat di mana kakeknya, Alexander Anderson, diyakini telah menghilan',
    'Film ini mengisahkan tentang Dewa Petir, Thor Odinson, yang merupakan pewaris tahta di Asgard, sebuah kerajaan surgawi. Namun, setelah perilaku yang nekat dan tidak bertanggung jawab, ayahnya, Raja Odin, menghukumnya dan mengusirnya dari Asgard ke Bumi. Thor harus belajar menjadi pemimpin yang bijaksana dan penuh tanggung jawab sebelum layak untuk kembali ke rumahnya.',
    'Dr. Stephen Strange (diperankan oleh Benedict Cumberbatch) adalah seorang ahli bedah saraf terkenal yang sangat berbakat namun juga sombong dan arogan. Namun, segalanya berubah ketika ia mengalami kecelakaan mobil yang parah yang mengakibatkan kerusakan sarafnya. Akibatnya, ia kehilangan kemampuan tangan kirinya yang sangat berharga, mengancam karirnya yang gemilang sebagai ahli bedah.',
    '"Ant-Man" adalah film pahlawan super berdasarkan karakter Marvel Comics dengan nama yang sama. Film ini menceritakan kisah seorang pria bernama Scott Lang, yang diperankan oleh Paul Rudd. Scott Lang adalah seorang pencuri yang baru saja keluar dari penjara dan berusaha untuk memperbaiki hidupnya agar bisa lebih dekat dengan putri kecilnya, Cassie.',
    '"Squid Game" adalah sebuah serial drama Korea Selatan yang menjadi fenomena global. Serial ini mengisahkan tentang 456 orang yang berjuang melawan keputusasaan dan kesulitan ekonomi mereka dengan berpartisipasi dalam permainan yang penuh bahaya dan mematikan. Kisahnya berfokus pada seorang pria bernama Gi-hun, yang menghadapi masalah keuangan yang parah, kehilangan pekerjaan, dan perceraian yang sulit.',
    'Film "Venom" mengisahkan tentang kehidupan Eddie Brock (diperankan oleh Tom Hardy), seorang jurnalis yang ambisius dan memiliki pandangan tajam dalam mencari berita. Eddie bekerja untuk sebuah perusahaan berita besar di San Francisco dan telah meraih kesuksesan dalam kariernya.',
    'Vincenzo Cassano (diperankan oleh Song Joong-ki) adalah seorang pengacara Italia dan mafia yang diadopsi oleh keluarga Mafia Cassano sejak kecil. Setelah kehilangan kedua orang tuanya, ia tumbuh menjadi sosok yang cerdas dan dingin dalam melaksanakan tugas-tugasnya. Namun, ketika ada konflik kepentingan dengan kelompok Mafia lain, Vincenzo memutuskan untuk pergi ke Korea Selatan dengan misi menyembunyikan emas yang dicuri dari mafia.',
    // Tambahkan teks sesuai kebutuhan
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

  final List<String> judulLanjutkan = [
    'SWEET HOME',
    'MY NAME',
    'DOCTOR STRANGE',
    'ANTMAN',
    'SQUID GAME',
    'VENOM',
    'VINCENZO',
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> aktorLanjutkan = [
    'Song Kang, Lee Jin Wook, Lee Si Young, Lee Do Hyun, Kim Nam Hee, Park Gyu Young.',
    'Oh Hye-jin, Park Hee-soon, Ahn Bo-hyun, Kim Sang-ho, Lee Hak-joo, Chang Ryul, Yoon Kyung-ho',
    'Benedict Cumberbatch, Chiwetel Ejiofor, Rachel McAdams, Benedict Wong, Mads Mikkelsen',
    'Paul Rudd, Michael Douglas, Evangeline Lilly, Corey Stoll, Bobby Cannavale',
    'Lee Jung-jae, Park Hae-soo, Wi Ha-joon, Jung Ho-yeon, O Yeong-su',
    'Tom Hardy, Michelle Williams, Riz Ahmed, Scott Haze, Reid Scott',
    'Song Joong-ki, Jeon Yeo-been, Ok Taec-yeon, Kwak Dong-yeon, Kim Yeo-jin, Yoon Kyung-ho',
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> kategoriLanjutkan = [
    'Fantasi, Fiksi Ilmiah, Laga, Petualangan',
    'Laga, Kejahatan, Cerita Seru, Noir',
    'Laga, Pahlawan Super, Fiksi Ilmiah, Petualangan, Fantasi',
    'Laga, Pahlawan Super, Fiksi Ilmiah, Komedi, Fantasi',
    'Laga, Kejahatan, Kekerasan, Petualangan',
    'Aksi, Petualangan, Fantasi, Laga, Pahlawan, Ilmiah, Komedi, Persahabatan',
    'Dark Comedy',
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> sinopsisLanjutkan = [
    'Film ini mengisahkan tentang seorang pemuda bernama Cha Hyun-soo (diperankan oleh Song Kang), yang merasa terpuruk setelah mengalami kehilangan tragis dalam hidupnya. Ia merasa hidupnya hampa dan tak berarti lagi. Suatu hari, dunianya berubah drastis ketika wabah misterius menyebar di seluruh kota dan mengubah manusia menjadi monster buas yang haus darah.',
    'Drama Korea yang mengusung genre crime, action dan thriller ini mengisahkan Yoo Ji Woo yang harus menyaksikan sendiri kematian ayahnya. Ji Woo pun bertekad untuk mencari tahu siapa yang membunuh ayahnya tersebut. Kehidupan Ji Woo pasca kematian ayahnya sangat berat.',
    'Dr. Stephen Strange (diperankan oleh Benedict Cumberbatch) adalah seorang ahli bedah saraf terkenal yang sangat berbakat namun juga sombong dan arogan. Namun, segalanya berubah ketika ia mengalami kecelakaan mobil yang parah yang mengakibatkan kerusakan sarafnya. Akibatnya, ia kehilangan kemampuan tangan kirinya yang sangat berharga, mengancam karirnya yang gemilang sebagai ahli bedah.',
    '"Ant-Man" adalah film pahlawan super berdasarkan karakter Marvel Comics dengan nama yang sama. Film ini menceritakan kisah seorang pria bernama Scott Lang, yang diperankan oleh Paul Rudd. Scott Lang adalah seorang pencuri yang baru saja keluar dari penjara dan berusaha untuk memperbaiki hidupnya agar bisa lebih dekat dengan putri kecilnya, Cassie.',
    '"Squid Game" adalah sebuah serial drama Korea Selatan yang menjadi fenomena global. Serial ini mengisahkan tentang 456 orang yang berjuang melawan keputusasaan dan kesulitan ekonomi mereka dengan berpartisipasi dalam permainan yang penuh bahaya dan mematikan. Kisahnya berfokus pada seorang pria bernama Gi-hun, yang menghadapi masalah keuangan yang parah, kehilangan pekerjaan, dan perceraian yang sulit.',
    'Film "Venom" mengisahkan tentang kehidupan Eddie Brock (diperankan oleh Tom Hardy), seorang jurnalis yang ambisius dan memiliki pandangan tajam dalam mencari berita. Eddie bekerja untuk sebuah perusahaan berita besar di San Francisco dan telah meraih kesuksesan dalam kariernya.',
    'Vincenzo Cassano (diperankan oleh Song Joong-ki) adalah seorang pengacara Italia dan mafia yang diadopsi oleh keluarga Mafia Cassano sejak kecil. Setelah kehilangan kedua orang tuanya, ia tumbuh menjadi sosok yang cerdas dan dingin dalam melaksanakan tugas-tugasnya. Namun, ketika ada konflik kepentingan dengan kelompok Mafia lain, Vincenzo memutuskan untuk pergi ke Korea Selatan dengan misi menyembunyikan emas yang dicuri dari mafia.',
    // Tambahkan teks sesuai kebutuhan
  ];

  final List<String> textList = [
    'Action',
    'Crime',
    'Comedy',
    'Drama',
    'Horror',
    'Anime',
    'Romance',
    // Tambahkan teks sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NONTON KUY!'),
        backgroundColor: Colors.grey[800],
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
                            builder: (context) => DetailBannerPage(
                              imageUrl: url,
                              title: judulImageBanner[index],
                              actor: aktorImageBanner[index],
                              category: kategoriImageBanner[index],
                              synopsis: sinopsisImageBanner[index],
                            ),
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          url,
                          fit: BoxFit.fill,
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
                          ? Colors.redAccent
                          : Colors.blueGrey,
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Kategori(item: textList[index]),
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
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageNewAdded.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              imageUrl: imageNewAdded[index],
                              title: judulNewAdded[index],
                              actor: aktorNewAdded[index],
                              category: kategoriNewAdded[index],
                              synopsis: sinopsisNewAdded[index],
                            ),
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
                            fit: BoxFit.fill,
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
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageTren.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              imageUrl: imageTren[index],
                              title: judulTren[index],
                              actor: aktorTren[index],
                              category: kategoriTren[index],
                              synopsis: sinopsisTren[index],
                            ),
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
                            fit: BoxFit.fill,
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
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageRekomendasi.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              imageUrl: imageRekomendasi[index],
                              title: judulRekomendasi[index],
                              actor: aktorRekomendasi[index],
                              category: kategoriRekomendasi[index],
                              synopsis: sinopsisRekomendasi[index],
                            ),
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
                            fit: BoxFit.fill,
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
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageLanjutNonton.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              imageUrl: imageLanjutNonton[index],
                              title: judulLanjutkan[index],
                              actor: aktorLanjutkan[index],
                              category: kategoriLanjutkan[index],
                              synopsis: sinopsisLanjutkan[index],
                            ),
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
                            fit: BoxFit.fill,
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
