import 'package:flutter/cupertino.dart';
import 'package:futball_app/domain/models/menu.dart';
import 'package:futball_app/domain/repository/match_repository.dart';

class HomeBloc extends ChangeNotifier {
  HomeBloc(this.matchRepository);
  final MatchRepository matchRepository;
  Menu menusSelected = Menu.menuItems.first;
  void selectMenu(Menu menu) {
    menusSelected = menu;
    notifyListeners();
  }
}
