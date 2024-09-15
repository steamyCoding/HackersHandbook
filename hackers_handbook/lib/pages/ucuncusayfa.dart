import 'package:flutter/material.dart';
import 'package:hackers_handbook/components/navbar.dart';
import 'package:url_launcher/link.dart';



class Info extends StatelessWidget {
  const Info({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Info",
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
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 250.0, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
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
                              spreadRadius: 5)
                        ]),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "Merhaba ben Steamy. Bu projenin ilk versiyonudur o yüzden kesinlikle çok güzel güncellemeler getireceğim ve bundan emin olabilirsiniz. Şimdilik görüşürüz...",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "Hi i am Steamy. This is the first version of this project because of that you can totally be sure that i will improve this project with beautiul updates. See you for now...",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}


