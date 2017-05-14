.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$3;
.super Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;
.source "AsyncHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->a(Ljava/lang/Exception;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$3;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-direct {p0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 4

    .prologue
    .line 178
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 179
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$3;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->m:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->d()V

    .line 180
    return-void
.end method
