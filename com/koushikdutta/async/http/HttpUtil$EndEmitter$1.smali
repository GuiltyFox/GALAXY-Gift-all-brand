.class final Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->a(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

.field final synthetic b:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 52
    iput-object p1, p0, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;->a:Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    iput-object p2, p0, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;->a:Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    iget-object v1, p0, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;->b:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->a(Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;Ljava/lang/Exception;)V

    .line 56
    return-void
.end method
