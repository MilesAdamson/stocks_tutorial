import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:stocks_tutorial/components/chart_page.dart';
import 'package:stocks_tutorial/models/get_candles_request.dart';
import 'package:stocks_tutorial/state/bloc.dart';
import 'package:stocks_tutorial/utils/date_time_helper.dart';

class SearchForm extends StatefulWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => SearchFormState();
}

class SearchFormState extends State<SearchForm> {
  final _formKey = GlobalKey<FormState>();

  late final GetCandlesRequest? recentQuery =
      context.read<AppStateCubit>().state.recentQuery;

  late DateTime? startDate = recentQuery?.from;
  late DateTime? endDate = recentQuery?.to;
  late final _symbolController =
      TextEditingController(text: recentQuery?.symbol);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildSymbolEntry(),
          buildStartDateSelect(context),
          buildEndDateSelect(context),
          buildSubmitButton(),
        ],
      ),
    );
  }

  Container buildSubmitButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onSubmit,
        child: const Text("Search"),
      ),
    );
  }

  void onSubmit() async {
    if (_formKey.currentState!.validate()) {
      final bloc = context.read<AppStateCubit>();
      bloc.loadCandles(
        _symbolController.text.trim(),
        startDate!,
        endDate!,
      );

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ChartPage()),
      );
    }
  }

  FormField<DateTime> buildEndDateSelect(BuildContext context) {
    return FormField<DateTime>(
      initialValue: endDate,
      validator: (endDate) {
        if (endDate == null) {
          return "End date is required";
        }

        if (startDate != null && startDate!.isAfter(endDate)) {
          return "End date must be after the start date";
        }
      },
      builder: (field) {
        final textColor = field.hasError ? Colors.red : null;
        return ListTile(
          title: Text(
            endDate?.dayMonthYearLabel ?? "End date",
            style: TextStyle(color: textColor),
          ),
          subtitle: Text(field.errorText ?? "Plot to the end of this day"),
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              initialDate: endDate ?? DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
            );

            if (date != null) {
              setState(() => endDate = date
                  .add(const Duration(hours: 23, minutes: 59, seconds: 59)));
              field.didChange(date);
            }
          },
          trailing: const Icon(Icons.date_range),
        );
      },
    );
  }

  FormField<DateTime> buildStartDateSelect(BuildContext context) {
    return FormField<DateTime>(
      initialValue: startDate,
      validator: (startDate) {
        if (startDate == null) {
          return "Start date is required";
        }

        if (endDate != null && startDate.isAfter(endDate!)) {
          return "Start date must be before the end date";
        }
      },
      builder: (field) {
        final textColor = field.hasError ? Colors.red : null;
        return ListTile(
          title: Text(
            startDate?.dayMonthYearLabel ?? "Start date",
            style: TextStyle(color: textColor),
          ),
          subtitle: Text(field.errorText ?? "Plot from the start of this day"),
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              initialDate:
                  startDate ?? DateTime.now().subtract(const Duration(days: 7)),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
            );

            if (date != null) {
              setState(() => startDate = date);
              field.didChange(date);
            }
          },
          trailing: const Icon(Icons.date_range),
        );
      },
    );
  }

  Padding buildSymbolEntry() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        decoration: const InputDecoration(
          labelText: "Symbol",
          hintText: "AAPL",
        ),
        controller: _symbolController,
        validator: (s) {
          if (s == null || s.trim().isEmpty) {
            return "Symbol is required";
          }

          if (s.trim().length != s.length) {
            return "Whitespaces are not allowed";
          }
        },
      ),
    );
  }
}
