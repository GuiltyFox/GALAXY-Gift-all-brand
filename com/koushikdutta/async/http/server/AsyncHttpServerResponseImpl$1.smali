.class Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;
.super Ljava/lang/Object;
.source "AsyncHttpServerResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->c()V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Z)V
    .registers 3

    .prologue
    .line 102
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->b:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iput-boolean p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 105
    if-eqz p1, :cond_9

    .line 106
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->b:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b(Ljava/lang/Exception;)V

    .line 135
    :goto_8
    return-void

    .line 109
    :cond_9
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->a:Z

    if-eqz v0, :cond_48

    .line 110
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->b:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-object v1, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;-><init>(Lcom/koushikdutta/async/DataSink;)V

    .line 111
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->a(I)V

    .line 112
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->b:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iput-object v0, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Lcom/koushikdutta/async/DataSink;

    .line 118
    :goto_1e
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->b:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Lcom/koushikdutta/async/DataSink;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->b:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-object v1, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 119
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->b:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iput-object v2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->j:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 120
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->b:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Lcom/koushikdutta/async/DataSink;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->b:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-object v1, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->f:Lcom/koushikdutta/async/callback/WritableCallback;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 121
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->b:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iput-object v2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->f:Lcom/koushikdutta/async/callback/WritableCallback;

    .line 122
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->b:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->g:Z

    if-eqz v0, :cond_51

    .line 124
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->b:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->a()V

    goto :goto_8

    .line 115
    :cond_48
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->b:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->b:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iget-object v1, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->b:Lcom/koushikdutta/async/AsyncSocket;

    iput-object v1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->e:Lcom/koushikdutta/async/DataSink;

    goto :goto_1e

    .line 127
    :cond_51
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->b:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->f()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    goto :goto_8
.end method
