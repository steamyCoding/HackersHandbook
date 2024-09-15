import 'package:flutter/material.dart';
import 'package:hackers_handbook/components/navbar.dart';

class Nmap extends StatefulWidget {
  const Nmap({super.key});

  @override
  State<Nmap> createState() => _NmapState();
}

class _NmapState extends State<Nmap> {
  late TextEditingController ipcontroller;
  late String ip = "";

  @override
  void initState() {
    super.initState();
    ipcontroller = TextEditingController();
  }

  @override
  void dispose() {
    ipcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Nmap",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.grey,
      ),
      drawer: Navbar(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(height: 20,),
          Text("Nmap Scans", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800), textAlign: TextAlign.center,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(5, 5),
                        color: Colors.grey,
                        blurRadius: 7,
                        spreadRadius: 5)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          child: TextField(
                            maxLines: 1,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                isDense: true,
                                labelText: "IP",
                                contentPadding: EdgeInsets.all(20)),
                            controller: ipcontroller,
                            onSubmitted: (String value) {
                              setState(() {
                                ip = ipcontroller.text;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text("Basic Scan", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                  Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5.0)
                                  
                                    ),
                                    child: Center(child: SelectableText("sudo nmap $ip", style: TextStyle(color: Colors.white, fontSize: 20),)),),
                                ],
                              ),
                            ),
                          ),
                          
                          
                        ],
                      ),
                    ),
                    
                    SizedBox(height: 30,),

                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text("Running Services Version Detection", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                  Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5.0)
                                  
                                    ),
                                    child: Center(child: SelectableText("sudo nmap $ip -sV", style: TextStyle(color: Colors.white, fontSize: 20),)),),
                                ],
                              ),
                            ),
                          ),
                          
                          SizedBox(height: 30,),

                          Container(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text("OS Detection", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                  Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5.0)
                                  
                                    ),
                                    child: Center(child: SelectableText("sudo nmap $ip -O", style: TextStyle(color: Colors.white, fontSize: 20),)),),
                                ],
                              ),
                            ),
                          ),
                          
                          SizedBox(height: 30,),

                          Container(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text("Setting the scan speed \n(it is 0-5 and 3 is default and 5 is the fastest, 0 is the slowest.)", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                                  Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5.0)
                                  
                                    ),
                                    child: Center(child: SelectableText("sudo nmap $ip -T5", style: TextStyle(color: Colors.white, fontSize: 20),)),),
                                ],
                              ),
                            ),
                          ),
                          
                          SizedBox(height: 30,),

                          Container(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text("Port Scan", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                  Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5.0)
                                  
                                    ),
                                    child: Center(child: SelectableText("sudo nmap $ip -p-", style: TextStyle(color: Colors.white, fontSize: 20),)),),
                                ],
                              ),
                            ),
                          ),
                          
                          SizedBox(height: 30,),

                          Container(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text("Specific Port Scan", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                  Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5.0)
                                  
                                    ),
                                    child: Center(child: SelectableText("sudo nmap $ip -p x", style: TextStyle(color: Colors.white, fontSize: 20),)),),
                                ],
                              ),
                            ),
                          ),

                          
                          
                          
                          
                        ],
                      ),
                    ),

                    SizedBox(height: 30,),

                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text("Scanning with Scripts", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                  Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5.0)
                                  
                                    ),
                                    child: Center(child: SelectableText("sudo nmap $ip -sC", style: TextStyle(color: Colors.white, fontSize: 20),)),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 30,),

                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text("The Scan I Use Usually", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                  Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5.0)
                                  
                                    ),
                                    child: Center(child: SelectableText("sudo nmap $ip -sV -sC -T5 -p- -v ", style: TextStyle(color: Colors.white, fontSize: 20),)),),
                                ],
                              ),
                            ),
                          ),

                          
                          
                          
                          
                        ],
                      ),
                    ),

                        ], // Column Bitiş
                      ),
                    ),
                          
                        ],
                      ),
                    ),
                          
                        ],
                      ),
                    ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
