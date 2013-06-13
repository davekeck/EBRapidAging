#import "EBRapidAging.h"
#import <sys/sysctl.h>

BOOL EBRapidAgingSetEnabled(EBRapidAgingType type, BOOL enabled)
{
        NSCParameterAssert(type == EBRapidAgingTypeProcess || type == EBRapidAgingTypeThread);
    
    int sysctlValue = 0;
    if (type == EBRapidAgingTypeProcess)
        sysctlValue = (enabled ? KERN_RAGE_PROC : KERN_UNRAGE_PROC);
    else if (type == EBRapidAgingTypeThread)
        sysctlValue = (enabled ? KERN_RAGE_THREAD : KERN_UNRAGE_THREAD);
    
    return !sysctlbyname("kern.rage_vnode", nil, nil, &sysctlValue, sizeof(sysctlValue));
}