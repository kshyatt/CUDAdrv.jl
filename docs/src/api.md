# Driver API functionality

This section lists the package's public functionality that directly corresponds to
functionality of the CUDA driver API. The documentation is grouped according to the modules
of the driver API.


## Installation properties

```@docs
CUDAdrv.vendor
```


## Initialization

```@docs
CUDAdrv.init
```


## Error Handling

```@docs
CUDAdrv.CuError
CUDAdrv.name(::CuError)
CUDAdrv.description(::CuError)
```


## Version Management

```@docs
CUDAdrv.version()
```


## Device Management

```@docs
CUDAdrv.CuDevice
CUDAdrv.devices
CUDAdrv.name(::CuDevice)
CUDAdrv.totalmem(::CuDevice)
CUDAdrv.attribute
```

Certain common attributes are exposed by additional convenience functions:

```@docs
CUDAdrv.capability(::CuDevice)
CUDAdrv.warpsize(::CuDevice)
```


## Context Management

```@docs
CUDAdrv.CuContext
CUDAdrv.destroy!(::CuContext)
CUDAdrv.CuCurrentContext
CUDAdrv.isnull(::CuContext)
CUDAdrv.activate(::CuContext)
CUDAdrv.synchronize(::CuContext)
CUDAdrv.device(::CuContext)
```

### Primary Context Management

```@docs
CUDAdrv.CuPrimaryContext
CUDAdrv.CuContext(::CuPrimaryContext)
CUDAdrv.isactive(::CuPrimaryContext)
CUDAdrv.flags(::CuPrimaryContext)
CUDAdrv.setflags!(::CuPrimaryContext, ::CUDAdrv.CUctx_flags)
```


## Module Management

```@docs
CUDAdrv.CuModule
```

### Function Management

```@docs
CUDAdrv.CuFunction
```

### Global Variable Management

```@docs
CUDAdrv.CuGlobal
CUDAdrv.eltype{T}(::CuGlobal{T})
CUDAdrv.get{T}(::CuGlobal{T})
CUDAdrv.set{T}(::CuGlobal{T}, ::T)
```

### Linker

```@docs
CUDAdrv.CuLink
CUDAdrv.addData
CUDAdrv.addFile
CUDAdrv.CuLinkImage
CUDAdrv.complete
CUDAdrv.CuModule(::CUDAdrv.CuLinkImage, args...)
```

## Memory Management

### Pointer-based (low-level)

```@docs
CUDAdrv.Mem.alloc(::Integer)
CUDAdrv.Mem.free(::DevicePtr)
CUDAdrv.Mem.set(::DevicePtr, ::Cuint, ::Integer)
CUDAdrv.Mem.upload(::DevicePtr, ::Ref, ::Integer)
CUDAdrv.Mem.download(::Ref, ::DevicePtr, ::Integer)
CUDAdrv.Mem.transfer(::DevicePtr, ::DevicePtr, ::Integer)
```

### Object-based (high-level)

```@docs
CUDAdrv.Mem.alloc{T}(::Type{T}, ::Integer)
CUDAdrv.Mem.upload{T}(::DevicePtr{T}, ::T)
CUDAdrv.Mem.download{T}(::DevicePtr{T})
```

## Stream Management

```@docs
CUDAdrv.CuStream
CUDAdrv.CuDefaultStream
CUDAdrv.synchronize(::CuStream)
```

## Event Management

```@docs
CUDAdrv.CuEvent
CUDAdrv.record
CUDAdrv.synchronize(::CuEvent)
CUDAdrv.elapsed
CUDAdrv.@elapsed
```

## Execution Control

```@docs
CUDAdrv.cudacall
CUDAdrv.launch
```

## Profiler Control

```@docs
CUDAdrv.@profile
CUDAdrv.Profile.start
CUDAdrv.Profile.stop
```