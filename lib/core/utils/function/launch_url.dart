import 'package:bookly/core/utils/function/custom_snak_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUr(context, String url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl((uri))) {
    await launchUrl(uri);
  } else {
    customSnakBar(context, 'cannot launch $url');
  }
}
