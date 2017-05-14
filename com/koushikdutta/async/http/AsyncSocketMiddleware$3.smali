.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


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
    .line 313
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;->b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 316
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;->a:Lcom/koushikdutta/async/AsyncSocket;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 317
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->d()V

    .line 318
    return-void
.end method
