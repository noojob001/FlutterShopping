import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Aboutme extends StatefulWidget {
  @override
  _AboutmeState createState() => _AboutmeState();
}

class _AboutmeState extends State<Aboutme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[200],
          title: Text("About Us",style:TextStyle(color: Colors.black)),
        ),
        body: Column(
          children: <Widget>[
            Stack(
              // ignore: deprecated_member_use
              overflow: Overflow.visible,
              alignment: Alignment.center,
              children: <Widget>[
                Image(
                    image: NetworkImage(
                        'https://cw.lnwfile.com/_/cw/_raw/01/o1/yq.jpg'),
                    height: MediaQuery.of(context).size.height / 4,
                    fit: BoxFit.fill),
                Positioned(
                    bottom: -35.0,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://cw.lnwfile.com/_/cw/_resize/200/200/gv/qd/i3.jpg'),
                    )),
              ],
            ),
            SizedBox(height: 40),
            ListTile(
              title: Center(
                  child: Text("โรงงานบะหมี่เฮียลิ้ม (บางรัก)",
                      style: TextStyle(fontSize: 18))),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: Text(
                    "79 ถนนจรัสเวียง แขวงสีลม เขตบางรัก กรุงเทพมหานคร 10500",
                    style: TextStyle(fontSize: 18)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 240, 15),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange[200],
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text("เกี่ยวกับฉัน", style: TextStyle(fontSize: 16)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange[100],
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: ListTile(
                    title: Text(
                        "โรงหมี่เฮียลิ้มเปิดดำเนินการมานานกว่า 50 ปี ด้วยประสบการณ์อันยาวนานของเรา จึงการรันตีด้วยคุณภาพความน่าเชื่อถือ และเป็นที่รู้จักมากมาย  ด้วยเส้นที่เหนียว นุ่ม สีเหลืองนวล  ใช้วัตถุดิบแป้งคุณภาพดี  เราใช้ไข่ไก่สดสะอาดในการผลิต ไม่ใส่สารกันบูด ปลอดภัย ผลิตทุกวัน จึงสดและใหม่ และสามารถผลิตได้ตามที่ต้องการ จำหน่ายทั้งปลีก - ส่ง",
                        style: TextStyle(fontSize: 16)),
                  ),
                ),
              ),
            ),
            // SizedBox(height: 20,),
            // Divider(height:5,
            // color:Colors.black),
            // SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(top: 31.0),
              child: Container(decoration: BoxDecoration(
                    color: Colors.orange[100],),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: SvgPicture.asset("images/facebook.svg"),
                        onPressed: () =>
                            launch("https://www.facebook.com/limnoodles/"),
                      ),
                      Text("@limnoodles"),
                      SizedBox(width:0),
                      IconButton(
                        icon: SvgPicture.asset("images/line.svg"),
                        onPressed: () =>
                            launch("http://line.me/ti/p/~lexsomphol"),
                      ),
                      Text("lexsomphol"),
                      SizedBox(width:0),
                      IconButton(
                        icon: Icon(Icons.phone),
                        onPressed: () =>
                            launch("tel://0851109777"),
                      ),
                      Text("0851109777"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
