# Office to PDF API - Dart/Flutter Client

Office to PDF converts Word, Excel, PowerPoint, OpenDocument, RTF, text and CSV files to PDF and returns a download link valid for 2 days, with the page count of the result. Upload the file or send its URL. Paid plans can convert only selected pages and set landscape orientation.

[![pub package](https://img.shields.io/pub/v/apiverve_officetopdf.svg)](https://pub.dev/packages/apiverve_officetopdf)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Office to PDF API](https://apiverve.com/marketplace/officetopdf?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_officetopdf: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_officetopdf/apiverve_officetopdf.dart';

void main() async {
  final client = OfficetopdfClient('YOUR_API_KEY');

  try {
    // This API requires a file upload — a JSON body is rejected with a 400.
    final response = await client.executeWithFile('/path/to/your-file');

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "pdfName": "8f3c2a51-6d0e-4b7a-9c1f-2e5d7a9b4c10.pdf",
    "inputName": "SampleDoc.docx",
    "inputFormat": "docx",
    "pageCount": 2,
    "landscape": false,
    "pageRanges": null,
    "size": 23654,
    "expires": 1792400000000,
    "downloadURL": "https://storage.googleapis.com/apiverve/APIData/officetopdf/8f3c2a51-6d0e-4b7a-9c1f-2e5d7a9b4c10.pdf?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1792400000&Signature=SAMPLE"
  }
}
```

## API Reference

- **API Home:** [Office to PDF API](https://apiverve.com/marketplace/officetopdf?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/officetopdf](https://docs.apiverve.com/ref/officetopdf?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
