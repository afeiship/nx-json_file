# nx-json_file
> Json extension for next.

## install:

```rb
require "bundler/setup"
require "nx"
require "nx/json_file"
```

## usage:
```rb
jFile = Nx::JsonFile.new "./package-lock.json"
jFile.update("version", "0.2.4-alpha")
jFile.save
```