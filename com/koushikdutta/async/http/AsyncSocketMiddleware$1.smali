.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;
.super Lcom/koushikdutta/async/future/TransformFuture;
.source "AsyncSocketMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/TransformFuture",
        "<",
        "Lcom/koushikdutta/async/AsyncSocket;",
        "[",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Exception;

.field final synthetic b:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

.field final synthetic c:Landroid/net/Uri;

.field final synthetic m:I

.field final synthetic n:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;I)V
    .registers 5

    .prologue
    .line 192
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->n:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->b:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->c:Landroid/net/Uri;

    iput p4, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->m:I

    invoke-direct {p0}, Lcom/koushikdutta/async/future/TransformFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 192
    check-cast p1, [Ljava/net/InetAddress;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->a([Ljava/net/InetAddress;)V

    return-void
.end method

.method protected a([Ljava/net/InetAddress;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 203
    new-instance v2, Lcom/koushikdutta/async/future/Continuation;

    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$1;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;)V

    invoke-direct {v2, v0}, Lcom/koushikdutta/async/future/Continuation;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 215
    array-length v3, p1

    move v0, v1

    :goto_d
    if-ge v0, v3, :cond_31

    aget-object v4, p1, v0

    .line 216
    const-string/jumbo v5, "%s:%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v1

    const/4 v7, 0x1

    iget v8, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->m:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 217
    new-instance v6, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;

    invoke-direct {v6, p0, v5, v4}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1$2;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;Ljava/lang/String;Ljava/net/InetAddress;)V

    invoke-virtual {v2, v6}, Lcom/koushikdutta/async/future/Continuation;->a(Lcom/koushikdutta/async/callback/ContinuationCallback;)Lcom/koushikdutta/async/future/Continuation;

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 255
    :cond_31
    invoke-virtual {v2}, Lcom/koushikdutta/async/future/Continuation;->c()Lcom/koushikdutta/async/future/Continuation;

    .line 256
    return-void
.end method

.method protected b(Ljava/lang/Exception;)V
    .registers 8

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/koushikdutta/async/future/TransformFuture;->b(Ljava/lang/Exception;)V

    .line 198
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->n:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->b:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->c:Landroid/net/Uri;

    iget v3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->m:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;->b:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v5, v5, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->a:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 199
    return-void
.end method
