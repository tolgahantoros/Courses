import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilSayfasi());
}

class ProfilSayfasi extends StatelessWidget {
  const ProfilSayfasi({super.key});

  final String profilFotoUrl =
      'https://media.licdn.com/dms/image/v2/D4D03AQGmDD6a_V3BhA/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1689530110051?e=1755129600&v=beta&t=BFlaiRskrVC_2aTUmbkkrRG3DjpK_RsIR3BvSUZlKE8';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tolgahan Toros Profil',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          // Ekranı tamamen kapla
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF3A3D98), Color(0xFF2B2E61)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Profil Fotoğrafı ve Border + Shadow
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 15,
                          offset: const Offset(0, 5),
                        ),
                      ],
                      border: Border.all(
                        color: Colors.white,
                        width: 4,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage(profilFotoUrl),
                    ),
                  ),

                  const SizedBox(height: 28),

                  // İsim
                  const Text(
                    'Tolgahan Toros',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Hakkında bölümü
                  const Text(
                    'Mobil ve full stack developer, Flutter ve modern teknolojilerle uygulama geliştiriyor. '
                    'Yeniliklere açık, öğrenmeyi seven bir bilgisayar mühendisi.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 36),

                  // Takipçi, Takip Edilen, Gönderi sayıları kartları
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildSayacKart('Takip Edilen', 180),
                      buildSayacKart('Takipçi', 250),
                      buildSayacKart('Gönderi', 45),
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

  Widget buildSayacKart(String baslik, int sayi) {
    return Container(
      width: 100,
      padding: const EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            sayi.toString(),
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1.1,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            baslik,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white70,
            ),
          )
        ],
      ),
    );
  }
}
