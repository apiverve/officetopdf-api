using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.OfficetoPDF
{
    /// <summary>
    /// Query options for the Office to PDF API
    /// </summary>
    public class OfficetoPDFQueryOptions
    {
        /// <summary>
        /// The document to convert (up to 10 MB): doc, docx, xls, xlsx, ppt, pptx, odt, ods, odp, rtf, txt or csv, or a public URL to one
        /// </summary>
        [JsonProperty("document")]
        public string Document { get; set; }

        /// <summary>
        /// Pages to convert, such as 1-3,5. Converts the whole document when omitted
        /// </summary>
        [JsonProperty("pageRanges")]
        public string PageRanges { get; set; }

        /// <summary>
        /// Lay the pages out in landscape orientation
        /// </summary>
        [JsonProperty("landscape")]
        public bool? Landscape { get; set; }
    }
}
