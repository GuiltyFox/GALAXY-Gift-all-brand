.class Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1$1;
.super Ljava/lang/Object;
.source "AsyncHttpServerResponseImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->a(Ljava/lang/Exception;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$1;->b:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->g()Lcom/koushikdutta/async/callback/WritableCallback;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_d

    .line 132
    invoke-interface {v0}, Lcom/koushikdutta/async/callback/WritableCallback;->a()V

    .line 133
    :cond_d
    return-void
.end method
