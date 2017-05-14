.class Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$3;
.super Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;
.source "AsyncHttpResponseImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->b(Ljava/lang/Exception;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$3;->a:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-direct {p0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 4

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 88
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl$3;->a:Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;

    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->a(Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;)Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v0

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->d()V

    .line 89
    return-void
.end method
