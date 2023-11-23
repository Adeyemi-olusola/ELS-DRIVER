import 'package:ets_driver/screen/widgets/button/button.dart';
import 'package:flutter/material.dart';

class SelectABusiness extends StatefulWidget {
  const SelectABusiness({super.key});

  @override
  _SelectABusinessState createState() => _SelectABusinessState();
}

class _SelectABusinessState extends State<SelectABusiness> {
  String selectedOption = 'Option 1'; // Initial selected option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('Register Under Business',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayLarge!),
                const SizedBox(
                  height: 15,
                ),
                Text('Select the business you want ',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.grey)),
                const SizedBox(height: 20),
                DropdownButton<String>(
                  dropdownColor: Theme.of(context).cardColor,
                  //  icon: Icon(MdiIcons.arrowDown),
                  padding: const EdgeInsets.all(10),
                  style: Theme.of(context).textTheme.bodySmall,
                  underline: Container(),
                  isExpanded: true,
                  value: selectedOption,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedOption = newValue!;
                    });
                  },
                  items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),

            const MyButton(text: 'Continue')
          ],
        ),
      ),
    );
  }
}
