.class Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

.field final synthetic b:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

.field final synthetic c:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;)V
    .registers 4

    .prologue
    .line 168
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;->c:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iput-object p3, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;->b:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;->a:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;->b:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 172
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$1;->b:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedSocket;->c()V

    .line 173
    return-void
.end method
