import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list), text: "List View"),
              Tab(icon: Icon(Icons.grid_view), text: "Grid View"),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      child: Icon(Icons.person, size: 40),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Welcome User",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Beranda"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Opsi"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text("Akun"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Logout"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ListViewScreen(),
            GridViewScreen(),
          ],
        ),
      ),
    );
  }
}

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        color: const Color.fromARGB(255, 61, 31, 170),
        tiles: [
          ListTile(
            leading: const CircleAvatar(child: Text("A")),
            title: const Text("Ambatukam"),
            subtitle: const Text("Flutter Developer"),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {},
          ),
          ListTile(
            leading: const CircleAvatar(child: Text("B")),
            title: const Text("Bidji Koeda"),
            subtitle: const Text("Native Developer"),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {},
          ),
          ListTile(
            leading: const CircleAvatar(child: Text("C")),
            title: const Text("Cikolombo"),
            subtitle: const Text("JSHT Developer"),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {},
          ),
          ListTile(
            leading: const CircleAvatar(child: Text("D")),
            title: const Text("Dadang"),
            subtitle: const Text("PHP Lambo Developer"),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {},
          ),
        ],
      ).toList(),
    );
  }
}

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(8.0),
      children: const [
        ProfileCard(
            name: "Ambatukam", position: "Flutter Developer", initial: "A"),
        ProfileCard(
            name: "Bidji Koeda", position: "Native Developer", initial: "B"),
        ProfileCard(
            name: "Cikolombo", position: "JSHT Developer", initial: "C"),
        ProfileCard(
            name: "Dadang", position: "PHP Lambo Developer", initial: "D"),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String position;
  final String initial;

  const ProfileCard({
    Key? key,
    required this.name,
    required this.position,
    required this.initial,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(child: Text(initial)),
            const SizedBox(height: 8.0),
            Text(name, style: Theme.of(context).textTheme.bodyMedium),
            Text(position, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
