.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"


# instance fields
.field a:Lcom/koushikdutta/async/AsyncSocket;

.field b:J

.field final synthetic c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V
    .registers 5

    .prologue
    .line 98
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->b:J

    .line 99
    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->a:Lcom/koushikdutta/async/AsyncSocket;

    .line 100
    return-void
.end method
