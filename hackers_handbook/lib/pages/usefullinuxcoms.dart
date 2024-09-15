import 'package:flutter/material.dart';
import 'package:hackers_handbook/components/commandbox.dart';
import 'package:hackers_handbook/components/navbar.dart';

class UsefullLinuxCommands extends StatefulWidget {
  const UsefullLinuxCommands({super.key});

  @override
  State<UsefullLinuxCommands> createState() => _UsefullLinuxCommandsState();
}

class _UsefullLinuxCommandsState extends State<UsefullLinuxCommands> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Useful Linux Commands",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.grey,
      ),
      drawer: Navbar(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(5, 5),
                          color: Colors.grey,
                          blurRadius: 7,
                          spreadRadius: 5
                        )
                      ] // box shadow
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Text("SUID Commands", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 35),),
                                  SizedBox(height: 20,),
                                  CommandBox(command: "find / -user root -perm /4000 2>/dev/null"),
                                  SizedBox(height: 15,),
                                  CommandBox(command: "find / -perm -u=s -type f 2>/dev/null"),
                                  SizedBox(height: 15,),
                                  CommandBox(command: "find / -type f -name '*.txt' 2>/dev/null"),
                                  SizedBox(height: 15,),
                                  CommandBox(command: "find / -user root -perm -4000 -exec ls -ldb {}; > /tmp/suid"),
                                  SizedBox(height: 15,),
                                  CommandBox(command: "getcap -r / 2>/dev/null")
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: 30,),

                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Text("System Version", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 35),),
                                  SizedBox(height: 20,),
                                  CommandBox(command: "cat /etc/issue"),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: 30,),

                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Text("Kernel Version", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 35),),
                                  SizedBox(height: 20,),
                                  CommandBox(command: "uname -a"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
