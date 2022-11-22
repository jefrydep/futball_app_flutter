import 'package:futball_app/domain/models/match_game.dart';
import 'package:futball_app/domain/repository/match_repository.dart';

class MatchLocalService extends MatchRepository{
  @override
  Future<List<MatchGame>> getLiveMatches() async{
    await Future.delayed(const Duration(seconds: 2));
    //esta funcion nos realiza el filtrado
    return listGame.where((element) => element.live).toList();
  }
  
}