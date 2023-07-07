import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:company/panelWidget.dart';

class Rate extends StatefulWidget {
  final String heading;
  final int Length;

  const Rate({
    required this.heading,
    required this.Length,
    Key? key,
  }) : super(key: key);

  @override
  State<Rate> createState() => _RateState();
}

class _RateState extends State<Rate> {
  late String heading;
  late int Length;

  @override
  void initState() {
    super.initState();
    heading = widget.heading;
    Length = widget.Length;
  }

  @override
  Widget build(BuildContext context) {
    double _panelPosition = 0.0;
    bool isClicked = false;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 250, 255),
      body: Stack(
        children: [
          SlidingUpPanel(
            minHeight: MediaQuery.of(context).size.height * 0.1,
            maxHeight: MediaQuery.of(context).size.height * 0.35,
            parallaxEnabled: true,
            borderRadius: BorderRadius.circular(30),
            panelBuilder: (controller) => PanelWidget(
              controller: controller,
            ),
            onPanelSlide: (double position) {
              setState(() {
                _panelPosition = position;
              });
            },
            body: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      heading,
                      style: const TextStyle(
                        fontFamily: 'LibreBaskerville',
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      color: const Color.fromARGB(255, 244, 240, 249),
                      child: Table(
                        border: TableBorder.symmetric(
                          outside: BorderSide(width: 1.2, color: Colors.black),
                        ),
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        children: [
                          const TableRow(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 160, 232, 255),
                            ),
                            children: [
                              TableCell(
                                verticalAlignment: TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'SIZE',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                verticalAlignment: TableCellVerticalAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'RATE(per mtr)',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ...List.generate(Length, (index) {
                            // Alternate row colors
                            final isEven = index % 2 == 0;
                            final rowColor = isEven ? Colors.white : Color.fromARGB(255, 244, 240, 249);

                            return TableRow(
                              decoration: BoxDecoration(
                                color: rowColor,
                              ),
                              children: [
                                TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      '16',
                                      style: const TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      '87',
                                      style: const TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.16),
                    const Text(
                      "For further inquiry please contact us",
                      style: TextStyle(
                        fontFamily: 'LibreBaskerville',
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
