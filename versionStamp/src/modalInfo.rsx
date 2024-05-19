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
  <SplitButton
    id="splitButtonCopy"
    _colorByIndex={["", ""]}
    _fallbackTextByIndex={["", ""]}
    _imageByIndex={["", ""]}
    _values={["", ""]}
    itemMode="static"
    overlayMaxHeight={375}
    showSelectionIndicator={true}
  >
    <Option
      id="d9aef"
      icon="line/interface-content-eye-glasses"
      tooltip="Copy About JSON"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="jsAboutJsonToClipboard"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Option>
    <Option
      id="5c973"
      icon="line/programming-web-number-field"
      tooltip="Copy Version Number"
    >
      <Event
        event="click"
        method="copyToClipboard"
        params={{
          ordered: [{ value: "{{queryCheckForApp.data.current_version[0]}}" }],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Option>
  </SplitButton>
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
