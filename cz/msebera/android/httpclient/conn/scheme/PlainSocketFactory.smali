.class public Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;
.super Ljava/lang/Object;
.source "PlainSocketFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;
.implements Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->a:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    .line 77
    return-void
.end method

.method public static a()Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;
    .registers 1

    .prologue
    .line 62
    new-instance v0, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    if-nez p4, :cond_5

    if-lez p5, :cond_c

    .line 148
    :cond_5
    new-instance v0, Ljava/net/InetSocketAddress;

    if-lez p5, :cond_20

    :goto_9
    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 151
    :cond_c
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->a:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    if-eqz v1, :cond_22

    .line 152
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->a:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    invoke-interface {v1, p2}, Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 156
    :goto_16
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 157
    invoke-virtual {p0, p1, v2, v0, p6}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    .line 148
    :cond_20
    const/4 p5, 0x0

    goto :goto_9

    .line 154
    :cond_22
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_16
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .registers 8

    .prologue
    .line 102
    const-string/jumbo v0, "Remote address"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    if-nez p1, :cond_12

    .line 106
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    .line 108
    :cond_12
    if-eqz p3, :cond_1e

    .line 109
    invoke-static {p4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->b(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 110
    invoke-virtual {p1, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 112
    :cond_1e
    invoke-static {p4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->e(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v0

    .line 113
    invoke-static {p4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v1

    .line 116
    :try_start_26
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 117
    invoke-virtual {p1, p2, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_2c
    .catch Ljava/net/SocketTimeoutException; {:try_start_26 .. :try_end_2c} :catch_2d

    .line 121
    return-object p1

    .line 118
    :catch_2d
    move-exception v0

    .line 119
    new-instance v0, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " timed out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSocket()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 91
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public createSocket(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .registers 3

    .prologue
    .line 87
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .registers 3

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method
