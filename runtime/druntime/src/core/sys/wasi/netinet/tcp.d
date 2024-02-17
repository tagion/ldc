module core.sys.wasi.netinet.tcp;

version(WASI):
extern (C):
nothrow:
@nogc:

enum TCP_NODELAY = 1;

