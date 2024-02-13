// buttonDownloadJSON uses the built-in Event handlers 
// feature to download (or export) the JSON file from the 
// editor.
// this code is an example of an alternate method

const raw_data = jsonEditorParsedValue.value;

const filename = textInputFileNameForDownload.value;

if (filename && raw_data) {
  // In this app, JSON.stringify is actually not needed
  // because the fileDropzone componenent parses the file
  // in such a way that the JSON is correctly formatted.
  // This, this transformation is for illustration purposes.
  const data = JSON.stringify(raw_data, null, 2);
  utils.downloadFile(data, filename, "json");
}