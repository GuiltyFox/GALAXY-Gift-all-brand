.class public Lcom/koushikdutta/ion/loader/FileLoader;
.super Lcom/koushikdutta/ion/loader/StreamLoader;
.source "FileLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/koushikdutta/ion/loader/StreamLoader;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/koushikdutta/async/future/Future;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/koushikdutta/ion/Ion;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lcom/koushikdutta/ion/bitmap/BitmapInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    if-eqz p4, :cond_b

    const-string/jumbo v0, "file:/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 37
    :cond_b
    const/4 v2, 0x0

    .line 81
    :goto_c
    return-object v2

    .line 39
    :cond_d
    new-instance v2, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v2}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 42
    invoke-static {}, Lcom/koushikdutta/ion/Ion;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    new-instance v0, Lcom/koushikdutta/ion/loader/FileLoader$1;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p2

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/koushikdutta/ion/loader/FileLoader$1;-><init>(Lcom/koushikdutta/ion/loader/FileLoader;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/String;Lcom/koushikdutta/ion/Ion;IIZLjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_c
.end method

.method public a(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/ion/Ion;",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/future/FutureCallback",
            "<",
            "Lcom/koushikdutta/ion/Loader$LoaderEmitter;",
            ">;)",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lcom/koushikdutta/async/DataEmitter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    move-object v4, v0

    .line 98
    :goto_13
    return-object v4

    .line 88
    :cond_14
    new-instance v4, Lcom/koushikdutta/ion/loader/FileLoader$FileFuture;

    invoke-direct {v4, v0}, Lcom/koushikdutta/ion/loader/FileLoader$FileFuture;-><init>(Lcom/koushikdutta/ion/loader/FileLoader$1;)V

    .line 89
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Ion;->e()Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->d()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v6

    new-instance v0, Lcom/koushikdutta/ion/loader/FileLoader$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/ion/loader/FileLoader$2;-><init>(Lcom/koushikdutta/ion/loader/FileLoader;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/ion/loader/FileLoader$FileFuture;Lcom/koushikdutta/async/future/FutureCallback;)V

    invoke-virtual {v6, v0}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    goto :goto_13
.end method
