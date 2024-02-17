module core.sys.wasi.sys.socket;

//version (WebAssembly) {
//  version = WASI;
//}

version (WASI):

alias sa_family_t = ushort;
alias socklen_t = int;
alias sockaddr = int;
