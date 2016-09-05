.class public Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;
.super Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;
.source "SocketHttpClientConnection.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpInetConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private volatile a:Z

.field private volatile b:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpClientConnection;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    .line 67
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V
    .registers 4

    .prologue
    .line 255
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_2b

    .line 256
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 257
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :goto_14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 260
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    :goto_25
    return-void

    .line 258
    :cond_26
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_14

    .line 262
    :cond_2b
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_25
.end method


# virtual methods
.method protected a(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/SessionInputBuffer;
    .registers 5

    .prologue
    .line 97
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;

    invoke-direct {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/io/SocketInputBuffer;-><init>(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)V

    return-object v0
.end method

.method protected a(Ljava/net/Socket;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 5

    .prologue
    .line 143
    const-string/jumbo v0, "Socket"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    .line 147
    const-string/jumbo v0, "http.socket.buffer-size"

    const/4 v1, -0x1

    invoke-interface {p2, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v0

    .line 149
    invoke-virtual {p0, p1, v0, p2}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->a(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    move-result-object v1

    .line 150
    invoke-virtual {p0, p1, v0, p2}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->b(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    move-result-object v0

    .line 148
    invoke-virtual {p0, v1, v0, p2}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->a(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->a:Z

    .line 154
    return-void
.end method

.method protected b(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/SessionOutputBuffer;
    .registers 5

    .prologue
    .line 119
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/SocketOutputBuffer;

    invoke-direct {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/io/SocketOutputBuffer;-><init>(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)V

    return-object v0
.end method

.method public b(I)V
    .registers 3

    .prologue
    .line 197
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->j()V

    .line 198
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    if-eqz v0, :cond_c

    .line 200
    :try_start_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_c
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_c} :catch_d

    .line 207
    :cond_c
    :goto_c
    return-void

    .line 201
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->a:Z

    return v0
.end method

.method public close()V
    .registers 3

    .prologue
    .line 230
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->a:Z

    if-nez v0, :cond_5

    .line 252
    :goto_4
    return-void

    .line 233
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->a:Z

    .line 234
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    .line 236
    :try_start_a
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->o()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_17

    .line 239
    :try_start_d
    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_1c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_10} :catch_20
    .catchall {:try_start_d .. :try_end_10} :catchall_17

    .line 243
    :goto_10
    :try_start_10
    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_1e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_10 .. :try_end_13} :catch_20
    .catchall {:try_start_10 .. :try_end_13} :catchall_17

    .line 250
    :goto_13
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    goto :goto_4

    :catchall_17
    move-exception v0

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    throw v0

    .line 240
    :catch_1c
    move-exception v0

    goto :goto_10

    .line 244
    :catch_1e
    move-exception v0

    goto :goto_13

    .line 246
    :catch_20
    move-exception v0

    goto :goto_13
.end method

.method public e()V
    .registers 2

    .prologue
    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->a:Z

    .line 223
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    .line 224
    if-eqz v0, :cond_a

    .line 225
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 227
    :cond_a
    return-void
.end method

.method public f()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 182
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 184
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public g()I
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 190
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    .line 192
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method protected i()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    return-object v0
.end method

.method protected j()V
    .registers 3

    .prologue
    .line 75
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->a:Z

    const-string/jumbo v1, "Connection is not open"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 76
    return-void
.end method

.method protected q()V
    .registers 3

    .prologue
    .line 70
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->a:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_5
    const-string/jumbo v1, "Connection is already open"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->a(ZLjava/lang/String;)V

    .line 71
    return-void

    .line 70
    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 268
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    if-eqz v0, :cond_2a

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 271
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    .line 272
    if-eqz v1, :cond_25

    if-eqz v2, :cond_25

    .line 273
    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->a(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    .line 274
    const-string/jumbo v2, "<->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->a(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    .line 277
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    :goto_29
    return-object v0

    :cond_2a
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method
