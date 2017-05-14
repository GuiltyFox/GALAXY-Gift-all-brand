.class public Lcom/koushikdutta/ion/loader/HttpLoader;
.super Lcom/koushikdutta/ion/loader/SimpleLoader;
.source "HttpLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/koushikdutta/ion/loader/SimpleLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;
    .registers 6
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
    .line 24
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Ion;->e()Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/ion/loader/HttpLoader$1;

    invoke-direct {v1, p0, p3}, Lcom/koushikdutta/ion/loader/HttpLoader$1;-><init>(Lcom/koushikdutta/ion/loader/HttpLoader;Lcom/koushikdutta/async/future/FutureCallback;)V

    invoke-virtual {v0, p2, v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    goto :goto_12
.end method
