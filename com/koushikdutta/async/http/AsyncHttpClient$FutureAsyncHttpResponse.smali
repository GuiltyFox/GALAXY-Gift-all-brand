.class Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/SimpleFuture",
        "<",
        "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/koushikdutta/async/AsyncSocket;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Runnable;

.field final synthetic m:Lcom/koushikdutta/async/http/AsyncHttpClient;


# direct methods
.method private constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->m:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$1;)V
    .registers 3

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 3

    .prologue
    .line 141
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->b()Z

    move-result v0

    if-nez v0, :cond_8

    .line 142
    const/4 v0, 0x0

    .line 152
    :goto_7
    return v0

    .line 144
    :cond_8
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->a:Lcom/koushikdutta/async/AsyncSocket;

    if-eqz v0, :cond_1b

    .line 145
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->a:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v1, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v1}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 146
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->d()V

    .line 149
    :cond_1b
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->b:Ljava/lang/Object;

    if-eqz v0, :cond_28

    .line 150
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->m:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->e:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Object;)V

    .line 152
    :cond_28
    const/4 v0, 0x1

    goto :goto_7
.end method
