import 'package:ets_rider/screen/ui/reservation/reservation_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ReservationView extends StatefulWidget {
  const ReservationView({super.key});

  @override
  State<ReservationView> createState() => _ReservationViewState();
}

class _ReservationViewState extends State<ReservationView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => RevervationViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose one out of the options',
                style: Theme.of(context).textTheme.bodySmall,
              ),            






              







            ],
          ),
        );
      },
    );
  }
}
