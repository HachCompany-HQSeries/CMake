file(GLOB wix_log_file RELATIVE "${RunCMake_TEST_BINARY_DIR}" "${RunCMake_TEST_BINARY_DIR}/_CPack_Packages/*/WIX/wix.log")
if(wix_log_file)
  file(READ "${RunCMake_TEST_BINARY_DIR}/${wix_log_file}" wix_log)
  string(REPLACE "\n" "\n wix-log> " wix_log " wix-log> ${wix_log}")
  set(RunCMake_TEST_FAILURE_MESSAGE "${wix_log_file}:\n${wix_log}")
endif()
