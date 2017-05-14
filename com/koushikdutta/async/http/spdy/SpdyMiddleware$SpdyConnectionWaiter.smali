.class Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;
.super Lcom/koushikdutta/async/future/MultiFuture;
.source "SpdyMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/MultiFuture",
        "<",
        "Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;",
        ">;"
    }
.end annotation


# instance fields
.field c:Lcom/koushikdutta/async/future/SimpleCancellable;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/koushikdutta/async/future/MultiFuture;-><init>()V

    .line 127
    new-instance v0, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;->c:Lcom/koushikdutta/async/future/SimpleCancellable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$1;)V
    .registers 2

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;-><init>()V

    return-void
.end method
