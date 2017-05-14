.class Lcom/koushikdutta/async/http/AsyncHttpClient$6;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

.field final synthetic b:Lcom/koushikdutta/async/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V
    .registers 3

    .prologue
    .line 471
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->b:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->a:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 474
    if-eqz p1, :cond_8

    .line 475
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->a:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->b(Ljava/lang/Exception;)V

    .line 478
    :goto_7
    return-void

    .line 477
    :cond_8
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;->a:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->b()V

    goto :goto_7
.end method
