module core.sys.wasi.netinet.in_;

version (WASI):
extern(C):
@nogc:
nothrow:

enum
{
    IPPROTO_IP   = 0,
    IPPROTO_ICMP = 1,
    IPPROTO_IGMP = 2,
    IPPROTO_GGP  = 3,
    IPPROTO_TCP  = 6,
    IPPROTO_PUP  = 12,
    IPPROTO_UDP  = 17,
    IPPROTO_IDP  = 22,
    IPPROTO_ND   = 77,
    IPPROTO_MAX  = 256
}

enum : uint
{
    IPPROTO_RAW = 255,
    IPPROTO_IPV6        = 41,
}

struct sockaddr_in
{
/*
    ubyte       sin_len;
    sa_family_t sin_family;
    in_port_t   sin_port;
    in_addr     sin_addr;
    ubyte[8]    sin_zero;
*/
}

struct sockaddr_in6
{
/*
    sa_family_t sin6_family;
    in_port_t   sin6_port;
    uint32_t    sin6_flowinfo;
    in6_addr    sin6_addr;
    uint32_t    sin6_scope_id;
*/
}




enum : uint
{
    //IPPROTO_IPV6        = 41,

    //INET6_ADDRSTRLEN    = 46,

    IPV6_JOIN_GROUP     = 20,
    IPV6_LEAVE_GROUP    = 21,
    IPV6_MULTICAST_HOPS = 18,
    IPV6_MULTICAST_IF   = 17,
    IPV6_MULTICAST_LOOP = 19,
    IPV6_UNICAST_HOPS   = 16,
    IPV6_V6ONLY         = 26
}
