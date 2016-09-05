.class public Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;
.super Ljava/lang/Object;
.source "ConnRouteParams.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Lcz/msebera/android/httpclient/HttpHost;

.field public static final b:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 54
    new-instance v0, Lcz/msebera/android/httpclient/HttpHost;

    const-string/jumbo v1, "127.0.0.255"

    const/4 v2, 0x0

    const-string/jumbo v3, "no-host"

    invoke-direct {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->a:Lcz/msebera/android/httpclient/HttpHost;

    .line 61
    new-instance v0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    sget-object v1, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->a:Lcz/msebera/android/httpclient/HttpHost;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;)V

    sput-object v0, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->b:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    return-void
.end method

.method public static a(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/HttpHost;
    .registers 3

    .prologue
    .line 80
    const-string/jumbo v0, "Parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v0, "http.route.default-proxy"

    .line 82
    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpHost;

    .line 83
    if-eqz v0, :cond_1a

    sget-object v1, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->a:Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 85
    const/4 v0, 0x0

    .line 87
    :cond_1a
    return-object v0
.end method

.method public static b(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .registers 3

    .prologue
    .line 118
    const-string/jumbo v0, "Parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v0, "http.route.forced-route"

    .line 120
    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 121
    if-eqz v0, :cond_1a

    sget-object v1, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->b:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 123
    const/4 v0, 0x0

    .line 125
    :cond_1a
    return-object v0
.end method

.method public static c(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 157
    const-string/jumbo v0, "Parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    const-string/jumbo v0, "http.route.local-address"

    .line 159
    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 161
    return-object v0
.end method
