<App>
  <Include src="./functions.rsx" />
  <Include src="./src/modalFrameInfo.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Include src="./src/containerApp.rsx" />
    <Button
      id="buttonInfo"
      iconAfter="bold/interface-alert-information-circle-alternate"
      marginType="normal"
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
  </Frame>
</App>
