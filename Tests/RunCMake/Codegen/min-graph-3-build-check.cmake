set(filename "${RunCMake_TEST_BINARY_DIR}/error_lib.c")
if (NOT EXISTS "${filename}")
  set(RunCMake_TEST_FAILED "expected file NOT created:\n ${filename}")
  return()
endif()
