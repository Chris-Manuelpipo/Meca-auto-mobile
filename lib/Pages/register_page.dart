import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Inscription")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(decoration: InputDecoration(labelText: "Nom")),
            const SizedBox(height: 20),
            const TextField(decoration: InputDecoration(labelText: "Email")),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Mot de passe"),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Simuler enregistrement et retour vers connexion
                Navigator.pop(context); // Retour vers login
              },
              child: const Text("S'inscrire"),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("J'ai déjà un compte"),
            ),
          ],
        ),
      ),
    );
  }
}
