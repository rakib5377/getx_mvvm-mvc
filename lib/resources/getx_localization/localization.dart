import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'language': "Choose your Language",
      'email': "Email",
      'email_hint': 'Enter Email',
      'internet_exception':
          "We're unable to show results.\n please check your data\n Connection",
      'general_exception':
          "We're unable to process your request.\n Please try again",
      'splash_view': 'Welcome to\nGetx',
      'login': 'Login',
      'password': "Password",
      'password_hint': "Password",
      'home': 'Home',
      'settings': 'Settings',
      'english': 'English',
      'bangla': 'Bangla',
    },
    'bn_BD': {
      'language': "ভাষা নির্বাচন করুন ",
      'email': "ইমেল",
      'email_hint': 'ইমেল লিখুন',
      'internet_exception':
          "আমরা ফলাফল দেখাতে পারছি না।\n আপনার ডেটা সংযোগ পরীক্ষা \n করুন।",
      'general_exception':
          "আমরা আপনার অনুরোধটি প্রক্রিয়া করতে পারছি না।\n অনুগ্রহ করে আবার চেষ্টা করুন।",
      'splash_view': "Getx\n-এ স্বাগতম",
      'login': "লগইন",
      'password': 'পাসওয়ার্ড',
      'password_hint': "পাসওয়ার্ড লিখুন",
      'home': "হোম",
      'settings': "সেটিংস",
      'english': "ইংলিশ",
      'bangla': "বাংলা",
    },
  };
}
