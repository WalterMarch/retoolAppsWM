const appData = await queryCheckForApp.trigger();
const appInData = Boolean(formatDataAsArray(appData).length);

if (appInData) {
  await jsUpdateApp.trigger();
} else {
  await jsInsertApp.trigger();
}

queryCheckForApp.trigger()