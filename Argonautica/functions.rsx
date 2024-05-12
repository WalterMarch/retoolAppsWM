<GlobalFunctions>
  <JavascriptQuery
    id="jsAlternateDownloadCode"
    notificationDuration={4.5}
    query={include("./lib/jsAlternateDownloadCode.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="jsUpdateVersion"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/jsUpdateVersion.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <State id="varMajorVersion" value="0" />
</GlobalFunctions>
