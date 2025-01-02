import "package:flutter/material.dart";
import "package:hugeicons/hugeicons.dart";

class TransactionTile extends StatelessWidget {
  const TransactionTile(
      {super.key,
      required this.name,
      required this.image,
      this.date,
      this.buttonTitle,
      this.cash});
  final image;
  final date;
  final buttonTitle;
  final cash;
  final name;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      Container(
        width: 100,
        child: Row(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/${image.toString()}",
                  width: 30,
                ),
                Positioned(
                    left: 20,
                    top: 20,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: const HugeIcon(
                          icon: HugeIcons.strokeRoundedArrowDownRight01,
                          color: Colors.green,
                          size: 10,
                        )))
              ],
            ),
            const SizedBox(
              width: 5,
            ),
            Text(name)
          ],
        ),
      ),
      Text(
        date,
        style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
      ),
      Container(
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300, width: 1),
            borderRadius: BorderRadius.circular(10.0)),
        child: Text(
          buttonTitle,
          style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
        ),
      ),
      Row(
        children: [
          Text(cash,
            style: const TextStyle(fontSize: 12, color: Colors.black,fontWeight: FontWeight.bold),
          ),
          SizedBox(width:10),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.black,size: 15,))
        ],
      ),
    ]);
  }
}
