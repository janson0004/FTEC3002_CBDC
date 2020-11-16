import 'package:cbdc_app/screens/monthly_expense_view.dart';
class OperationModel {
  String name;
  String selectedIcon;
  String unselectedIcon;
  OperationModel(this.name, this.selectedIcon, this.unselectedIcon);
}

List<OperationModel> datas = operationsData.map((item) =>
    OperationModel(item['name'], item['selectedIcon'], item['unselectedIcon'])).toList();

var operationsData = [
  {
    "name": "Money\nTransfer",
    "selectedIcon": "assets/svg/money_transfer_white.svg",
    "unselectedIcon": "assets/svg/money_transfer_blue.svg",

  },
  {
    "name": "CBDC\nExchange",
    "selectedIcon": "assets/svg/exchange_white.svg",
    "unselectedIcon": "assets/svg/exchange.svg"
  },
  {
    "name": "Insight\nTracking",
    "selectedIcon": "assets/svg/insight_tracking_white.svg",
    "unselectedIcon": "assets/svg/insight_tracking_blue.svg"
  },
];
