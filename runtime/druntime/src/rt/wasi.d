module rt.wasi;

extern(C) void _d_throw_exception(Throwable o)
{
    import core.sys.wasi.missing;
    mixin WASIError;
    assert(0, wasi_error);
}

extern(C) void* _d_eh_swapContextDwarf(void* newContext) nothrow @nogc
{
    import core.sys.wasi.missing;
    mixin WASIError;
    assert(0, wasi_error);
}

