# Office to PDF API

Office to PDF converts Word, Excel, PowerPoint, OpenDocument, RTF, text and CSV files to PDF and returns a download link valid for 2 days, with the page count of the result. Upload the file or send its URL. Paid plans can convert only selected pages and set landscape orientation.

[![npm version](https://img.shields.io/npm/v/@apiverve/officetopdf.svg)](https://www.npmjs.com/package/@apiverve/officetopdf)

This is a JavaScript wrapper for the [Office to PDF API](https://apiverve.com/marketplace/officetopdf?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/officetopdf
```

Using yarn:
```shell
yarn add @apiverve/officetopdf
```

---

## Configuration

Before using the Office to PDF API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The Office to PDF API documentation is found here: [https://docs.apiverve.com/ref/officetopdf](https://docs.apiverve.com/ref/officetopdf?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const officetopdfAPI = require('@apiverve/officetopdf');
const api = new officetopdfAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

### File Upload

This API requires a file upload. Use `executeWithFile()` to upload files:

```javascript
// Upload a file (path, Buffer, or ReadStream)
api.executeWithFile('/path/to/file.document', options, callback);
```

**Accepted file types:** .doc, .docx, .xls, .xlsx, .ppt, .pptx, .odt, .ods, .odp, .rtf, .txt, .csv
**Maximum file size:** 10 MB

### Available Parameters

Pass additional parameters via `options.fields`:

| Parameter | Type | Description |
|-----------|------|-------------|
| `pageRanges` | string | Pages to convert, such as 1-3,5. Converts the whole document when omitted |
| `landscape` | boolean | Lay the pages out in landscape orientation |

```javascript
api.executeWithFile('/path/to/file', {
    fields: {
        pageRanges: '1-2',
        landscape: 'landscape'
    }
});
```

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
// This API requires a file upload
// You can pass a file path, Buffer, or ReadStream
var filePath = '/path/to/document.doc';

api.executeWithFile(filePath,
    {
        fields: {
        pageRanges: '1-2',
        landscape: 'landscape'
        }
    }, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
// This API requires a file upload
// You can pass a file path, Buffer, or ReadStream
var filePath = '/path/to/document.doc';

api.executeWithFile(filePath, { fields: { /* parameters */ } })
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    // This API requires a file upload
// You can pass a file path, Buffer, or ReadStream
var filePath = '/path/to/document.doc';

    try {
        const data = await api.executeWithFile(filePath, { fields: { /* parameters */ } });
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
