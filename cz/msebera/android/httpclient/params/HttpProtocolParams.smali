.class public final Lcz/msebera/android/httpclient/params/HttpProtocolParams;
.super Ljava/lang/Object;
.source "HttpProtocolParams.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v0, "http.protocol.element-charset"

    .line 62
    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    if-nez v0, :cond_17

    .line 64
    sget-object v0, Lcz/msebera/android/httpclient/protocol/HTTP;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_17
    return-object v0
.end method

.method public static a(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/ProtocolVersion;)V
    .registers 3

    .prologue
    .line 132
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v0, "http.protocol.version"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 134
    return-void
.end method

.method public static a(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 104
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v0, "http.protocol.content-charset"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 106
    return-void
.end method

.method public static b(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/ProtocolVersion;
    .registers 2

    .prologue
    .line 116
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    const-string/jumbo v0, "http.protocol.version"

    .line 118
    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    if-nez v0, :cond_12

    .line 120
    sget-object v0, Lcz/msebera/android/httpclient/HttpVersion;->c:Lcz/msebera/android/httpclient/HttpVersion;

    .line 122
    :goto_11
    return-object v0

    :cond_12
    check-cast v0, Lcz/msebera/android/httpclient/ProtocolVersion;

    goto :goto_11
.end method

.method public static b(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 155
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v0, "http.useragent"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 157
    return-void
.end method
