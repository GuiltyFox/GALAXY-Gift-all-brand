.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$4;
.super Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;
.source "AsyncSocketMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/AsyncSocket;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/AsyncSocket;

.field final synthetic b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V
    .registers 3

    .prologue
    .line 323
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$4;->b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$4;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {p0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 5

    .prologue
    .line 326
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 327
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->m()V

    .line 328
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$4;->a:Lcom/koushikdutta/async/AsyncSocket;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 329
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$4;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->d()V

    .line 330
    return-void
.end method
