import 'package:flutter/material.dart';
import 'package:futball_app/domain/models/menu.dart';
import 'package:futball_app/ui/home/home_bloc.dart';
import 'package:provider/provider.dart';

class LeaguesBar extends StatelessWidget {
  const LeaguesBar({super.key});

  @override
  Widget build(BuildContext context) {
    //con este codigo hago referencia al model de classe menu d elso items
    //tiene una lsita estatica de menus
    final items = Menu.menuItems;
    //obsevamos que item esta seleccionado
    final menuSelected = context.watch<HomeBloc>().menusSelected;
    return SizedBox(
      height: kToolbarHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          final isSelected = menuSelected.title == item.title;
          final color = isSelected ? Colors.white : Colors.grey;

          return InkWell(
            onTap: () => context.read<HomeBloc>().selectMenu(item),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: isSelected ? Colors.pink : Colors.white,
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Image.asset(
                    item.logo,
                    height: 25,
                    color: color,
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Text(
                    item.title,
                    style: TextStyle(color: color, fontSize: 17),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
