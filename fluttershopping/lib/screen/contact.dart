// import 'package:flutter/material.dart';
// import 'package:flutter_email_sender/flutter_email_sender.dart';

// class ContactUs extends StatefulWidget {
//   const ContactUs({Key key, this.title}) : super(key: key);
//   final String title;
//   @override
//   _ContactUsState createState() => _ContactUsState();
// }

// class _ContactUsState extends State<ContactUs> {
//   final _formKey = GlobalKey<FormState>();
//   bool _enableBtn = false;
//   TextEditingController emailController = TextEditingController();
//   TextEditingController subjectController = TextEditingController();
//   TextEditingController messageController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.amber[200],
//       appBar: AppBar(backgroundColor: Colors.orange[200],
//         title:Text("Contact Us",style:TextStyle(color: Colors.black))
//       ),
//       body:Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Container(
//           decoration: BoxDecoration(color:Colors.white,
//           borderRadius: BorderRadius.circular(20)),
//           child: Column(
//             children: [
//               Text("Name"),
//               Container(
//                 decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10)),
//                 child: Form(
//         key: _formKey,
//         onChanged: (() {
//           setState(() {
//             _enableBtn = _formKey.currentState.validate();
//           });
//         }),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               TextFields(
//                   controller: subjectController,
//                   name: "Subject",
//                   validator: ((value) {
//                     if (value.isEmpty) {
//                       return 'Name is required';
//                     }
//                     return null;
//                   })),
//               TextFields(
//                   controller: emailController,
//                   name: "Email",
//                   validator: ((value) {
//                     if (value.isEmpty) {
//                       return 'Email is required';
//                     } else if (!value.contains('@')) {
//                       return 'Please enter a valid email address';
//                     }
//                     return null;
//                   })),
//               TextFields(
//                   controller: messageController,
//                   name: "Message",
//                   validator: ((value) {
//                     if (value.isEmpty) {
//                       setState(() {
//                         _enableBtn = true;
//                       });
//                       return 'Message is required';
//                     }
//                     return null;
//                   }),
//                   maxLines: null,
//                   type: TextInputType.multiline),
//               Padding(
//                   padding: EdgeInsets.all(20.0),
//                   child: ElevatedButton(
//                     style: ButtonStyle(
//                         backgroundColor:
//                             MaterialStateProperty.resolveWith<Color>(
//                           (Set<MaterialState> states) {
//                             if (states.contains(MaterialState.pressed))
//                               return Theme.of(context)
//                                   .colorScheme
//                                   .primary
//                                   .withOpacity(0.5);
//                             else if (states.contains(MaterialState.disabled))
//                               return Colors.grey;
//                             return Colors.blue; // Use the component's default.
//                           },
//                         ),
//                         shape:
//                             MaterialStateProperty.all<RoundedRectangleBorder>(
//                                 RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(40.0),
//                         ))),
//                     onPressed: _enableBtn
//                         ? (() async {
//                             final Email email = Email(
//                               body: messageController.text,
//                               subject: subjectController.text,
//                               recipients: [emailController.text],
//                               isHTML: false,
//                             );
//                             await FlutterEmailSender.send(email);
//                           })
//                         : null,
//                     child: Text('Submit'),
//                   )),
//             ],
//           ),
//         ),
//       ),
//               )
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }

// class TextFields extends StatelessWidget {
//   final TextEditingController controller; 
//   final String name;
//   final String Function(String) validator;
//   final int maxLines;
//   final TextInputType type;

//   TextFields({@required this.controller, @required this.name, @required this.validator,this.maxLines,this.type});
//   @override
//   Widget build(BuildContext context) {
//     OutlineInputBorder border = OutlineInputBorder(borderRadius: BorderRadius.circular(40.0),borderSide: BorderSide.none);
//     return  Padding(
//         padding: EdgeInsets.all(20.0),
//         child: TextFormField(
//           autovalidateMode: AutovalidateMode.onUserInteraction,
//            keyboardType: type,
//           maxLines: maxLines,
//           controller: controller,
//           decoration: InputDecoration(
//             border: InputBorder.none,
//             fillColor: Colors.grey[300],
//             filled: true,
//             labelText: name,
//             focusedErrorBorder: border,
//             focusedBorder: border,
//             enabledBorder: border,
//             errorBorder: border,
//           ),
//           // The validator receives the text that the user has entered.
//           validator: validator,
//         ),
//     );
//   }
// }