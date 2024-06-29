import 'package:abaya_app/constants/constants_helper.dart';
import 'package:abaya_app/views/home_view/home_page_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/custom_widget_helper.dart';
import '../login_view/login_page_view.dart';
import 'wrapper_view_model.dart';



class WrapperView extends StatelessWidget {
  const WrapperView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WrapperViewModel>.reactive(
        viewModelBuilder: () => WrapperViewModel(),
        onViewModelReady: (model) => model.initialize(context),
        builder: (context, model, child) => Scaffold(
          bottomNavigationBar: 
          model.selectedItem==5? null: 
           ColoredBox(
            color: AppColor.appColorMain,
            child: bottomNavigationBar(context,model)),
          body:model.busy? customLoading(): model.loggedIn ?  model.selectedPage:LoginPageView()));
  }
}