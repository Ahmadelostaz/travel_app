import 'package:flutter/cupertino.dart';

class Travel with ChangeNotifier {
  late String name;
  late String location;
  late String url;
  late String detail;
  Travel(this.name, this.location, this.url, this.detail);
  static List<Travel> getTravelBlogs() {
    return [
      Travel('Sea of beauty', 'Greek', 'assets/images/travel1.jpeg',
          'With a land area of over 50,000 square miles and a population of 10.7 million, Greece is located in Europe, at the southernmost tip of the Balkan Peninsula. Greece comprises a large mainland peninsula between the Ionian and Aegean seas, surrounded by an archipelago of about 6,000 islands, of which over 200 are inhabited. Sharing its northern land borders with Albania, North Macedonia, and Bulgaria, Greece us uniquely positioned at the intersection of Europe, Asia, and Africa.'),
      Travel('Camels on desert', 'SaudiArabia', 'assets/images/travel2.jpeg',
          'Discover the essence of Saudi, where you’ll find a mixture of global diversity that has emerged from this cradle of many human civilizations. Explore the rock inscriptions and archaeological cities dating back to more than 10,000 years. Today, Saudi is a proud home of several heritage sites registered in the UNESCO World Heritage List. Each season of the year offers a distinct Saudi experience. Whether you choose to climb to the top of the highest mountain, 3000 meters above sea level, dive into the magical wonders of the corals and marine life of the Red Sea or cross the largest palm'),
      Travel('Turkish wonder ', 'Istanbul', 'assets/images/travel3.jpeg',
          'There is nowhere in the world quite like Istanbul. Spread across two continents, Istanbul is a city of layers and contrasts.  With historical sights like the Hagia Sophia and Topkapi Palace brushing up against buzzing bars and lively cafes, with Ottoman-era mosques a short walk from contemporary art museums and galleries, with traditional carpet shops around the corner from trendy boutiques, Istanbul is a city of old and new coexisting. The city never stops moving.'),
      Travel('Colors festival ', 'India', 'assets/images/travel4.jpeg',
          'It is often said that India is not a country, but a continent. Stretching from the frozen summits of the Himalayas to the tropical greenery of Kerala, India encompass an incomparable range of landscapes, cultures and people. Travelling in India allows you to meet people of several from the world’s great faiths, encounter temple rituals performed since the time of the Egyptian Pharaohs, and see ancient buildings erected centuries before the Taj Mahal.'),
      Travel('Black forest ', 'Germany', 'assets/images/travel5.jpeg',
          'Germany is blessed with some of Europe\'s most high-powered sights. There\'s spectacular scenery — the jagged Alps, flower-filled meadows, rolling hills of forests and farms, and mighty rivers — dotted all over with castles and churches of every variety. In Deutschland\'s idyllic half-timbered villages, you can enjoy strudel at the bakery or sip a stein of beer while men in lederhosen play oompah music. And don\'t overlook the "real" Germany of today — a world of high-tech trains, gleaming cities, social efficiency, and world-class museums celebrating many of history greatest cultural achievements.'),
    ];
  }

  static List<Travel> getBottomBlogs() {
    return [
      Travel('Amazon River', 'Brazil', 'assets/images/travel6.jpeg',
          'Meet the locals at Copacabana Beach in Rio or spend an evening learning how to dance the samba. Cruise the wetlands of the Pantanal or the Amazon River while keeping an eye out for exotic wildlife like toucans and pink dolphins. Gorge on a barbecue feast, and cool off with caipirinha, Brazil’s official cocktail of sugarcane liquor, sugar, and lime.Throw in passionate fútbol (soccer) matches, beautiful people, and low prices, and it’s easy to see why Brazil is one of the most popular destinations in the world.This travel guide to Brazil will help you plan your trip, save money, stay safe, and make the most of your time in this amazing country.'),
      Travel('Moon of Iceland', 'Reykjavik', 'assets/images/travel7.jpeg',
          'Iceland is a place where nature reigns supreme. Aside from the modern and cosmopolitan capital, Reykjavík, population centres are small, with diminutive towns, fishing villages, farms and minute hamlets clustered along the coastal fringes. The interior of the country, meanwhile, is a starkly beautiful wilderness of ice fields, windswept upland plateaux, infertile lava and ash deserts, and the frigid vastness of Vatnajökull, Europe’s largest glacier.'),
      Travel('Lack of Hell ', 'azerbaijan', 'assets/images/travel8.jpeg',
          'Azerbaijan is an amazing, wonderful, beautiful, and friendly place. The country became the world’s first secular democratic Muslim-majority state when it first declared independence in 1918. Today, Baku, the capital, is a modern city steeped in oil money with a recently built subway, fast Wi-Fi, and tons of Parisian-style buildings (in the 1900s, newly rich oil barons modeled the city after Paris) as well as towering and futuristic steel and glass buildings.'),
      Travel('El-Rom valley  ', 'Jordan', 'assets/images/travel9.jpeg',
          'Western travellers have been exploring the Middle East for well over a century, but Jordan is a relative newcomer to tourism, welcoming only a fraction of the numbers who visit neighbouring Egypt and Israel. Its popular image abroad encompasses not much more than camels and deserts, yet this is a country of mountains, beaches, castles and ancient churches, with an urbane people and a rich culture. It is safe, comfortable and welcoming – and by far the region’s most rewarding destination to travel.'),
    ];
  }

  static List<Travel> getFeaturedBlogs() {
    return [
      Travel('White Princess', 'Russia', 'assets/images/travels1.jpeg',
          'European Russia stretches from the borders of Belarus and Ukraine to the Ural mountains, over 1000km east of Moscow; even without the rest of the vast Russian Federation, it constitutes by far the largest country in Europe. Formerly a powerful tsarist empire and a Communist superpower, Russia continues to be a source of fascination for travellers. While access is still made relatively difficult by lingering Soviet-style bureaucracy – visas are obligatory and accommodation usually has to be booked in advance – independent travel is increasing every year, and visitors are doubly rewarded by the cultural riches of the country and the warmth of the Russian people.'),
      Travel('the lion King', 'Ethiopia', 'assets/images/travels2.jpeg',
          'Few countries are so obscured by misconception as Ethiopia. Associated by most outsiders with drought and famine and often presumed to be a tract of featureless desert, it is in reality one of the wettest, most fertile and most scenically beautiful countries in Africa.'),
      Travel('Love with music', 'Cuba', 'assets/images/travels3.jpeg',
          'Cuba is an island that regularly lurches forward, then crunches into reverse. And it is also a place renowned for its stagnation over the last six decades, since the 1959 Revolution stopped the clocks and turned everything upside down. When you travel to Cuba you’ll be struck by vintage radios, refrigerators and lamps, and swinging neon signs hanging over storefronts. There are antique pharmacies and traditional barbers, and iconic classic American cars everywhere. But this is no retro trend, it’s make-do-and-mend, frozen-in-carbonite Cuba.'),
      Travel('The Freedom voice  ', 'Palestine', 'assets/images/travels4.jpg',
          'Aching with the weight of history, Jerusalem has one of the world\'s most recognizable skylines, with the golden helmet of the Dome of the Rock glinting above the caramel-colored stone of the old city.This ancient city holds deep religious significance for all those of the monotheistic faiths, and the labyrinthine alleyways in the old district are packed with religious sites and mind-boggling history.Dodge the crowds of pilgrims and take a walk along the walls that still wrap around the old city. Explore the city\'s fabulous museums, and immerse yourself in the mazy lanes that kings, Crusaders, and conquerors have all fought over.Jerusalem enchants and confounds in equal measures.'),
    ];
  }
}
