# [Office to PDF API](https://apiverve.com/marketplace/officetopdf?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

Office to PDF converts Word, Excel, PowerPoint, OpenDocument, RTF, text and CSV files to PDF and returns a download link valid for 2 days, with the page count of the result. Upload the file or send its URL. Paid plans can convert only selected pages and set landscape orientation.

The Office to PDF API provides a simple, reliable way to integrate office to pdf functionality into your applications. Built for developers who need production-ready office to pdf capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/officetopdf?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/officetopdf?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-POST-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/officetopdf)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.OfficetoPDF)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-officetopdf/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_officetopdf)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/officetopdf)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_officetopdf)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callOfficetoPDFAPI() {
    try {
        const requestBody = {
    "document": "https://raw.githubusercontent.com/apache/poi/trunk/test-data/document/SampleDoc.docx"
};

        const response = await fetch('https://api.apiverve.com/v1/officetopdf', {
            method: 'POST',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(requestBody)
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callOfficetoPDFAPI();
```

### Using cURL

```bash
curl -X POST "https://api.apiverve.com/v1/officetopdf" \
  -H "x-api-key: YOUR_API_KEY_HERE" \
  -F "document=@/path/to/your-file"
# Accepted formats: .doc, .docx, .xls, .xlsx, .ppt, .pptx, .odt, .ods, .odp, .rtf, .txt, .csv (max 10MB)
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/officetopdf
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/officetopdf) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.OfficetoPDF
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.OfficetoPDF) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-officetopdf
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-officetopdf/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_officetopdf
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_officetopdf) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/officetopdf
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/officetopdf) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_officetopdf
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_officetopdf) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:officetopdf-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/officetopdf-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Office to PDF API](https://apiverve.com/marketplace/officetopdf?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/officetopdf](https://docs.apiverve.com/ref/officetopdf)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Office to PDF API is commonly used for:

- **Web Applications** - Add office to pdf features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with office to pdf capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Office to PDF API:

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

---

## Support & Community

- 🏠 **API Home**: [Office to PDF API](https://apiverve.com/marketplace/officetopdf?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
