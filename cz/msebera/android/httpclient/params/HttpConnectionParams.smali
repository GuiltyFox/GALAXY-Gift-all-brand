.class public final Lcz/msebera/android/httpclient/params/HttpConnectionParams;
.super Ljava/lang/Object;
.source "HttpConnectionParams.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Lcz/msebera/android/httpclient/params/HttpParams;)I
    .registers 3

    .prologue
    .line 55
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v0, "http.socket.timeout"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Lcz/msebera/android/httpclient/params/HttpParams;I)V
    .registers 3

    .prologue
    .line 66
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v0, "http.socket.timeout"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->b(Ljava/lang/String;I)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 69
    return-void
.end method

.method public static a(Lcz/msebera/android/httpclient/params/HttpParams;Z)V
    .registers 3

    .prologue
    .line 117
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v0, "http.tcp.nodelay"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->b(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 119
    return-void
.end method

.method public static b(Lcz/msebera/android/httpclient/params/HttpParams;I)V
    .registers 3

    .prologue
    .line 141
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    const-string/jumbo v0, "http.socket.buffer-size"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->b(Ljava/lang/String;I)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 143
    return-void
.end method

.method public static b(Lcz/msebera/android/httpclient/params/HttpParams;)Z
    .registers 3

    .prologue
    .line 81
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v0, "http.socket.reuseaddr"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c(Lcz/msebera/android/httpclient/params/HttpParams;I)V
    .registers 3

    .prologue
    .line 188
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    const-string/jumbo v0, "http.connection.timeout"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->b(Ljava/lang/String;I)Lcz/msebera/android/httpclient/params/HttpParams;

    .line 190
    return-void
.end method

.method public static c(Lcz/msebera/android/httpclient/params/HttpParams;)Z
    .registers 3

    .prologue
    .line 106
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v0, "http.tcp.nodelay"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d(Lcz/msebera/android/httpclient/params/HttpParams;)I
    .registers 3

    .prologue
    .line 153
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    const-string/jumbo v0, "http.socket.linger"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static e(Lcz/msebera/android/httpclient/params/HttpParams;)I
    .registers 3

    .prologue
    .line 176
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v0, "http.connection.timeout"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static f(Lcz/msebera/android/httpclient/params/HttpParams;)Z
    .registers 3

    .prologue
    .line 200
    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    const-string/jumbo v0, "http.connection.stalecheck"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
