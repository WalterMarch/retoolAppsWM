<Container
  id="containerApp"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text id="containerTitleApp" value="# Argonautica" verticalAlign="center" />
    <Button
      id="buttonInfo"
      iconAfter="bold/interface-alert-information-circle-alternate"
      styleVariant="outline"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrameInfo"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text1"
      value="## Upload, Edit, Download JSON Files"
      verticalAlign="center"
    />
  </Header>
  <View id="b1f60" viewKey="View 1">
    <FileDropzone
      id="fileDropzoneUpload"
      _isUpgraded={true}
      accept="['json']"
      appendNewSelection={true}
      iconBefore="bold/interface-upload-button-2"
      label=""
      labelPosition="top"
      loading=""
      parseFiles={true}
      placeholder="Select or drag and drop JSON file"
    />
    <JSONEditor
      id="jsonEditorParsedValue"
      value="{{fileDropzoneUpload.parsedValue}}"
    />
    <TextInput
      id="textInputFileNameForDownload"
      label="Download As"
      labelAlign="right"
      labelCaption="Extension 'json' will be added"
      placeholder="Enter value"
      value={'{{(fileDropzoneUpload.files[0].name).split(".")[0]}}'}
    />
    <Button
      id="buttonDownloadJSON"
      disabled="{{!(jsonEditorParsedValue.value && textInputFileNameForDownload.value)}}"
      styleVariant="solid"
      text="Download"
    >
      <Event
        event="click"
        method="exportData"
        params={{
          ordered: [
            { fileType: "json" },
            { data: "{{jsonEditorParsedValue.value}}" },
            { fileName: "{{textInputFileNameForDownload.value}}" },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
