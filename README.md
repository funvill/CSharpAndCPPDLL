# CSharp application loading a C++ DLL

This is an example program showing how to create a CSharp application that load functions from a custom C++ DLL.

## Building

```bash
make
dotnet build
cp example.so bin/Debug/netcoreapp2.1/
dotnet run
```

### Expected output

```txt
Example program
GetAPIMajorVersion: 99
```
