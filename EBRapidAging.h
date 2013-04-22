/* So-called 'rapid aging' is the kernel flag that allows a process or thread to open files without updating the file's
   last-access time, significantly increasing performance when opening a large numbers of files.
   
   Rapid-aging can be enabled/disabled at both the thread- and process- level. */

#import <Foundation/Foundation.h>

typedef enum : NSUInteger
{
    EBRapidAgingTypeProcess,
    EBRapidAgingTypeThread
} EBRapidAgingType;

BOOL EBRapidAgingSetEnabled(EBRapidAgingType type, BOOL enabled);