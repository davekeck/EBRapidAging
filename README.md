# EBRapidAging

EBRapidAgingSetEnabled() is a simple function to enable (or disable) "rapid aging" of files, allowing for quicker filesystem access by preventing last-access timestamps from being updated when opening files. EBRapidAgingSetEnabled() can provide significant performance increases in situations where many files are opened and closed in succession; in my own benchmarks, my code ran 25-35% faster with "rapid aging" enabled.

## Requirements

- Mac OS 10.8 or iOS 6. (Earlier platforms have not been tested.)

## Integration

Integrate EBRapidAging by simply adding `EBRapidAging.h` and `EBRapidAging.m` to your Xcode project.