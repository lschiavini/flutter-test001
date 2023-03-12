import 'package:flutter/material.dart';

import '../../domain/model/user_model.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  HomePage(
    this._homeController, {
    Key? key,
  }) : super(
          key: key,
        );

  final HomeController _homeController;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    widget._homeController.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Demo Project',
        ),
        centerTitle: true,
      ),
      body: StreamBuilder<List<UserModel>>(
        stream: widget._homeController.state.users.stream,
        builder: (
          _,
          AsyncSnapshot<List<UserModel>> snapshot,
        ) {
          if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (
                _,
                int index,
              ) {
                return ListTile(
                  title: Text(
                    snapshot.data![index].firstName,
                  ),
                  subtitle: Text(
                    snapshot.data![index].lastName,
                  ),
                );
              },
            );
          }
          if (!snapshot.hasData && !snapshot.hasError) {
            return Center(
              child: GestureDetector(
                onTap: () => widget._homeController.fetchUsers(
                  numOfUsers: 10,
                ),
                child: Text(
                  'Click here to fetch 10 users',
                ),
              ),
            );
          }
          if (snapshot.hasError) {
            debugPrint(snapshot.error.toString());
            return Center(
              child: GestureDetector(
                onTap: () => widget._homeController.fetchUsers(
                  numOfUsers: 10,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Text(
                    snapshot.error.toString(),
                  ),
                ),
              ),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
