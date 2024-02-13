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
  </Frame>
</App>
