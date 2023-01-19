import 'dart:io';

import 'package:barcode_image/barcode_image.dart' as qr;
import 'package:image/image.dart';

void main(List<String> args) {
  final image = Image(500, 600);

  fill(image, getColor(117, 218, 131));

  qr.drawBarcode(image, qr.Barcode.code128(), 'mahizi');

  File('barcode.png').writeAsBytes(encodePng(image));
}
