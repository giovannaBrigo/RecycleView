import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recycle_view/views/cadastro.dart';
import 'package:recycle_view/views/login.dart';

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // bottomSheet: Stack(children: <Widget>[
        //   Container(
        //     child: Image.asset('assets/images/ellipse.png'),
        //   ),
        //   Container(
        //     //alignment: AlignmentDirectional.bottomEnd,
        //     child: Image.asset(
        //       'assets/images/leave.png',
        //       height: 190,
        //     ),
        //   ),
        //   Align(
        //     alignment: Alignment.bottomRight,
        //     child: Container(
        //       child: Image.asset(
        //         'assets/images/recycle-bin.png',
        //       ),
        //     ),
        //   ),
        // ]),
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/wave.png'),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter)),
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 70,
            ),
            Container(
              alignment: AlignmentDirectional.topEnd,
              child: Image.asset(
                'assets/images/sparkles.png',
              ),
            ),
            SizedBox(
              height: 58,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'RecycleView ',
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 34, fontWeight: FontWeight.w300)),
              ),
              Image.asset(
                'assets/images/ecology.png',
                height: 50,
                width: 50,
              ),
            ]),
            //Text('RecycleView', style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 34, fontWeight: FontWeight.w300)),),
            Text('O jeito reciclável de ser!',
                style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14))),
            //Image.asset('assets/images/planet-earth.png',),
            SizedBox(
              height: 70,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.bottomToTop,
                        child: Login(),
                        duration: Duration(milliseconds: 150)));
                // Navigator.of(context).push(_createRoute(Login()));
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text('Entrar',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w300))),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  padding:
                      EdgeInsets.only(top: 15, bottom: 15, left: 25, right: 25),
                  backgroundColor: Color.fromRGBO(156, 204, 140, 1)),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.bottomToTop,
                        child: Cadastro(),
                        duration: Duration(milliseconds: 150)));
                // Navigator.of(context).push(_createRoute(Cadastro()));
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => Cadastro()));
              },
              child: Text('Cadastrar',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w300))),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  padding:
                      EdgeInsets.only(top: 15, bottom: 15, left: 25, right: 25),
                  backgroundColor: Color.fromRGBO(156, 204, 140, 1)),
            ),
            SizedBox(
              height: 40,
            ),
            // Stack(children: <Widget>[
            //   Expanded(
            //     child: SizedBox(
            //       child: Container(
            //         child: Image.asset('assets/images/ellipse.png'),
            //       ),
            //     ),
            //   ),
            //   Container(
            //     //alignment: AlignmentDirectional.bottomEnd,
            //     child: Image.asset(
            //       'assets/images/leave.png',
            //       height: 190,
            //     ),
            //   ),
            //   Container(
            //     child: Image.asset(
            //       'assets/images/recycle-bin.png',
            //     ),
            //   ),
            // ]),
          ],
        ),
      ),
    ));
  }
}

Route _createRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.easeInCubic;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
