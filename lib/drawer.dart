import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(child: Container()),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Главная'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.search_outlined),
            title: const Text('Поиск'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.favorite_outline),
            title: const Text('Избранное'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.message_outlined),
            title: const Text('Уведомления'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Настройки'),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
          ListTile(
            leading: const Icon(Icons.group_add_outlined),
            title: const Text('Создать комнату'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.people_alt_outlined),
            title: const Text('Пригласить друзей'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.contact_support_outlined),
            title: const Text('Справка и поддержка'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('Информация о приложении'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app_outlined),
            title: const Text('Выйти'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
