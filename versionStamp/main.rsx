<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp
    id="inputAppName"
    description="Name of the application"
    value="{{varVersionStampInfo.value.AppName}}"
  />
  <GlobalWidgetProp
    id="inputCopyright"
    description="Copyright information for the application"
    value="{{varVersionStampInfo.value.Copyright}}"
  />
  <GlobalWidgetProp
    id="inputDeveloper"
    description="Retool group or user email that will see the Update Version button"
    value="{{ varVersionStampInfo.value.Developer}}"
  />
  <Include src="./src/modalInfo.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      inputAppName="{{varVersionStampInfo.value.AppName}}"
      inputCopyright="{{varVersionStampInfo.value.Copyright}}"
      inputDeveloper="{{ varVersionStampInfo.value.Developer}}"
      inputDeveloperGroup="admin"
      inputMajorVersion="0"
      inputMinorVersion="202402041547"
      isGlobalWidgetContainer={true}
      margin="0"
    >
      <Text
        id="modalInfoTitle"
        marginType="normal"
        value="### About {{inputAppName.value}}"
        verticalAlign="center"
      />
      <Text
        id="textModalInfoVersion"
        marginType="normal"
        value="{{inputAppName.value}} v{{queryCheckForApp.data.current_version}}"
        verticalAlign="center"
      />
      <Container
        id="containerMain"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0"
        padding="0"
        showBody={true}
      >
        <Header>
          <Text
            id="containerMainTitle"
            value="#### Container title"
            verticalAlign="center"
          />
        </Header>
        <View id="f079e" viewKey="View 1">
          <Button
            id="buttonInfo"
            ariaLabel="About Button"
            iconAfter="bold/interface-alert-information-circle-alternate"
            marginType="normal"
            styleVariant="outline"
            tooltipText="About {{inputAppName.value}}"
          >
            <Event
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="jsButtonInfoClick"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
        </View>
      </Container>
      <Button
        id="modalInfoCloseButton"
        horizontalAlign="right"
        iconBefore="bold/interface-delete-1"
        marginType="normal"
        style={{ ordered: [{ border: "transparent" }] }}
        styleVariant="outline"
      >
        <Event
          event="click"
          method="setHidden"
          params={{ ordered: [{ hidden: true }] }}
          pluginId="modalInfo"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Text
        id="textModalInfoCopyright"
        marginType="normal"
        value="{{inputCopyright.value}}"
        verticalAlign="center"
      />
    </ModuleContainerWidget>
  </Frame>
</App>
