module core.sys.wasi.missing;

mixin template Missing()
{
    pragma(msg, "WASI "~__FUNCTION__~" not implemented");
}

mixin template WASIError(string file=__FILE__, size_t line=__LINE__)
{
    mixin Missing;
    enum wasi_error=file~":"~line.stringof~"\n"~__FUNCTION__~" is not implemented for wasi ";
}


