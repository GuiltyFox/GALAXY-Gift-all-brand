.class Lcom/koushikdutta/ion/loader/ResourceLoader$2;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/loader/ResourceLoader;->a(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/ion/Ion;

.field final synthetic b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field final synthetic c:Lcom/koushikdutta/ion/loader/InputStreamDataEmitterFuture;

.field final synthetic d:Lcom/koushikdutta/async/future/FutureCallback;

.field final synthetic e:Lcom/koushikdutta/ion/loader/ResourceLoader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/loader/ResourceLoader;Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/loader/InputStreamDataEmitterFuture;Lcom/koushikdutta/async/future/FutureCallback;)V
    .registers 6

    .prologue
    .line 113
    iput-object p1, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$2;->e:Lcom/koushikdutta/ion/loader/ResourceLoader;

    iput-object p2, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$2;->a:Lcom/koushikdutta/ion/Ion;

    iput-object p3, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$2;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iput-object p4, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$2;->c:Lcom/koushikdutta/ion/loader/InputStreamDataEmitterFuture;

    iput-object p5, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$2;->d:Lcom/koushikdutta/async/future/FutureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 117
    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$2;->a:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/Ion;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$2;->b:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/koushikdutta/ion/loader/ResourceLoader;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;

    move-result-object v0

    .line 118
    iget-object v1, v0, Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;->a:Landroid/content/res/Resources;

    iget v0, v0, Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;->b:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 119
    if-nez v0, :cond_34

    .line 120
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Unable to load content stream"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_28

    .line 126
    :catch_28
    move-exception v0

    .line 127
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$2;->c:Lcom/koushikdutta/ion/loader/InputStreamDataEmitterFuture;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/ion/loader/InputStreamDataEmitterFuture;->a(Ljava/lang/Exception;)Z

    .line 128
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$2;->d:Lcom/koushikdutta/async/future/FutureCallback;

    invoke-interface {v1, v0, v9}, Lcom/koushikdutta/async/future/FutureCallback;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 130
    :goto_33
    return-void

    .line 121
    :cond_34
    :try_start_34
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 122
    new-instance v1, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;

    iget-object v3, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$2;->a:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v3}, Lcom/koushikdutta/ion/Ion;->e()Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->d()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/koushikdutta/async/stream/InputStreamDataEmitter;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/InputStream;)V

    .line 123
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$2;->c:Lcom/koushikdutta/ion/loader/InputStreamDataEmitterFuture;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/ion/loader/InputStreamDataEmitterFuture;->b(Ljava/lang/Object;)Z

    .line 124
    iget-object v7, p0, Lcom/koushikdutta/ion/loader/ResourceLoader$2;->d:Lcom/koushikdutta/async/future/FutureCallback;

    const/4 v8, 0x0

    new-instance v0, Lcom/koushikdutta/ion/Loader$LoaderEmitter;

    int-to-long v2, v2

    sget-object v4, Lcom/koushikdutta/ion/ResponseServedFrom;->b:Lcom/koushikdutta/ion/ResponseServedFrom;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;-><init>(Lcom/koushikdutta/async/DataEmitter;JLcom/koushikdutta/ion/ResponseServedFrom;Lcom/koushikdutta/ion/HeadersResponse;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    invoke-interface {v7, v8, v0}, Lcom/koushikdutta/async/future/FutureCallback;->a(Ljava/lang/Exception;Ljava/lang/Object;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_5c} :catch_28

    goto :goto_33
.end method
