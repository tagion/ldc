module core.sys.wasi.missing;

mixin template Missing()
{
    pragma(msg, "WASI "~__FUNCTION__~" not implemented");
}

mixin template WASIError(string text=null)
{
    mixin Missing;
    enum wasi_error=__FUNCTION__~" is not implemented for wasi "~text;
}


