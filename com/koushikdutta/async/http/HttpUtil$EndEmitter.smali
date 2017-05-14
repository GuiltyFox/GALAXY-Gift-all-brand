.class Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "HttpUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 46
    return-void
.end method

.method public static a(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    .registers 4

    .prologue
    .line 49
    new-instance v0, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;-><init>()V

    .line 52
    new-instance v1, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;

    invoke-direct {v1, v0, p1}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;-><init>(Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 58
    return-object v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;Ljava/lang/Exception;)V
    .registers 2

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->b(Ljava/lang/Exception;)V

    return-void
.end method
