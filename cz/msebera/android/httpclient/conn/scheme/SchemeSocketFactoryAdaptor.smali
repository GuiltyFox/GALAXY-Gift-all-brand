.class Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;
.super Ljava/lang/Object;
.source "SchemeSocketFactoryAdaptor.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;)V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->a:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    .line 50
    return-void
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .registers 12

    .prologue
    .line 57
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 59
    const/4 v4, 0x0

    .line 60
    const/4 v5, 0x0

    .line 61
    if-eqz p3, :cond_14

    .line 62
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 63
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    .line 65
    :cond_14
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->a:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    move-object v1, p1

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->a:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 82
    if-nez p1, :cond_4

    .line 83
    const/4 v0, 0x0

    .line 91
    :goto_3
    return v0

    .line 85
    :cond_4
    if-ne p0, p1, :cond_8

    .line 86
    const/4 v0, 0x1

    goto :goto_3

    .line 88
    :cond_8
    instance-of v0, p1, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;

    if-eqz v0, :cond_17

    .line 89
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->a:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    check-cast p1, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;

    iget-object v1, p1, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->a:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 91
    :cond_17
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->a:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->a:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->a:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method
