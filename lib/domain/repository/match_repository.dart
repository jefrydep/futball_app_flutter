import 'package:futball_app/domain/models/match_game.dart';

abstract class MatchRepository{
  Future<List<MatchGame>> getLiveMatches();
}