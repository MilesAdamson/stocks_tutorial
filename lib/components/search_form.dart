import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:stocks_tutorial/api/resolution.dart';
import 'package:stocks_tutorial/state/bloc.dart';
import 'package:stocks_tutorial/utils/date_time_helper.dart';

class SearchForm extends StatefulWidget {
  const SearchForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SearchFormState();
}

class SearchFormState extends State<SearchForm> {
  static const minimumCandles = 5;

  final _symbolController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Resolution? resolution;
  DateTime? startDate;
  DateTime? endDate;

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
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            final bloc = context.read<AppStateCubit>();
            bloc.loadCandles(
              _symbolController.text.trim(),
              startDate!,
              endDate!,
              resolution!,
            );
          }
        },
        child: const Text("Search"),
      ),
    );
  }

  FormField<DateTime> buildEndDateSelect(BuildContext context) {
    return FormField<DateTime>(
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
      validator: (r) {
        if (r == null) {
          return "Resolution is required";
        }

        bool datesAreSelectedAndValid = endDate != null &&
            startDate != null &&
            endDate!.isAfter(startDate!);

        if (datesAreSelectedAndValid) {
          final adjustedEndTime =
              endDate!.subtract(r.duration * minimumCandles);

          if (!startDate!.isBefore(adjustedEndTime)) {
            return "You must select a wider date range, such that at"
                " least $minimumCandles candles will appear on the chart.";
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