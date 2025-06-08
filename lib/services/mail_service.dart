import 'package:url_launcher/url_launcher_string.dart';

class MailService {
  static Future<void> openMail(String to, String subject, String body) async {
    final uri = Uri(
      scheme: 'mailto',
      path: to,
      query: Uri.encodeFull('subject=$subject&body=$body'),
    ).toString();
    await launchUrlString(uri);
  }
}