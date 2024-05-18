<ModalFrame
  id="modalInfo"
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
  <Button
    id="buttonUpdateVersion"
    ariaLabel="Update Version Button"
    hidden="{{!jsIsDeveloper.value}}"
    iconBefore="line/nature-ecology-world-home"
    tooltipText="Update Version"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="jsBranchUpdateOrInsert"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Event
    event="show"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="queryCheckForApp"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
