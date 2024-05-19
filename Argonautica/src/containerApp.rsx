<Container
  id="containerApp"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  marginType="normal"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitleApp"
      marginType="normal"
      value="# Argonautica"
      verticalAlign="center"
    />
    <Module
      id="versionStamp1"
      inputAppName={'{{retoolContext.appName.split("/")[1]}}'}
      inputCopyright="{{varCopyrightInfo.value}}"
      inputDeveloper="admin"
      inputDeveloperGroup="{{varDeveloperGroup.value}}"
      inputMajorVersion="{{varMajorVersion.value}}"
      inputMinorVersion="{{varMinorVersion.value}}"
      name="versionStamp"
      pageUuid="87bf43d2-129a-11ef-9429-3bd74908f524"
    />
    <Text
      id="textContainerSubtitle"
      marginType="normal"
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
      marginType="normal"
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
      marginType="normal"
      placeholder="Enter value"
      value={'{{(fileDropzoneUpload.files[0].name).split(".")[0]}}'}
    />
    <Button
      id="buttonDownloadJSON"
      disabled="{{!(jsonEditorParsedValue.value && textInputFileNameForDownload.value)}}"
      marginType="normal"
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
