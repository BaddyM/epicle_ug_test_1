import "package:flutter/material.dart";

// ignore: must_be_immutable
class PaymentSchedule extends StatefulWidget {
  PaymentSchedule(
      {super.key, this.isChecked, required this.scheduleDate, required this.title, required this.cash, required this.color});
  bool? isChecked;
  final scheduleDate;
  final title;
  final cash;
  final color;

  @override
  State<PaymentSchedule> createState() => _PaymentScheduleState();
}

class _PaymentScheduleState extends State<PaymentSchedule> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(color: widget.color, borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Text(
                        "Feb",
                        style: TextStyle(color: Colors.grey.shade400, fontSize: 7),
                      ),
                      Text(
                        "${widget.scheduleDate}",
                        style: const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "${widget.title}",
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Text(
                  "\$${widget.cash}",
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
                ),
                Checkbox(
                    checkColor: Colors.white,
                    //fillColor: const WidgetStatePropertyAll(Colors.blue),
                    activeColor: Colors.blue,
                    side: const BorderSide(color: Color.fromRGBO(226, 226, 226, 1), width: 2),
                    tristate: false,
                    value: widget.isChecked,
                    onChanged: (value) {
                      setState(() {
                        widget.isChecked = value;
                      });
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
