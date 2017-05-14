.class Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;
.super Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;
.source "ResponseCacheMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSocket;


# instance fields
.field j:Z

.field k:Z

.field l:Lcom/koushikdutta/async/callback/CompletedCallback;

.field final synthetic m:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V
    .registers 6

    .prologue
    .line 725
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->m:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    .line 726
    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;-><init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$EntryCacheResponse;J)V

    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->f:Z

    .line 728
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 732
    return-void
.end method

.method public a(Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 2

    .prologue
    .line 747
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->m()V

    .line 748
    return-void
.end method

.method public a(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 2

    .prologue
    .line 776
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->l:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 777
    return-void
.end method

.method public a(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .registers 2

    .prologue
    .line 757
    return-void
.end method

.method protected b(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 736
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->b(Ljava/lang/Exception;)V

    .line 737
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->j:Z

    if-eqz v0, :cond_8

    .line 742
    :cond_7
    :goto_7
    return-void

    .line 739
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->j:Z

    .line 740
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->l:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_7

    .line 741
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->l:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    goto :goto_7
.end method

.method public d()V
    .registers 2

    .prologue
    .line 766
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->k:Z

    .line 767
    return-void
.end method

.method public g()Lcom/koushikdutta/async/callback/WritableCallback;
    .registers 2

    .prologue
    .line 752
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->k:Z

    return v0
.end method

.method public m()Lcom/koushikdutta/async/AsyncServer;
    .registers 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->m:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-static {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->a(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;)Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method
