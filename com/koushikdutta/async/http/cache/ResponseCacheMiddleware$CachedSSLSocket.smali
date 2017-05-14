.class Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSSLSocket;
.super Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;
.source "ResponseCacheMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSSLSocket;


# instance fields
.field final synthetic i:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V
    .registers 6

    .prologue
    .line 706
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSSLSocket;->i:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    .line 707
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V

    .line 708
    return-void
.end method


# virtual methods
.method public b()Ljavax/net/ssl/SSLEngine;
    .registers 2

    .prologue
    .line 712
    const/4 v0, 0x0

    return-object v0
.end method
