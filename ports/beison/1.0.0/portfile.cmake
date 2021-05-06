vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO northwindtraders/beison
  REF a16bd37a342a20357ecfc67e8ce550b7a414bcb0
  SHA512 2bbefe9d59b9e0f2e7192570eb744ddbb500277be8d51df9be6e9a4449710d3ce6030a6d5a6418871c8050418311be5002d95585432d3b624ff59344740aa6b8
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)
