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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Iskoola Pota', // Common standard for Sinhala fonts, fallback works nicely in Flutter Web
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const GlacierArticleScreen(),
      },
    );
  }
}

class GlacierArticleScreen extends StatelessWidget {
  const GlacierArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ග්ලැසියර් වල ආර්ථික වටිනාකම'),
        backgroundColor: Colors.blue.shade800,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: ListView(
            padding: const EdgeInsets.all(24.0),
            children: const [
              Text(
                'ග්ලැසියර් (Glaciers) වල ආර්ථික වටිනාකම',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              Text(
                'පෘථිවි පෘෂ්ඨයෙන් සෑහෙන ප්‍රමාණයක් ආවරණය කරන ග්ලැසියර් හෙවත් විශාල අයිස් ගංගා, හුදෙක් පාරිසරික වශයෙන් පමණක් නොව ආර්ථික වශයෙන් ද අතිශය වැදගත් ස්වභාවික සම්පතකි. ගෝලීය ආර්ථිකය මෙන්ම බොහෝ රටවල දේශීය ආර්ථිකයන් ද මෙම ග්ලැසියර් පද්ධති මත සෘජුව හා වක්‍රව රඳා පවතී. ග්ලැසියර් වල ආර්ථික වටිනාකම ප්‍රධාන වශයෙන් පහත සඳහන් කරුණු තුන ඔස්සේ පුළුල්ව සාකච්ඡා කළ හැකිය.',
                style: TextStyle(fontSize: 18, height: 1.6),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 24),
              _SectionHeading('1. කෘෂිකර්මාන්තය සහ ජල සම්පාදනය සඳහා අත්‍යවශ්‍ය මිරිදිය ප්‍රභවයක් වීම'),
              SizedBox(height: 12),
              Text(
                'ලෝකයේ ඇති සමස්ත මිරිදිය සංචිතයෙන් 68% කටත් වඩා වැඩි ප්‍රමාණයක් ගබඩා වී ඇත්තේ ග්ලැසියර් සහ අයිස් තට්ටු තුළ ය. විශේෂයෙන්ම හිමාලය, ඇන්ඩීස් වැනි කඳුකර කලාපවල පිහිටි ග්ලැසියර්, එම කලාපවලින් ආරම්භ වන ගංගා සඳහා ප්‍රධාන ජල මූලාශ්‍රය වේ. මෙහි ආර්ථික වැදගත්කම වඩාත් ඉස්මතු වන්නේ ගිම්හාන කාලයේදී සහ වියළි කාලගුණික තත්ත්වයන් යටතේදීය. වර්ෂාපතනය අඩු කාලවලදී ග්ලැසියර් ක්‍රමයෙන් දියවීම නිසා ගංගාවල ජල මට්ටම නොකඩවා පවත්වා ගැනීමට හැකි වේ.\n\nමෙම අඛණ්ඩ ජල සැපයුම කෘෂිකර්මාන්තය සඳහා ජීව රුධිරය බඳුය. උදාහරණයක් ලෙස, ආසියාවේ ඉන්දු, ගංගා සහ බ්‍රහ්මපුත්‍ර වැනි ගංගා නිම්නවල වෙසෙන බිලියන ගණනක් වූ ජනතාවගේ කෘෂිකාර්මික කටයුතු රඳා පවතින්නේ හිමාලයානු ග්ලැසියර් දියවීමෙන් ලැබෙන ජලය මතය. නිසි පරිදි වගාවන් සඳහා ජලය ලැබීමෙන් කෘෂිකාර්මික නිෂ්පාදනය ඉහළ යන අතර, එය රටක ආහාර සුරක්ෂිතතාව තහවුරු කිරීමට මෙන්ම කෘෂි නිෂ්පාදන අපනයනයෙන් විශාල විදේශ විනිමයක් උපයා ගැනීමට ද උපකාරී වේ.',
                style: TextStyle(fontSize: 18, height: 1.6),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 24),
              _SectionHeading('2. අඩු පිරිවැය සහ පරිසර හිතකාමී ජල විදුලි බලය උත්පාදනය'),
              SizedBox(height: 12),
              Text(
                'ග්ලැසියර් ආශ්‍රිතව සිදුවන තවත් සුවිශේෂී ආර්ථික වාසියක් වන්නේ ජල විදුලි බලය උත්පාදනයයි. කඳුකර ප්‍රදේශවලින් ආරම්භ වන ග්ලැසියර් ජල ධාරා පහළට ගලා එන්නේ විශාල වේගයකින් සහ පීඩනයකිනි. මෙම ශක්තිය යොදාගනිමින් ජල විදුලි බලාගාර ඉතා කාර්යක්ෂමව ක්‍රියාත්මක කළ හැකිය. නෝර්වේ, ස්විට්සර්ලන්තය, කැනඩාව, නවසීලන්තය සහ දකුණු ඇමෙරිකානු රටවල් බොහොමයක් තම ජාතික විදුලිබල අවශ්‍යතාවයෙන් සැලකිය යුතු ප්‍රතිශතයක් සපුරා ගන්නේ මෙවැනි ග්ලැසියර් ආශ්‍රිත ජල මූලාශ්‍ර හරහාය.\n\nජල විදුලිය යනු පුනර්ජනනීය බලශක්ති ප්‍රභවයකි. ඛනිජ තෙල් හෝ ගල් අඟුරු වැනි ආනයනික පොසිල ඉන්ධන මත රඳා නොපවතින බැවින්, මෙමගින් බලශක්තිය නිපදවීම සඳහා වැය වන පිරිවැය ඉතා අවම වේ. අඩු පිරිවැයකින් විදුලිය නිපදවීමට හැකි වීම, කර්මාන්තශාලාවල නිෂ්පාදන වියදම් අඩු කිරීමට හේතු වන අතර, එය භාණ්ඩවල මිල අඩුවීමට සහ කර්මාන්තවල තරඟකාරීත්වය ඉහළ නැංවීමට බලපායි.',
                style: TextStyle(fontSize: 18, height: 1.6),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 24),
              _SectionHeading('3. සංචාරක කර්මාන්තය, විනෝදාස්වාදය සහ ප්‍රාදේශීය සංවර්ධනය'),
              SizedBox(height: 12),
              Text(
                'ග්ලැසියර් ආශ්‍රිත ප්‍රදේශ යනු ලොව පුරා සංචාරකයින්ගේ දැඩි ආකර්ෂණයට ලක්වූ ස්ථාන වේ. හිමෙන් වැසුණු කඳු මුදුන් සහ අලංකාර අයිස් නිම්න ස්වභාවික සෞන්දර්යයෙන් අනූන බැවින්, වාර්ෂිකව මිලියන ගණනක් සංචාරකයින් මෙම ප්‍රදේශ නැරඹීමට පැමිණෙති. මෙය ආර්ථිකයට දැවැන්ත ආදායමක් ගෙන දෙන මාර්ගයකි. ස්විට්සර්ලන්තයේ ඇල්ප්ස් කඳුකරය, ඇලස්කාව, අයිස්ලන්තය සහ පකිස්ථානයේ උතුරු ප්‍රදේශ මීට කදිම නිදසුන් වේ.\n\nමෙම ප්‍රදේශවල සංචාරක කර්මාන්තය හුදෙක් නැරඹීමට පමණක් සීමා වී නොමැත. හිම මත ලිස්සා යාම (Skiing), හිම කඳු නැගීම (Ice climbing), සහ කේබල් කාර් මගින් සිදුකරන ගමන් වැනි විනෝදාස්වාද ක්‍රියාකාරකම් සඳහා ද විශාල ඉල්ලුමක් පවතී. මෙම ක්‍රියාකාරකම් හරහා ප්‍රාදේශීය ජනතාවට රැකියා අවස්ථා දහස් ගණනක් නිර්මාණය වේ. හෝටල් සහ නවාතැන් පහසුකම්, ප්‍රවාහන සේවා, සංචාරක මඟපෙන්වන්නන් සහ දේශීය වෙළෙඳපොළවල් සංවර්ධනය වීම තුළින් ප්‍රාදේශීය ආර්ථිකය ශක්තිමත් වේ.',
                style: TextStyle(fontSize: 18, height: 1.6),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 32),
              Divider(thickness: 2),
              SizedBox(height: 16),
              Text(
                'නිගමනය',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'සාරාංශයක් ලෙස ගත් කල, ග්ලැසියර් යනු හුදෙක් අයිස් තට්ටුවක් නොව සුවිශාල ආර්ථික බලවේගයකි. කෘෂිකර්මාන්තයට ජීවය දෙන මිරිදිය සැපයීමෙන්ද, කර්මාන්ත පෝෂණය කරන ලාභදායී විදුලිය උත්පාදනයෙන්ද, රටකට විදේශ විනිමය ගෙන එන සංචාරක කර්මාන්තය නඟා සිටුවීමෙන්ද ග්ලැසියර් වලින් මිනිස් වර්ගයාට ලැබෙන ආර්ථික දායකත්වය අමිල වේ. එබැවින්, ගෝලීය උණුසුම හේතුවෙන් සිදුවන ග්ලැසියර් දියවී යාමේ තර්ජනයෙන් මෙම වටිනා සම්පත ආරක්ෂා කර ගැනීම සමස්ත ලෝකයේම ආර්ථික පැවැත්ම උදෙසා අත්‍යවශ්‍ය වේ.',
                style: TextStyle(
                  fontSize: 18,
                  height: 1.6,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionHeading extends StatelessWidget {
  final String text;

  const _SectionHeading(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.blue.shade900,
      ),
    );
  }
}
