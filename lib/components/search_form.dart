import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:stocks_tutorial/api/resolution.dart';
import 'package:stocks_tutorial/components/chart_page.dart';
import 'package:stocks_tutorial/models/candle.dart';
import 'package:stocks_tutorial/models/get_candles_request.dart';
import 'package:stocks_tutorial/state/bloc.dart';
import 'package:stocks_tutorial/utils/date_time_helper.dart';

class SearchForm extends StatefulWidget {
  final void Function(List<Candle> candles) onSuccessfulSearch;

  const SearchForm({
    Key? key,
    required this.onSuccessfulSearch,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => SearchFormState();
}

class SearchFormState extends State<SearchForm> {
  final _formKey = GlobalKey<FormState>();

  late final GetCandlesRequest? recentQuery =
      context.read<AppStateCubit>().state.recentQuery;

  late Resolution? resolution = recentQuery?.resolution;
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
          buildResolutionSelector(),
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
      final candles = await bloc.loadCandles(
        _symbolController.text.trim(),
        startDate!,
        endDate!,
        resolution!,
      );

      if (candles != null) {
        widget.onSuccessfulSearch(candles);
      }
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

  FormField<Resolution> buildResolutionSelector() {
    return FormField<Resolution>(
      initialValue: resolution,
      validator: (r) {
        if (r == null) {
          return "Resolution is required";
        }

        bool datesAreSelectedAndValid = endDate != null &&
            startDate != null &&
            endDate!.isAfter(startDate!);

        if (datesAreSelectedAndValid) {
          final adjustedEndTime =
              endDate!.subtract(r.duration * ChartPage.minimumCandles);

          if (!startDate!.isBefore(adjustedEndTime)) {
            return "You must select a wider date range, such that at"
                " least ${ChartPage.minimumCandles} candles will appear on the chart.";
          }
        }
      },
      builder: (field) {
        final textColor = field.hasError ? Colors.red : null;

        return Column(
          children: [
            ListTile(
              title: Text(
                "Resolution",
                style: TextStyle(color: textColor),
              ),
              subtitle: Text(field.errorText ??
                  "This is how much time each candle will represent on the stock's chart."),
            ),
            ...Resolution.values.map(
              (r) => RadioListTile<Resolution>(
                value: r,
                title: Text(r.label),
                groupValue: resolution,
                onChanged: (r) {
                  setState(() => resolution = r);
                  field.didChange(r);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
