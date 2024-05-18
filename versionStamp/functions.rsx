<GlobalFunctions>
  <Folder id="qrys">
    <SqlQueryUnified
      id="queryUpdateVersion"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"current_version","value":"{{jsGenerateVersionNumber.data}}"}]'
      }
      editorMode="gui"
      filterBy={
        '[{"key":"app_name","value":"{{inputAppName.value}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      resourceDisplayName="retool_db"
      resourceName="a0a5c021-502f-4927-85af-e7a1a42ff2e7"
      runWhenModelUpdates={false}
      tableName="app_versions"
    />
    <SqlQueryUnified
      id="queryInsertNewApp"
      actionType="INSERT"
      changeset={
        '[{"key":"app_name","value":"{{inputAppName.value}}"},{"key":"current_version","value":"{{jsGenerateVersionNumber.data}}"}]'
      }
      editorMode="gui"
      isMultiplayerEdited={false}
      resourceDisplayName="retool_db"
      resourceName="a0a5c021-502f-4927-85af-e7a1a42ff2e7"
      runWhenModelUpdates={false}
      tableName="app_versions"
    />
    <SqlQueryUnified
      id="queryCheckForApp"
      filterBy={
        '[{"key":"appName","value":"{{ inputAppName.value}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/queryCheckForApp.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="a0a5c021-502f-4927-85af-e7a1a42ff2e7"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      showUpdateSetValueDynamicallyToggle={false}
      tableName="appVersions"
      updateSetValueDynamically={true}
      warningCodes={[]}
    />
  </Folder>
  <Folder id="code">
    <JavascriptQuery
      id="jsButtonInfoClick"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/jsButtonInfoClick.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="jsUpdateApp"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/jsUpdateApp.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="jsInsertApp"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/jsInsertApp.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="jsBranchUpdateOrInsert"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/jsBranchUpdateOrInsert.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <Function
      id="jsIsDeveloper"
      funcBody={include("./lib/jsIsDeveloper.js", "string")}
    />
    <JavascriptQuery
      id="jsGenerateVersionNumber"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/jsGenerateVersionNumber.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
  </Folder>
  <State
    id="varVersionStampInfo"
    value={
      '{\n  "AppName": "versionStamp",\n  "Copyright": "Copyright (C) May 17, 2024 Walter March; MIT License",\n  "Developer": "admin"\n}'
    }
  />
</GlobalFunctions>
