.class public Lcz/msebera/android/httpclient/client/params/HttpClientParams;
.super Ljava/lang/Object;
.source "HttpClientParams.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Lcz/msebera/android/httpclient/params/HttpParams;)Z
    .registers 3

    .prologue
    .line 50
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v0, "http.protocol.handle-redirects"

    const/4 v1, 0x1

    .line 52
    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Lcz/msebera/android/httpclient/params/HttpParams;)Z
    .registers 3

    .prologue
    .line 62
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    const-string/jumbo v0, "http.protocol.handle-authentication"

    const/4 v1, 0x1

    .line 64
    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c(Lcz/msebera/android/httpclient/params/HttpParams;)J
    .registers 3

    .prologue
    .line 108
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    const-string/jumbo v0, "http.conn-manager.timeout"

    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 110
    if-eqz v0, :cond_16

    .line 111
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 113
    :goto_15
    return-wide v0

    :cond_16
    invoke-static {p0}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->e(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_15
.end method
