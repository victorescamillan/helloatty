import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/ui/widgets/app_buttons/default_button.dart';
import 'package:helloatty/ui/widgets/app_tables/custom_table_cell.dart';
import 'package:helloatty/ui/widgets/main_container.dart';

class FinanceScreen extends StatefulWidget {
  const FinanceScreen({Key? key}) : super(key: key);

  @override
  State<FinanceScreen> createState() => _FinanceScreenState();
}

class _FinanceScreenState extends State<FinanceScreen> {
  @override
  Widget build(BuildContext context) {
    return MainContainer(
        title: 'Finance',
        content: Column(
          children: [
            Table(
              columnWidths: const <int, TableColumnWidth>{
                6: FixedColumnWidth(50),
              },
              children: [
                TableRow(children: const [
                  CustomTableCell(isHeader: true, text: 'Month'),
                  CustomTableCell(isHeader: true, text: 'Payment Date'),
                  CustomTableCell(isHeader: true, text: 'Client Name'),
                  CustomTableCell(isHeader: true, text: 'Booking Hours'),
                  CustomTableCell(isHeader: true, text: 'Rate (Per Minute)'),
                  CustomTableCell(isHeader: true, text: 'Amount Paid'),
                  CustomTableCell(isHeader: true, text: 'Actions'),
                ]),
                TableRow(
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: kGrey))),
                    children: [
                      const CustomTableCell(text: 'Apr 2022'),
                      const CustomTableCell(text: 'Apr 29, 2022'),
                      const CustomTableCell(text: 'Enrico Jualiano'),
                      const CustomTableCell(text: '1 Hour'),
                      const CustomTableCell(text: '₱ 41.67'),
                      const CustomTableCell(text: '₱2,500'),
                      SizedBox(
                        child: DefaultElevatedButton(
                            verticalMargin: size20,
                            verticalPadding: size8,
                            onPressed: () {},
                            child: const Icon(
                              Icons.visibility,
                              color: kWhite,
                            )),
                      ),
                    ]),
                TableRow(
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: kGrey))),
                    children: [
                      const CustomTableCell(text: 'Apr 2022'),
                      const CustomTableCell(text: 'Apr 29, 2022'),
                      const CustomTableCell(text: 'Enrico Jualiano'),
                      const CustomTableCell(text: '1 Hour'),
                      const CustomTableCell(text: '₱ 41.67'),
                      const CustomTableCell(text: '₱2,500'),
                      SizedBox(
                        child: DefaultElevatedButton(
                            verticalMargin: size20,
                            verticalPadding: size8,
                            onPressed: () {},
                            child: const Icon(
                              Icons.visibility,
                              color: kWhite,
                            )),
                      ),
                    ]),
                TableRow(
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: kGrey))),
                    children: [
                      const CustomTableCell(text: 'Apr 2022'),
                      const CustomTableCell(text: 'Apr 29, 2022'),
                      const CustomTableCell(text: 'Enrico Jualiano'),
                      const CustomTableCell(text: '1 Hour'),
                      const CustomTableCell(text: '₱ 41.67'),
                      const CustomTableCell(text: '₱2,500'),
                      SizedBox(
                        child: DefaultElevatedButton(
                            verticalMargin: size20,
                            verticalPadding: size8,
                            onPressed: () {},
                            child: const Icon(
                              Icons.visibility,
                              color: kWhite,
                            )),
                      ),
                    ]),
              ],
            ),
          ],
        ));
  }
}
