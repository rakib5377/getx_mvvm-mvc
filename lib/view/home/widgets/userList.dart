// import 'package:flutter/material.dart';
//
// class Userlist extends StatefulWidget {
//   final homeController;
//    Userlist({super.key,required this.homeController});
//
//   @override
//   State<Userlist> createState() => _UserlistState();
// }
//
// class _UserlistState extends State<Userlist> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: homeController.userList.value.data?.length,
//       itemBuilder: (context, index) {
//         var usersList = homeController.userList.value.data![index];
//         return Card(
//           child: ListTile(
//             leading: CircleAvatar(backgroundImage: NetworkImage(usersList.avatar.toString()),),
//             title: Text(usersList.firstName.toString()),
//             subtitle: Text(usersList.email.toString()),
//           ),
//         );
//       },);
//   }
// }

