import 'package:expenses_app/utilities/constants/styles.dart';
import 'package:flutter/material.dart';

class ReuseableContainer extends StatelessWidget {
  // const ReuseableContainer({Key? key}) : super(key: key);

  const ReuseableContainer(
      {super.key,
      required this.label,
      required this.prefixIcon,
      // ignore: non_constant_identifier_names
      required this.SuffixIcon});
  final Icon prefixIcon;
  final Text label;
  // ignore: non_constant_identifier_names
  final Icon SuffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: exProfileContainerDecor,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  prefixIcon,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: label,
                  ),
                ],
              ),
              SuffixIcon,
            ],
          ),
        ),
        // color: Colors.redAccent,
      ),
    );
  }
}
