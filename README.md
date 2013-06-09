# EBRapidAging

EBRapidAgingSetEnabled() is a simple function to enable (or disable) "rapid aging" of files, allowing for quicker filesystem access by preventing last-access timestamps from being updated when opening files. EBRapidAgingSetEnabled() can provide significant performance increases in situations where many files are opened and closed in succession; in my own benchmarks, my code ran 25-35% faster with "rapid aging" enabled.

## Requirements

- Mac OS 10.8 or iOS 6. (Earlier platforms have not been tested.)
- Automatic reference counting (ARC) must be enabled for the source files.

## Integration

1. Integrate [EBFoundation](https://github.com/davekeck/EBFoundation) into your project.
2. Drag EBRapidAging.xcodeproj into your project's file hierarchy.
3. In your target's "Build Phases" tab:
    * Add EBRapidAging as a dependency ("Target Dependencies" section)
    * Link against EBRapidAging ("Link Binary With Libraries" section)
4. Add `#import <EchoBravo/EBRapidAging.h>` to your source files.