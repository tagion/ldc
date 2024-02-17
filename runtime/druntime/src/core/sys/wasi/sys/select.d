module core.sys.wasi.sys.select;

version (WASI):
extern(C):
nothrow:
@nogc:

enum FD_SETSIZE = 1024;
alias __fd_mask=long;

enum uint __NFDBITS = 8 * __fd_mask.sizeof;

struct fd_set
{
    __fd_mask[FD_SETSIZE / __NFDBITS] fds_bits;
}

