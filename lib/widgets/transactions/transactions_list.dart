import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/transactions_model.dart';
import '../custom_clipper.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemCount: transactions.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  children: [
                    ListTile(
                      // contentPadding: EdgeInsets.all(0),
                      title: Text(transactions[index].name!),
                      subtitle: Text(
                        transactions[index].phone!,
                        style: GoogleFonts.prompt(color: Colors.black54),
                      ),
                      leading: Stack(
                        children: [
                          ClipPath(
                            clipper: MyCustomClipper(),
                            child: Container(
                              height: 60,
                              width: 60,
                              child: Center(
                                child: Text(
                                  transactions[index].initials!,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.pink.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/images/${transactions[index].flag!}")),
                                  color: Colors.white54,
                                  shape: BoxShape.circle),
                            ),
                          )
                        ],
                      ),
                      trailing: Text(transactions[index].amount!),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(),
                    )
                  ],
                ),
              );
            }));
  }
}
