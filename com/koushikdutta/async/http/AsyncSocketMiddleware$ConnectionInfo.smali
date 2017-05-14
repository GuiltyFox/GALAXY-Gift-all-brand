.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"


# instance fields
.field a:I

.field b:Lcom/koushikdutta/async/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/ArrayDeque",
            "<",
            "Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/koushikdutta/async/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/ArrayDeque",
            "<",
            "Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/koushikdutta/async/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->b:Lcom/koushikdutta/async/ArrayDeque;

    .line 108
    new-instance v0, Lcom/koushikdutta/async/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->c:Lcom/koushikdutta/async/ArrayDeque;

    return-void
.end method
