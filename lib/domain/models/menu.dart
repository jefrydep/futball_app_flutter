// ignore_for_file: public_member_api_docs, sort_constructors_first
String _path = 'assets/logo';

class Menu {
  String title;
  String logo;
  Menu({
    required this.title,
    required this.logo,
  });

  static List<Menu> menuItems = [
    Menu(title: 'Premier League', logo: '$_path/logo_primer_league.png'),
    Menu(title: 'La Liga', logo: '$_path/logo_la_liga.png'),
    Menu(title: 'Champions League', logo: '$_path/logo_champions_league.png'),
  ];
}
