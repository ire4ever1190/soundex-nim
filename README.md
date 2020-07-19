Implmentation of soundex in nim

### Example
```nim
import soundex
assert soundex("Pfister") == "P236" // Would pass
assert soundex("Robert") == soundex("Rupert") // Would also pass
```

