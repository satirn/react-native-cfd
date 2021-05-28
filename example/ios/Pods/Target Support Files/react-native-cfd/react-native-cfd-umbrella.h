#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "Cfd-Bridging-Header.h"
#import "cfd_bridge.h"

FOUNDATION_EXPORT double react_native_cfdVersionNumber;
FOUNDATION_EXPORT const unsigned char react_native_cfdVersionString[];

