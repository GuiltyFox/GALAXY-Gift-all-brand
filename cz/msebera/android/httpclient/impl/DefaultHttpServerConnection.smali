.class public Lcz/msebera/android/httpclient/impl/DefaultHttpServerConnection;
.super Lcz/msebera/android/httpclient/impl/SocketHttpServerConnection;
.source "DefaultHttpServerConnection.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/SocketHttpServerConnection;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/Socket;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 8
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "params"    # Lcz/msebera/android/httpclient/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 55
    const-string/jumbo v1, "Socket"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v1, "HTTP parameters"

    invoke-static {p2, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultHttpServerConnection;->assertNotOpen()V

    .line 58
    const-string/jumbo v1, "http.tcp.nodelay"

    invoke-interface {p2, v1, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 59
    const-string/jumbo v1, "http.socket.timeout"

    invoke-interface {p2, v1, v3}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 60
    const-string/jumbo v1, "http.socket.keepalive"

    invoke-interface {p2, v1, v3}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 61
    const-string/jumbo v1, "http.socket.linger"

    const/4 v4, -0x1

    invoke-interface {p2, v1, v4}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    .line 62
    .local v0, "linger":I
    if-ltz v0, :cond_3f

    .line 63
    if-lez v0, :cond_4a

    move v1, v2

    :goto_3c
    invoke-virtual {p1, v1, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 65
    :cond_3f
    if-ltz v0, :cond_46

    .line 66
    if-lez v0, :cond_4c

    :goto_43
    invoke-virtual {p1, v2, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 68
    :cond_46
    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/SocketHttpServerConnection;->bind(Ljava/net/Socket;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 69
    return-void

    :cond_4a
    move v1, v3

    .line 63
    goto :goto_3c

    :cond_4c
    move v2, v3

    .line 66
    goto :goto_43
.end method
