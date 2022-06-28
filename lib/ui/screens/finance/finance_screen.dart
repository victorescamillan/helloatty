import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/ui/widgets/app_buttons/default_button.dart';
import 'package:helloatty/ui/widgets/app_dropdowns/bordered_dropdown_button.dart';
import 'package:helloatty/ui/widgets/app_inputs/bordered_textfield.dart';
import 'package:helloatty/ui/widgets/app_tables/custom_table_cell.dart';
import 'package:helloatty/ui/widgets/main_container.dart';
import 'package:helloatty/utils/utils.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: appSize(context).width / 2,
              child: Row(
                children: const [
                  BorderedTextField(
                    prefixIcon: Icon(
                      Icons.search,
                      color: kGrey,
                    ),
                    label: '',
                    hintText: 'Search',
                    horizontalPadding: size20,
                  ),
                  SizedBox(
                    width: size20,
                  ),
                  BorderedDropdownButton(
                    prefixIcon: Icon(
                      Icons.filter_alt,
                      color: kGrey,
                    ),
                    label: '',
                    hintText: 'All',
                    horizontalPadding: size20,
                    items: ['All'],
                  ),
                ],
              ),
            ),
            const Divider(
              height: size1,
              color: kGrey,
            ),
            Expanded(
              child: Table(
                columnWidths: const <int, TableColumnWidth>{
                  6: FixedColumnWidth(50),
                },
                children: [
                  const TableRow(children: [
                    CustomTableCell(isHeader: true, text: 'Month'),
                    CustomTableCell(isHeader: true, text: 'Payment Date'),
                    CustomTableCell(isHeader: true, text: 'Client Name'),
                    CustomTableCell(isHeader: true, text: 'Booking Hours'),
                    CustomTableCell(isHeader: true, text: 'Rate (Per Minute)'),
                    CustomTableCell(isHeader: true, text: 'Amount Paid'),
                    CustomTableCell(isHeader: true, text: 'Actions'),
                  ]),
                  TableRow(
                      decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(color: kGrey))),
                      children: [
                        const CustomTableCell(text: 'Apr 2022'),
                        const CustomTableCell(text: 'Apr 29, 2022'),
                        const CustomTableCell(text: 'Enrico Juliano'),
                        const CustomTableCell(text: '1 Hour'),
                        const CustomTableCell(text: '₱ 41.67'),
                        const CustomTableCell(text: '₱2,500'),
                        SizedBox(
                          child: DefaultElevatedButton(
                              verticalMargin: size20,
                              verticalPadding: size18,
                              onPressed: () {},
                              child: const Icon(
                                Icons.visibility,
                                color: kWhite,
                              )),
                        ),
                      ]),
                  TableRow(
                      decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(color: kGrey))),
                      children: [
                        const CustomTableCell(text: 'Apr 2022'),
                        const CustomTableCell(text: 'Apr 29, 2022'),
                        const CustomTableCell(text: 'Enrico Juliano'),
                        const CustomTableCell(text: '1 Hour'),
                        const CustomTableCell(text: '₱ 41.67'),
                        const CustomTableCell(text: '₱2,500'),
                        SizedBox(
                          child: DefaultElevatedButton(
                              verticalMargin: size20,
                              verticalPadding: size18,
                              onPressed: () {},
                              child: const Icon(
                                Icons.visibility,
                                color: kWhite,
                              )),
                        ),
                      ]),
                  TableRow(
                      decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(color: kGrey))),
                      children: [
                        const CustomTableCell(text: 'Apr 2022'),
                        const CustomTableCell(text: 'Apr 29, 2022'),
                        const CustomTableCell(text: 'Enrico Juliano'),
                        const CustomTableCell(text: '1 Hour'),
                        const CustomTableCell(text: '₱ 41.67'),
                        const CustomTableCell(text: '₱2,500'),
                        SizedBox(
                          child: DefaultElevatedButton(
                              verticalMargin: size20,
                              verticalPadding: size18,
                              onPressed: () {},
                              child: const Icon(
                                Icons.visibility,
                                color: kWhite,
                              )),
                        ),
                      ]),
                ],
              ),
            ),
            Row(
              children: [
                DefaultElevatedButton(
                  width: size45,
                  color: activeColor,
                  onPressed: () {},
                  child: Text(
                    '1',
                    style: kTitleTextStyle.copyWith(color: kWhite),
                  ),
                ),
                const SizedBox(
                  width: size10,
                ),
                DefaultElevatedButton(
                  width: size45,
                  color: kWhite,
                  onPressed: () {},
                  child: Text(
                    '2',
                    style: kTitleTextStyle.copyWith(color: activeColor),
                  ),
                ),
                const SizedBox(
                  width: size10,
                ),
                DefaultElevatedButton(
                  width: size45,
                  color: kWhite,
                  onPressed: () {},
                  child: Text(
                    '3',
                    style: kTitleTextStyle.copyWith(color: activeColor),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
