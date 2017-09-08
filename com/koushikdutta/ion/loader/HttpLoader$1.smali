.class Lcom/koushikdutta/ion/loader/HttpLoader$1;
.super Ljava/lang/Object;
.source "HttpLoader.java"

# interfaces
.implements Lcom/koushikdutta/async/http/callback/HttpConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/loader/HttpLoader;->a(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/future/FutureCallback;

.field final synthetic b:Lcom/koushikdutta/ion/loader/HttpLoader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/loader/HttpLoader;Lcom/koushikdutta/async/future/FutureCallback;)V
    .registers 3

    .prologue
    .line 26
    iput-object p1, p0, Lcom/koushikdutta/ion/loader/HttpLoader$1;->b:Lcom/koushikdutta/ion/loader/HttpLoader;

    iput-object p2, p0, Lcom/koushikdutta/ion/loader/HttpLoader$1;->a:Lcom/koushikdutta/async/future/FutureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 29
    const-wide/16 v2, -0x1

    .line 30
    sget-object v4, Lcom/koushikdutta/ion/ResponseServedFrom;->d:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 33
    if-eqz p2, :cond_53

    .line 34
    invoke-interface {p2}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->o()Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-result-object v6

    .line 35
    new-instance v5, Lcom/koushikdutta/ion/HeadersResponse;

    invoke-interface {p2}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->f()I

    move-result v0

    invoke-interface {p2}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->b_()Lcom/koushikdutta/async/http/Headers;

    move-result-object v2

    invoke-direct {v5, v0, v1, v2}, Lcom/koushikdutta/ion/HeadersResponse;-><init>(ILjava/lang/String;Lcom/koushikdutta/async/http/Headers;)V

    .line 36
    invoke-virtual {v5}, Lcom/koushikdutta/ion/HeadersResponse;->a()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/HttpUtil;->a(Lcom/koushikdutta/async/http/Headers;)I

    move-result v0

    int-to-long v2, v0

    .line 37
    invoke-interface {p2}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->b_()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string/jumbo v1, "X-Served-From"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string/jumbo v1, "cache"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 39
    sget-object v4, Lcom/koushikdutta/ion/ResponseServedFrom;->b:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 43
    :cond_3b
    :goto_3b
    iget-object v7, p0, Lcom/koushikdutta/ion/loader/HttpLoader$1;->a:Lcom/koushikdutta/async/future/FutureCallback;

    new-instance v0, Lcom/koushikdutta/ion/Loader$LoaderEmitter;

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/koushikdutta/ion/Loader$LoaderEmitter;-><init>(Lcom/koushikdutta/async/DataEmitter;JLcom/koushikdutta/ion/ResponseServedFrom;Lcom/koushikdutta/ion/HeadersResponse;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    invoke-interface {v7, p1, v0}, Lcom/koushikdutta/async/future/FutureCallback;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 45
    return-void

    .line 40
    :cond_47
    const-string/jumbo v1, "conditional-cache"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 41
    sget-object v4, Lcom/koushikdutta/ion/ResponseServedFrom;->c:Lcom/koushikdutta/ion/ResponseServedFrom;

    goto :goto_3b

    :cond_53
    move-object v5, v6

    goto :goto_3b
.end method
