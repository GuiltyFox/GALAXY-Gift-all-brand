.class public Lcz/msebera/android/httpclient/client/protocol/RequestProxyAuthentication;
.super Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;
.source "RequestProxyAuthentication.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 7

    .prologue
    .line 61
    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v0, "HTTP context"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v0, "Proxy-Authorization"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 90
    :cond_15
    :goto_15
    return-void

    .line 68
    :cond_16
    const-string/jumbo v0, "http.connection"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/HttpRoutedConnection;

    .line 70
    if-nez v0, :cond_2a

    .line 71
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestProxyAuthentication;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "HTTP connection not set in the context"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    goto :goto_15

    .line 74
    :cond_2a
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/HttpRoutedConnection;->h()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->e()Z

    move-result v0

    if-nez v0, :cond_15

    .line 80
    const-string/jumbo v0, "http.auth.proxy-scope"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/auth/AuthState;

    .line 82
    if-nez v0, :cond_48

    .line 83
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestProxyAuthentication;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string/jumbo v1, "Proxy auth state not set in the context"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    goto :goto_15

    .line 86
    :cond_48
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestProxyAuthentication;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 87
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/protocol/RequestProxyAuthentication;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Proxy auth state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/AuthState;->b()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 89
    :cond_6d
    invoke-virtual {p0, v0, p1, p2}, Lcz/msebera/android/httpclient/client/protocol/RequestProxyAuthentication;->a(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    goto :goto_15
.end method
