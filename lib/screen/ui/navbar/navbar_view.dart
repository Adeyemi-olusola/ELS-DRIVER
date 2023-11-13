import 'package:ets_rider/screen/ui/navbar/navbar_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => NavigationBarViewModel(),
        builder: (context, viewModel, child) {
          return SafeArea(
            child: Scaffold(
              body: viewModel.widgetList[viewModel.currentIndex],
              bottomNavigationBar: Container(
                height: 68,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: viewModel.navbarIconString
                          .map((e) => GestureDetector(
                                onTap: () {
                                  viewModel.getCurrrentIndex(
                                      viewModel.navbarIconString.indexOf(e));
                                  print(viewModel.navbarIconString.indexOf(e));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(e,
                                            color: viewModel.currentIndex ==
                                                    viewModel.navbarIconString
                                                        .indexOf(e)
                                                ? Theme.of(context).primaryColor
                                                : Colors.grey),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          viewModel.navbarText[viewModel
                                              .navbarIconString
                                              .indexOf(e)],
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color: viewModel
                                                              .currentIndex ==
                                                          viewModel
                                                              .navbarIconString
                                                              .indexOf(e)
                                                      ? Theme.of(context)
                                                          .primaryColor
                                                      : Colors.grey),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ))
                          .toList()),
                ),
              ),
            ),
          );
        });
  }
}
