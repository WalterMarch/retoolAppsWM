const appName = inputAppName.value;

const appVersion = queryCheckForApp.data.current_version[0];

const appCopyright = inputCopyright.value;

const aboutObject = {
  "appName": appName,
  "appVersion": appVersion,
  "appCopyright": appCopyright
}

utils.copyToClipboard(JSON.stringify(aboutObject))