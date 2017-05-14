.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$1;
.super Ljava/lang/Object;
.source "AsyncHttpServer.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->k()V

    .line 99
    if-eqz p1, :cond_d

    .line 100
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->a(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;Ljava/lang/Exception;)V

    .line 105
    :goto_c
    return-void

    .line 103
    :cond_d
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->j:Z

    .line 104
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$1;->a:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->a()V

    goto :goto_c
.end method
