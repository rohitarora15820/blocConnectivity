import 'package:basicbloc/blocs/internet_bloc/internet_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: BlocConsumer<InternetBloc, InternetBlocState>(
          listener: (context, state) {
            if (state is IntenetGainedState) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text(
                  'Internet connnected',
                ),
                backgroundColor: Colors.green,
              ));
            } else if (state is InternetLostState) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text(
                  'Not Internet Found!',
                ),
                backgroundColor: Colors.red,
              ));
            }
          },
          builder: (context, state) {
            if (state is IntenetGainedState) {
              return const Text("Connected!");
            } else if (state is InternetLostState) {
              return const Text(" Not Connected!");
            } else {
              return const Text('Loading...');
            }
          },
        ),
      )),
    );
  }
}
