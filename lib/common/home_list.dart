import 'package:flutter/material.dart';

class ContentWidget extends StatelessWidget{
  const ContentWidget({super.key,
                     this.dark = true,
                     this.leadnum = "0",
                     this.title = "Missing",
                     this.subtitle = "Missing",
                    
                      });

  final String description =  "Home Page";
  final bool dark;
  final String leadnum;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context){
    return Card(
                            elevation: 0,
                            color: Colors.transparent,
                            margin: const EdgeInsets.fromLTRB(10, 0, 10, 8),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                              //bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(70),
                              //topLeft: Radius.circular(30),
                              topRight: Radius.circular(25),
                            )),
    
                            child: SizedBox(
                              height: 120,
                              child: Row(
                                children: [
                                  Container(
                                    width: 85,
                                    height: double.infinity,
                                    color: Colors.transparent,
                                    child: Center(
                                      child: Text(leadnum,
                                                style: TextStyle(
                                                fontSize: 100,
                                                color:dark !=true? const Color.fromARGB(255, 67, 34, 1) : const Color.fromARGB(255, 248, 164, 80),
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Times New Roman',
                                              ),),
                                    ),
                                  ),
    
                                  Expanded(
                                    child: Container(
                                      //color: Colors.blue,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: dark !=true? const AssetImage("assets/images/2.jpg"):const AssetImage("assets/images/6.jpg") ,
                                          fit: BoxFit.fill),
                                            borderRadius: const BorderRadius.only(
                                            bottomRight: Radius.circular(70),
                                            topRight: Radius.circular(25),
                                          
                                          ),
                                        ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          decoration:  BoxDecoration(
                                              color: dark !=true? Colors.amberAccent :  const Color.fromARGB(255, 81, 1, 60),
                                              borderRadius: const BorderRadius.only(
                                              bottomRight: Radius.circular(70),
                                              topRight: Radius.circular(25),
                                            
                                            ),
                                          ),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(title,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                fontSize: 25,
                                                color:dark !=true? const Color.fromARGB(255, 67, 1, 52): const Color.fromARGB(255, 139, 227, 244),
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Times New Roman',
                                              ),),
                                        
                                              const SizedBox(
                                                height: 5,
                                              ),
                                        
                                              Text(subtitle,
                                                style: TextStyle(
                                                fontSize: 18,
                                                color:dark !=true? const Color.fromARGB(255, 67, 34, 1): const Color.fromARGB(255, 245, 244, 243),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Raleway',
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
                          );
                        }
                      }