import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //para tener varios providers
    return MultiProvider(
      //el guion bajo es para decir que no te interesa el de poner el contexto ahi
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
          title: 'Yes no App',
          debugShowCheckedModeBanner: false,
          theme: AppTheme(selectedColor: 3).theme(),
          home: const ChatScreen()),
    );
  }
}
