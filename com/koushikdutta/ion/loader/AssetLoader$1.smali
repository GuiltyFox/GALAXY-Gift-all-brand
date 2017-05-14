.class Lcom/koushikdutta/ion/loader/AssetLoader$1;
.super Ljava/lang/Object;
.source "AssetLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/loader/AssetLoader;->a(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/ion/Ion;

.field final synthetic b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field final synthetic c:Lcom/koushikdutta/ion/loader/InputStreamDataEmitterFuture;

.field final synthetic d:Lcom/koushikdutta/async/future/FutureCallback;

.field final synthetic e:Lcom/koushikdutta/ion/loader/AssetLoader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/loader/AssetLoader;Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/loader/InputStreamDataEmitterFuture;Lcom/koushikdutta/async/future/FutureCallback;)V
    .registers 6

    .prologue
    .line 40
    iput-object p1, p0, Lcom/koushikdutta/ion/loader/AssetLoader$1;->e:Lcom/koushikdutta/ion/loader/AssetLoader;

    iput-object p2, p0, Lcom/koushikdutta/ion/loader/AssetLoader$1;->a:Lcom/koushikdutta/ion/Ion;

    iput-object p3, p0, Lcom/koushikdutta/ion/loader/AssetLoader$1;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iput-object p4, p0, Lcom/koushikdutta/ion/loader/AssetLoader$1;->c:Lcom/koushikdutta/ion/loader/InputStreamDataEmitterFuture;

    iput-object p5, p0, Lcom/koushikdutta/ion/loader/AssetLoader$1;->d:Lcom/koushikdutta/async/future/FutureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/AssetLoader$1;->e:Lcom/koushikdutta/ion/loader/AssetLoader;

    iget-object v1, p0, Lcom/koushikdutta/ion/loader/AssetLoader$1;->a:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->c()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/ion/loader/AssetLoader$1;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/ion/loader/AssetLoader;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 45
    if-nez v0, :cond_2e

    .line 46
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Unable to load content stream"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_22

    .line 52
    :catch_22
    move-exception v0

    .line 53
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/AssetLoader$1;->c:Lcom/koushikdutta/ion/loader/InputStreamDataEmitterFuture;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/ion/loader/InputStreamDataEmitterFuture;->a(Ljava/lang/Exception;)Z

    .line 54
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/AssetLoader$1;->d:Lcom/koushikdutta/async/future/FutureCallback;

    invoke-interface {v1, v0, v9}, Lcom/koushikdutta/async/future/FutureCallback;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 56
    :goto_2d
    return-void

    .line 47
    :cond_2e
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 48
    new-instance v1, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    iget-object v3, p0, Lcom/koushikdutta/ion/loader/AssetLoader$1;->a:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v3}, Lcom/koushikdutta/ion/Ion;->e()Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->d()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/InputStream;)V

    .line 49
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/AssetLoader$1;->c:Lcom/koushikdutta/ion/loader/InputStreamDataEmitterFuture;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/ion/loader/InputStreamDataEmitterFuture;->b(Ljava/lang/Object;)Z

    .line 50
    iget-object v7, p0, Lcom/koushikdutta/ion/loader/AssetLoader$1;->d:Lcom/koushikdutta/async/future/FutureCallback;

    const/4 v8, 0x0

    new-instance v0, Lcom/koushikdutta/ion/Loader$LoaderEmitter;

    int-to-long v2, v2

    sget-object v4, Lcom/koushikdutta/ion/ResponseServedFrom;->b:Lcom/koushikdutta/ion/ResponseServedFrom;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;-><init>(Lcom/koushikdutta/async/DataEmitter;JLcom/koushikdutta/ion/ResponseServedFrom;Lcom/koushikdutta/ion/HeadersResponse;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    invoke-interface {v7, v8, v0}, Lcom/koushikdutta/async/future/FutureCallback;->a(Ljava/lang/Exception;Ljava/lang/Object;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_56} :catch_22

    goto :goto_2d
.end method
