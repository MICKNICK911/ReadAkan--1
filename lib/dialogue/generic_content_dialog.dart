import 'package:flutter/material.dart';

typedef DialogOptionBuilder<T> = Map<String, T?> Function();

Future<T?>showGenericDialogContent<T> (
  {required BuildContext context,
  required bool dark,
  //required Widget content,
  //required DialogOptionBuilder optionBuilder}
  }
  ) {
    const fontcolorbright = Color.fromARGB(255, 67, 1, 52);
    const fontcolordark = Color.fromARGB(255, 139, 227, 244);
    //final options = optionBuilder();
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;
    return showDialog<T>(
      context: context,
      builder: (context) {
        return AlertDialog(
          //title: Text(title),
          contentPadding: const EdgeInsets.all(0),
          content: Card(
                                elevation: 5,
                                color: Colors.transparent,
                                margin: const EdgeInsets.fromLTRB(10, 0, 10, 8),
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
                                                borderRadius: const BorderRadius.only( 
                                                  bottomLeft: Radius.circular(20),
                                                  bottomRight: Radius.circular(20),
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(20),
                                              
                                              ),
                                            ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(0.8),
                                            child: Container(
                                              decoration:  BoxDecoration(
                                                  color: dark !=true? Colors.amberAccent :  const Color.fromARGB(255, 81, 1, 60),
                                                  borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(30),
                                                  bottomRight: Radius.circular(30),
                                                  topLeft: Radius.circular(30),
                                                  topRight: Radius.circular(30),
                                                
                                                ),
                                              ),
                                              child: Center(
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text("Hello world",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                    fontSize: 10,
                                                    color:dark !=true? fontcolorbright: fontcolordark,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'Times New Roman',
                                                  ),),
                                            
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
          // actions: options.keys.map((optionTitle) {
          //   final T value = options[optionTitle];
          //   return TextButton(onPressed: 
          //                     () {
          //                       if (value != null) {
          //                         Navigator.of(context).pop(value);
          //                       }else{
          //                         Navigator.of(context).pop();
          //                       }
          //                     }, 
          //                     child: Text(optionTitle),
          //                     );    
          // }
          // ).toList(),
        );
      }
    );
  }