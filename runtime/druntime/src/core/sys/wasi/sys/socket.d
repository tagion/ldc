module core.sys.wasi.sys.socket;

//version (WebAssembly) {
//  version = WASI;
//}

version (WASI):
extern(C):
@nogc:
nothrow:


alias sa_family_t = ushort;
alias socklen_t = int;
alias sockaddr = int;

enum
{
    AF_APPLETALK    = 16,
    AF_INET         = 2,
    AF_IPX          = 23,
    AF_UNIX         = 1,
    AF_UNSPEC       = 0,
    AF_INET6        = 10
}

enum
{
    SOCK_DGRAM      = 2,
    SOCK_SEQPACKET  = 5,
    SOCK_STREAM     = 1,
    SOCK_RAW        = 3,
    SOCK_RDM        = 4,
}

enum
{
    SHUT_RD,
    SHUT_WR,
    SHUT_RDWR
}

enum : uint
{
    MSG_CTRUNC      = 0x20,
    MSG_DONTROUTE   = 0x4,
    MSG_EOR         = 0x8,
    MSG_OOB         = 0x1,
    MSG_PEEK        = 0x2,
    MSG_TRUNC       = 0x10,
    MSG_WAITALL     = 0x40
}
enum : uint
{
    SO_ACCEPTCONN   = 0x0002,
    SO_BROADCAST    = 0x0020,
    SO_DEBUG        = 0x0001,
    SO_DONTROUTE    = 0x0010,
    SO_ERROR        = 0x1007,
    SO_KEEPALIVE    = 0x0008,
    SO_LINGER       = 0x0080,
    SO_NOSIGPIPE    = 0x0800, // non-standard
    SO_OOBINLINE    = 0x0100,
    SO_RCVBUF       = 0x1002,
    SO_RCVLOWAT     = 0x1004,
    SO_RCVTIMEO     = 0x1006,
    SO_REUSEADDR    = 0x0004,
    SO_REUSEPORT    = 0x0200,
    SO_SNDBUF       = 0x1001,
    SO_SNDLOWAT     = 0x1003,
    SO_SNDTIMEO     = 0x1005,
    SO_TYPE         = 0x1008
}

enum
{
    SOL_SOCKET      = 1
}

struct linger
{
    int l_onoff;
    int l_linger;
}
