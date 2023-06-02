import 'package:flutter/material.dart';

typedef DialogOptionBuilder<T> = Map<String, T?> Function();
typedef MakeCall = Function();

Future<T?>showGenericDialogContent<T> (
  {required BuildContext context,
  required bool dark,
  required MakeCall call,
  //required DialogOptionBuilder optionBuilder
  }
  ) {
    const fontcolorbright = Color.fromARGB(255, 67, 1, 52);
    const fontcolordark = Color.fromARGB(255, 139, 227, 244);
    //final options = optionBuilder();
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;
    return showDialog<T>(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          //title: Text(title),
          backgroundColor: dark != true?Colors.amberAccent:fontcolorbright,
          contentPadding: const EdgeInsets.all(0),
          content: Card(
                                //elevation: 5,
                                color: Colors.transparent,
                                //margin: const EdgeInsets.fromLTRB(10, 0, 10, 8),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                )),
                                
                                child: SizedBox(
                                  height: size.height * 0.8,
                                  width: size.width * 0.8,
                                  child: Row(
                                    children: [
                                
                                      Expanded(
                                        child: Container(
                                          //color: Colors.blue,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(image: dark !=true? const AssetImage("assets/images/2.jpg"):const AssetImage("assets/images/6.jpg") ,
                                              fit: BoxFit.fill),
                                            
                                            ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Container(
                                              decoration:  BoxDecoration(
                                                  color: dark != true? Colors.amberAccent :  const Color.fromARGB(255, 81, 1, 60),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  
                                                  children: [
                                                    SizedBox(
                                                      height: 150,
                                                      width: 120,
                                                      child: Center(child: Container(
                                                                decoration: const BoxDecoration(
                                                                  image: DecorationImage(image: AssetImage("assets/images/akanlogofull2.png"),
                                                                    fit: BoxFit.fill),
                                                                    //   borderRadius: const BorderRadius.only( 
                                                                    //     bottomLeft: Radius.circular(20),
                                                                    //     bottomRight: Radius.circular(20),
                                                                    //     topLeft: Radius.circular(20),
                                                                    //     topRight: Radius.circular(20),
                                                                    
                                                                    // ),
                                                                  ),
                                                              ),
                                                          )
                                                    ),
                                                
                                                    //SizedBox(height: 100,),
                                                
                                                    Expanded(
                                                      child: Center(
                                                        child: Column(
                                                          children: [
                                                            Text("Purchase ReadTwi 2 at a very cheap price here:",
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                            fontSize: 20,
                                                            color:dark !=true? fontcolorbright: fontcolordark,
                                                            fontWeight: FontWeight.w600,
                                                            fontFamily: 'Times New Roman'
                                                             ),
                                                          ),
                                                          const SizedBox(height: 10,),

                                                            Row(
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              children: [
                                                              ImageIcon(const AssetImage("assets/images/callicon1.png"), 
                                                                              size: 25, 
                                                                              color: dark !=true? fontcolorbright: fontcolordark,),
                                                              const SizedBox(width: 10,),
                                                              Text("+233545800158",
                                                                textAlign: TextAlign.center,
                                                                style: TextStyle(
                                                                fontSize: 15,
                                                                color:dark !=true? fontcolorbright: fontcolordark,
                                                                fontWeight: FontWeight.w400,
                                                                fontFamily: 'Raleway'
                                                                ),
                                                              ),
                                                            ],),

                                                            Row(
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              children: [
                                                              ImageIcon(const AssetImage("assets/images/whatsapplight.png"), 
                                                                              size: 25, 
                                                                              color: dark !=true? fontcolorbright: fontcolordark,),
                                                              const SizedBox(width: 10,),
                                                              Text("+233207146181",
                                                                textAlign: TextAlign.center,
                                                                style: TextStyle(
                                                                fontSize: 15,
                                                                color:dark !=true? fontcolorbright: fontcolordark,
                                                                fontWeight: FontWeight.w400,
                                                                fontFamily: 'Raleway'
                                                                ),
                                                              ),
                                                            ],),

                                                            Row(
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              children: [
                                                              ImageIcon(const AssetImage("assets/images/tweeterlog1.png"), 
                                                                              size: 25, 
                                                                              color: dark !=true? fontcolorbright: fontcolordark,),
                                                              const SizedBox(width: 10,),
                                                              Text("@Mickyni68202094",
                                                                textAlign: TextAlign.center,
                                                                style: TextStyle(
                                                                fontSize: 15,
                                                                color:dark !=true? fontcolorbright: fontcolordark,
                                                                fontWeight: FontWeight.w400,
                                                                fontFamily: 'Raleway'
                                                                ),
                                                              ),
                                                            ],),

                                                            Row(
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              children: [
                                                              ImageIcon(const AssetImage("assets/images/emaillog1.png"), 
                                                                              size: 25, 
                                                                              color: dark !=true? fontcolorbright: fontcolordark,),
                                                              const SizedBox(width: 10,),
                                                              Text("appiahm29@yahoo.com",
                                                                textAlign: TextAlign.center,
                                                                style: TextStyle(
                                                                fontSize: 15,
                                                                color:dark !=true? fontcolorbright: fontcolordark,
                                                                fontWeight: FontWeight.w400,
                                                                fontFamily: 'Raleway'
                                                                ),
                                                              ),
                                                            ],),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                
                                                    GestureDetector(
                                                      onTap: call,
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                        color: dark !=true? fontcolorbright: fontcolordark,
                                                        borderRadius: const BorderRadius.only( 
                                                          bottomLeft: Radius.circular(10),
                                                          bottomRight: Radius.circular(10),
                                                          topLeft: Radius.circular(10),
                                                          topRight: Radius.circular(10),
                                                          
                                                          ),
                                                                    ),
                                                        //color: dark !=true? fontcolorbright: fontcolordark,
                                                        height: 50,
                                                        width: double.infinity,
                                                        child: Center(child: Text("Call",
                                                                textAlign: TextAlign.center,
                                                                style: TextStyle(
                                                                fontSize: 25,
                                                                color:dark != true? Colors.amberAccent :  const Color.fromARGB(255, 81, 1, 60),
                                                                fontWeight: FontWeight.w600,
                                                                fontFamily: 'Raleway'
                                                                ),
                                                              )
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                
                                ),
                              ),
         
        );
      }
    );
  }