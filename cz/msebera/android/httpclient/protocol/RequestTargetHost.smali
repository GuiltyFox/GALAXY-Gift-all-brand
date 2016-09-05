.class public Lcz/msebera/android/httpclient/protocol/RequestTargetHost;
.super Ljava/lang/Object;
.source "RequestTargetHost.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 7

    .prologue
    .line 60
    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    invoke-static {p2}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->b(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/protocol/HttpCoreContext;

    move-result-object v0

    .line 64
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->b()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v3

    .line 65
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->a()Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string/jumbo v2, "CONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v1, Lcz/msebera/android/httpclient/HttpVersion;->b:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v3, v1}, Lcz/msebera/android/httpclient/ProtocolVersion;->c(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 93
    :cond_2b
    :goto_2b
    return-void

    .line 70
    :cond_2c
    const-string/jumbo v1, "Host"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 71
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->o()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    .line 72
    if-nez v2, :cond_6f

    .line 73
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->l()Lcz/msebera/android/httpclient/HttpConnection;

    move-result-object v1

    .line 74
    instance-of v0, v1, Lcz/msebera/android/httpclient/HttpInetConnection;

    if-eqz v0, :cond_7b

    move-object v0, v1

    .line 77
    check-cast v0, Lcz/msebera/android/httpclient/HttpInetConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpInetConnection;->f()Ljava/net/InetAddress;

    move-result-object v0

    .line 78
    check-cast v1, Lcz/msebera/android/httpclient/HttpInetConnection;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpInetConnection;->g()I

    move-result v1

    .line 79
    if-eqz v0, :cond_7b

    .line 80
    new-instance v2, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object v0, v2

    .line 83
    :goto_5c
    if-nez v0, :cond_70

    .line 84
    sget-object v0, Lcz/msebera/android/httpclient/HttpVersion;->b:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/ProtocolVersion;->c(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 87
    new-instance v0, Lcz/msebera/android/httpclient/ProtocolException;

    const-string/jumbo v1, "Target host missing"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    move-object v0, v2

    .line 91
    :cond_70
    const-string/jumbo v1, "Host"

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/HttpHost;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_7b
    move-object v0, v2

    goto :goto_5c
.end method
