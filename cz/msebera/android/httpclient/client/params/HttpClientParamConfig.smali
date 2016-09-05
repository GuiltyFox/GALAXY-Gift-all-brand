.class public final Lcz/msebera/android/httpclient/client/params/HttpClientParamConfig;
.super Ljava/lang/Object;
.source "HttpClientParamConfig.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-static {}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->g()Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string/jumbo v3, "http.socket.timeout"

    .line 55
    invoke-interface {p0, v3, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->d(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string/jumbo v3, "http.connection.stalecheck"

    .line 57
    invoke-interface {p0, v3, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->b(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string/jumbo v3, "http.connection.timeout"

    .line 59
    invoke-interface {p0, v3, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->c(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string/jumbo v3, "http.protocol.expect-continue"

    .line 61
    invoke-interface {p0, v3, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->a(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v3

    const-string/jumbo v0, "http.route.default-proxy"

    .line 63
    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->a(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v3

    const-string/jumbo v0, "http.route.local-address"

    .line 65
    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->a(Ljava/net/InetAddress;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v3

    const-string/jumbo v0, "http.auth.proxy-scheme-pref"

    .line 67
    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->b(Ljava/util/Collection;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v3

    const-string/jumbo v0, "http.auth.target-scheme-pref"

    .line 69
    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->a(Ljava/util/Collection;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string/jumbo v3, "http.protocol.handle-authentication"

    .line 71
    invoke-interface {p0, v3, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->f(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string/jumbo v3, "http.protocol.allow-circular-redirects"

    .line 73
    invoke-interface {p0, v3, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->e(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string/jumbo v3, "http.conn-manager.timeout"

    const-wide/16 v4, 0x0

    .line 75
    invoke-interface {p0, v3, v4, v5}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->b(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v3

    const-string/jumbo v0, "http.protocol.cookie-policy"

    .line 77
    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string/jumbo v3, "http.protocol.max-redirects"

    const/16 v4, 0x32

    .line 79
    invoke-interface {p0, v3, v4}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->a(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string/jumbo v3, "http.protocol.handle-redirects"

    .line 81
    invoke-interface {p0, v3, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->c(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v3

    const-string/jumbo v0, "http.protocol.reject-relative-redirect"

    .line 83
    invoke-interface {p0, v0, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c2

    move v0, v1

    :goto_b9
    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->d(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->a()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v0

    return-object v0

    :cond_c2
    move v0, v2

    .line 83
    goto :goto_b9
.end method
