# Office to PDF API - PHP Package

Office to PDF converts Word, Excel, PowerPoint, OpenDocument, RTF, text and CSV files to PDF and returns a download link valid for 2 days, with the page count of the result. Upload the file or send its URL. Paid plans can convert only selected pages and set landscape orientation.

## Installation

Install via Composer:

```bash
composer require apiverve/officetopdf
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Officetopdf\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'document' => '',
    'pageRanges' => '1-2',
    'landscape' => 
]);

// Print the response
print_r($response);
```

### File Upload

```php
// Upload a file
$response = $client->executeWithFile('/path/to/file.jpg');

// Or use a URL
$response = $client->executeWithUrl('https://example.com/image.jpg');
```

### Error Handling

```php
use APIVerve\Officetopdf\Client;
use APIVerve\Officetopdf\Exceptions\APIException;
use APIVerve\Officetopdf\Exceptions\ValidationException;

try {
    $response = $client->execute(['document' => 'https://raw.githubusercontent.com/apache/poi/trunk/test-data/document/SampleDoc.docx']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/officetopdf?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/officetopdf?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/officetopdf?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
