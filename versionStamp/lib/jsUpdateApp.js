const appData = queryCheckForApp.data;
const appInData = Boolean(formatDataAsArray(appData).length);

if (appInData) {
  await jsGenerateVersionNumber.trigger();
  await queryUpdateVersion.trigger();
}