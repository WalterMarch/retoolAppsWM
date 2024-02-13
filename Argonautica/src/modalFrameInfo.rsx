<ModalFrame
  id="modalFrameInfo"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="modalTitleInfo"
      value="### About Argonautica"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButtonInfo"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrameInfo"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text
      id="textVersion"
      value="Argonautica v0.202402041547"
      verticalAlign="center"
    />
    <Text
      id="textCopyright"
      value="Copyright (C) Feb 4, 2024 Walter March; MIT License"
      verticalAlign="center"
    />
  </Body>
</ModalFrame>
