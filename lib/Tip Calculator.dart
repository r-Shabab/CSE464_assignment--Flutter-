import 'package:flutter/material.dart';
import 'package:to_do_app/Widgets/Simple%20Input%20Field.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({super.key});

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {


  final formKey = GlobalKey<FormState>();
  final totalBillController = TextEditingController();
  final totalTipController = TextEditingController();
  final totalPeopleController = TextEditingController();
  static const Color containerColor = Color(0xffF5F8F8);
  static const Color textBlack = Color(0xff232323);
  static const Color textLightBlack = Color(0xff717171);
  static const Color clearButtonColor = Color(0xffFF7511);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Tip Calculator', style: TextStyle(color: Colors.black87 ,fontSize: 18, fontWeight: FontWeight.w700),),
        elevation: 3,
        shadowColor: Colors.black26,
        backgroundColor: Colors.white,
      ),
      body: Padding(
          padding: const EdgeInsets.all(10),
        child:  Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///top section
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(5)
                ),
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Text("Total Bill", style: TextStyle(color: textLightBlack),),
                    Text("\$ ${totalBillController.text}", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: textBlack),),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Persons", style: TextStyle(color: textLightBlack),),
                        Text("Tip Amount", style: TextStyle(color: textLightBlack),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("05", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: textBlack),),
                        Text("\$ 0.00", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700, color: textBlack),),
                      ],
                    ),
                  ],
                ),
              ),
              ///gap
              const SizedBox(
                height: 10,
              ),
              ///per person amount section
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(5)
                ),
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Amount per person", style: TextStyle(color: textLightBlack),),
                    Text("\$ 20.00", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: textBlack),),
                  ],
                ),
              ),
              const Spacer(),
              SimpleInputField(
                  controller: totalBillController,
                  iconData: Icons.attach_money,
                  title: "Total Bill",
                  hintText: "Please enter total bill"),
              SimpleInputField(
                  controller: totalTipController,
                  iconData: Icons.percent,
                  title: "Tip Percentage",
                  hintText: "Please enter tip percentage"),
              SimpleInputField(
                  controller: totalPeopleController,
                  title: "Number of people",
                  hintText: "Please enter number of people"),

              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        formKey.currentState!.validate();
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal:  45),
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        alignment: Alignment.center ,
                        child: Text("Calculate", style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10,),

                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal:  45),
                      decoration: BoxDecoration(
                          color: clearButtonColor,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("Clear", style: TextStyle(color: Colors.white),),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),

      ),

    );
  }
}
