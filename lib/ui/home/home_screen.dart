import 'package:flutter/material.dart';
import 'package:futball_app/domain/repository/match_repository.dart';
import 'package:futball_app/ui/home/widgets/leagues_bar.dart';
import 'package:provider/provider.dart';

import 'home_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen._();
  static Widget init() => ChangeNotifierProvider(
        lazy: false,
        create: (context) => HomeBloc(
          context.read<MatchRepository>(),
        ),
        child: const HomeScreen._(),
      );

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Center(
          child: CircleAvatar(
            backgroundColor: Colors.amber,
            radius: 16,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'LiveScore',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
                size: 40,
              ))
        ],
      ),
      body: Column(
        children: const [
          SizedBox(
            height: 15,
          ),
          LeaguesBar()
        ],
      ),
    );
  }
}
