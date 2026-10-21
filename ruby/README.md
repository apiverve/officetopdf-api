# Office to PDF API - Ruby Gem

Office to PDF converts Word, Excel, PowerPoint, OpenDocument, RTF, text and CSV files to PDF and returns a download link valid for 2 days, with the page count of the result. Upload the file or send its URL. Paid plans can convert only selected pages and set landscape orientation.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_officetopdf'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_officetopdf
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_officetopdf'

# Initialize the client
client = APIVerve::Officetopdf::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  document: "",
  pageRanges: "1-2",
  landscape: 
})

# Print the response
puts response
```

### File Upload

```ruby
# Upload a file
response = client.execute_with_file("/path/to/file.jpg")

# Or use a URL
response = client.execute_with_url("https://example.com/image.jpg")
```

### Error Handling

```ruby
begin
  response = client.execute({ document: "https://raw.githubusercontent.com/apache/poi/trunk/test-data/document/SampleDoc.docx" })
  puts response["data"]
rescue APIVerve::Officetopdf::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Officetopdf::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Officetopdf::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/officetopdf?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/officetopdf?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/officetopdf?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
