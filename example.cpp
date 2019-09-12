#ifdef __cplusplus
#ifdef _WIN32
#include "stdafx.h"
#define DllExport extern "C" __declspec(dllexport)
#else // WIN32
#define DllExport extern "C"
#endif // LINUX
#else // __cplusplus
#define DllExport
#endif // __cplusplus

#include <stdint.h>

DllExport uint32_t GetAPIMajorVersion()
{
    return 99;
}
