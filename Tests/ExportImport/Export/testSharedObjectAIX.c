#if defined(_WIN32) || defined(__CYGWIN__)
#  define EXPORT __declspec(dllexport)
#else
#  define EXPORT
#endif

EXPORT int testSharedObjectAIX(void)
{
  return 0;
}
