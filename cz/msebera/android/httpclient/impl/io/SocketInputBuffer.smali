.class public Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;
.super Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;
.source "SocketInputBuffer.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/EofSensor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/net/Socket;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6

    .prologue
    const/16 v0, 0x400

    .line 68
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;-><init>()V

    .line 69
    const-string/jumbo v1, "Socket"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->a:Ljava/net/Socket;

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->b:Z

    .line 73
    if-gez p2, :cond_22

    .line 74
    invoke-virtual {p1}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v1

    .line 76
    :goto_16
    if-ge v1, v0, :cond_20

    .line 79
    :goto_18
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3}, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->a(Ljava/io/InputStream;ILcz/msebera/android/httpclient/params/HttpParams;)V

    .line 80
    return-void

    :cond_20
    move v0, v1

    goto :goto_18

    :cond_22
    move v1, p2

    goto :goto_16
.end method


# virtual methods
.method public a(I)Z
    .registers 5

    .prologue
    .line 90
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->g()Z

    move-result v0

    .line 91
    if-nez v0, :cond_1d

    .line 92
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    .line 94
    :try_start_c
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 95
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->f()I

    .line 96
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->g()Z
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1e

    move-result v0

    .line 98
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->a:Ljava/net/Socket;

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 101
    :cond_1d
    return v0

    .line 98
    :catchall_1e
    move-exception v0

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->a:Ljava/net/Socket;

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->b:Z

    return v0
.end method

.method protected f()I
    .registers 3

    .prologue
    .line 84
    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionInputBuffer;->f()I

    move-result v1

    .line 85
    const/4 v0, -0x1

    if-ne v1, v0, :cond_b

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;->b:Z

    .line 86
    return v1

    .line 85
    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method
