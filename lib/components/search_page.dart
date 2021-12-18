import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:stocks_tutorial/components/chart_page.dart';
import 'package:stocks_tutorial/components/search_form.dart';
import 'package:stocks_tutorial/models/candle.dart';
import 'package:stocks_tutorial/state/app_state.dart';
import 'package:stocks_tutorial/state/bloc.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  late final StreamSubscription _errorSubscription;

  @override
  void initState() {
    _listenForErrors(context
        .read<AppStateCubit>()
        .stream
        .map((state) => state.errorMessage)
        .distinct());
    super.initState();
  }

  @override
  void dispose() {
    _errorSubscription.cancel();
    super.dispose();
  }

  void _listenForErrors(Stream<String?> errors) {
    _errorSubscription = errors.listen((error) {
      if (error != null) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Error"),
              content: Text(error),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("OOPS"),
                )
              ],
            );
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("STONKS"),
      ),
      body: BlocBuilder<AppStateCubit, AppState>(
        builder: (context, state) {
          if (state.isLoading) {
            final color = Theme.of(context).scaffoldBackgroundColor;
            return Center(
              child: SizedBox(
                height: 200,
                width: 200,
                child: LoadingIndicator(
                  indicatorType: Indicator.audioEqualizer,
                  backgroundColor: color,
                  pathBackgroundColor: color,
                  colors: const [
                    Colors.red,
                    Colors.green,
                    Colors.blue,
                    Colors.yellow,
                  ],
                ),
              ),
            );
          }

          return SingleChildScrollView(
            child: SearchForm(
              onSuccessfulSearch: (List<Candle> candles) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChartPage(
                      candles: candles,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
