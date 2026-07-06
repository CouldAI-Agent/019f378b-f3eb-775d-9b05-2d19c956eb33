import 'package:flutter/material.dart';

void main() {
  runApp(const GlacierEconomyApp());
}

class GlacierEconomyApp extends StatelessWidget {
  const GlacierEconomyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ග්ලැසියර් වල ආර්ථික වටිනාකම',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF00B4D8),
          brightness: Brightness.light,
          background: const Color(0xFFE0FBFC),
        ),
        useMaterial3: true,
        fontFamily: 'Roboto', // Fallback for Sinhala rendering
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const GlacierInfoScreen(),
      },
    );
  }
}

class GlacierInfoScreen extends StatelessWidget {
  const GlacierInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ග්ලැසියර් වල ආර්ථික වටිනාකම',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: ListView(
              padding: const EdgeInsets.all(24.0),
              children: [
                const SizedBox(height: 16),
                _buildInfoCard(
                  context,
                  title: '1. මිරිදිය ජල සැපයුම සහ කෘෂිකර්මාන්තය',
                  icon: Icons.water_drop,
                  description:
                      'ග්ලැසියර යනු ලෝකයේ විශාලතම මිරිදිය සංචිතයයි. වියළි කාලවලදී කෘෂිකර්මාන්තයට, පානයට සහ කර්මාන්ත සඳහා අවශ්‍ය ජලය ලබා දෙමින් ගංගා සහ ඇළ දොළ පෝෂණය කිරීමේ ප්‍රධාන මූලාශ්‍රයක් ලෙස ග්ලැසියර ක්‍රියා කරයි. විශේෂයෙන්ම ආසියාවේ සහ දකුණු ඇමෙරිකාවේ මිලියන ගණනක් ජනතාවගේ දෛනික කෘෂිකාර්මික කටයුතු සහ ආර්ථික පැවැත්ම රඳා පවතින්නේ මෙම ග්ලැසියර දියවීමෙන් ලැබෙන ජලය මතය.',
                ),
                const SizedBox(height: 24),
                _buildInfoCard(
                  context,
                  title: '2. ජල විදුලි උත්පාදනය',
                  icon: Icons.electric_bolt,
                  description:
                      'ග්ලැසියර දියවීමෙන් ජනනය වන අඛණ්ඩ ජල ධාරිතාව ජල විදුලිය නිපදවීම සඳහා බහුලව යොදා ගැනේ. කඳුකර සහ ශීත කලාපීය රටවල කර්මාන්ත සහ ගෘහස්ථ අවශ්‍යතා සඳහා අඩු පිරිවැයකින් සහ පරිසර හිතකාමීව බලශක්තිය සැපයීමට මෙය බෙහෙවින් දායක වේ. මෙය එම රටවල ජාතික ආර්ථිකය ඉහළ නැංවීමට සහ බලශක්ති ආනයන වියදම් අවම කිරීමට විශාල ශක්තියකි.',
                ),
                const SizedBox(height: 24),
                _buildInfoCard(
                  context,
                  title: '3. සංචාරක කර්මාන්තය',
                  icon: Icons.downhill_skiing,
                  description:
                      'ග්ලැසියර ආශ්‍රිත ප්‍රදේශ ස්වභාවික සෞන්දර්යයෙන් අනූන බැවින්, ඒවා ලොව පුරා සංචාරකයින් විශාල වශයෙන් ආකර්ෂණය කර ගනී. හිම මත ලිස්සා යාම (Skiing), කඳු නැගීම සහ දර්ශන නැරඹීම වැනි විනෝදාත්මක ක්‍රියාකාරකම් හරහා දේශීය ජනතාවට රැකියා අවස්ථා නිර්මාණය වේ. හෝටල්, ප්‍රවාහන සහ වෙනත් සේවා සැපයීම හරහා රටක සංචාරක ආර්ථිකයට මෙයින් ඉහළ ආදායමක් ගලා එයි.',
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context, {required String title, required IconData icon, required String description}) {
    return Card(
      elevation: 4,
      shadowColor: Colors.blue.withOpacity(0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    icon,
                    size: 32,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    height: 1.6,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
