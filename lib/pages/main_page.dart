import 'package:flutter/material.dart';

import '../blocs/main_bloc.dart';

class MainPage extends StatelessWidget {
  final MainBloc bloc = MainBloc();

  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: StreamBuilder<MainPageState>(
            stream: bloc.observeMainPageState(),
            builder: (context, snapshot) {
              if (!snapshot.hasData || snapshot.data == null) {
                return const SizedBox();
              }
              return Center(child: Text(snapshot.data!.toString()));
            },
          ),
        ),
      ),
    );
  }
}
