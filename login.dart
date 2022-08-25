import 'package:flutter/material.dart';


class Log_ extends StatelessWidget {
  @override
  TextEditingController email_controller = TextEditingController();
  TextEditingController pass_controller = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          width: double.infinity,
          child: Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                        ),
                      ),
                      TextFormField(
                        style: TextStyle(
                          height: 1.0,
                          color: Colors.blue,
                        ),
                        controller: email_controller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                        ),
                      ),
                      TextFormField(
                        style: TextStyle(
                          height: 1.0,
                          color: Colors.blue,
                        ),
                        controller: pass_controller,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ],
                  ),



                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.black,
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        print(email_controller.text);
                        print(pass_controller.text);
                      },
                      height: 50.0,
                      color: Colors.green,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1.0,
                          color: Colors.grey[500],
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: (){},
                          child:Text(
                            'or continue with',
                            style:TextStyle(
                              color: Colors.grey[500],
                            ) ,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 1.0,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: (){},
                        icon: Image(
                          image:AssetImage('asset/images/Google.png') ,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Image(
                          image:AssetImage('asset/images/Facebook.png') ,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*Container(
width: double.infinity,
child: Column(
children: [
Text('Email'),
TextFormField(
decoration: InputDecoration(
border: OutlineInputBorder(),
),
keyboardType: TextInputType.emailAddress,
),
SizedBox(
height: 20.0,
),
Text('Password'),
TextFormField(
keyboardType: TextInputType.visiblePassword,
obscureText: true,
decoration: InputDecoration(
border: OutlineInputBorder(),
),
),

],
),
),*/