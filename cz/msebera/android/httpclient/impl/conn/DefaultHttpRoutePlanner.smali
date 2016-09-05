.class public Lcz/msebera/android/httpclient/impl/conn/DefaultHttpRoutePlanner;
.super Ljava/lang/Object;
.source "DefaultHttpRoutePlanner.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final a:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .registers 3

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string/jumbo v0, "Scheme registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpRoutePlanner;->a:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 79
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .registers 8

    .prologue
    .line 86
    const-string/jumbo v0, "HTTP request"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->b(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_11

    .line 120
    :goto_10
    return-object v0

    .line 98
    :cond_11
    const-string/jumbo v0, "Target host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Asserts;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->c(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/InetAddress;

    move-result-object v1

    .line 103
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->a(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    .line 107
    :try_start_27
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpRoutePlanner;->a:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->a(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;
    :try_end_30
    .catch Ljava/lang/IllegalStateException; {:try_start_27 .. :try_end_30} :catch_3d

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->d()Z

    move-result v3

    .line 115
    if-nez v2, :cond_48

    .line 116
    new-instance v0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-direct {v0, p1, v1, v3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Z)V

    goto :goto_10

    .line 108
    :catch_3d
    move-exception v0

    .line 109
    new-instance v1, Lcz/msebera/android/httpclient/HttpException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_48
    new-instance v0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-direct {v0, p1, v1, v2, v3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/HttpHost;Z)V

    goto :goto_10
.end method
