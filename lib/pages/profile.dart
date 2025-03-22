import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
class Profile extends StatelessWidget {
  final String tProfile = "Profile";
  final String tProfileImage = "assets/images/p2.jpg";
  final String tProfileHeading = "John Doe";
  final String tProfileSubHeading = "john.doe@gmail.com";
  final String tEditProfile = "Edit Profile";
  final Color tPrimaryColor = Color(0xFF8AAAE5);
  final Color tDarkColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    // var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 120,),
              SizedBox(
                width: 180,
                height: 180,
                child: CircleAvatar(
                  backgroundImage: AssetImage(tProfileImage),
                  backgroundColor: null,
                ),
              ),
              const SizedBox(height: 10),
              Text(tProfileHeading, style: Theme.of(context).textTheme.bodySmall),
              Text(tProfileSubHeading, style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tPrimaryColor,
                    side: BorderSide.none,
                    shape: const StadiumBorder(),
                  ),
                  child: Text(tEditProfile, style: TextStyle(color: tDarkColor)),
                ),
              ),
              Divider(),
              SizedBox(height: 10,),
              ProfileMeaningfulWidget(title: "Settings",icon: Icon(LineAwesomeIcons.cog_solid),onPress: (){},endIcon: true,),
              ProfileMeaningfulWidget(title: "Billing Details",icon: Icon(LineAwesomeIcons.wallet_solid),onPress: (){},endIcon: true,),
              ProfileMeaningfulWidget(title: "User management",icon: Icon(LineAwesomeIcons.user_check_solid),onPress: (){},endIcon: true,),
              ProfileMeaningfulWidget(title: "Info",icon: Icon(LineAwesomeIcons.info_solid),onPress: (){},endIcon: true,),
              ProfileMeaningfulWidget(title: "Logout",icon: Icon(LineAwesomeIcons.sign_out_alt_solid),onPress: (){
                FirebaseAuth.instance.signOut().then((value){
                  print('Signed out');
                  Navigator.pushNamed(context, 'signin_page');
                }
                );

              },endIcon: true,)
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMeaningfulWidget extends StatelessWidget {
  final String title;
  final Icon icon;
  final VoidCallback onPress;
  final bool endIcon;
  const ProfileMeaningfulWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.endIcon,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
        ),
        child: icon,
      ),
      title: Text(title, style: Theme.of(context).textTheme.bodyMedium),
      trailing: endIcon?Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(LineAwesomeIcons.angle_right_solid,size: 19,),
      ):null,
    );
  }
}