.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/ArrayDeque;

.field final synthetic b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/ArrayDeque;Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 300
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->d:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->a:Lcom/koushikdutta/async/ArrayDeque;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 5

    .prologue
    .line 303
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->d:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    monitor-enter v1

    .line 304
    :try_start_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->a:Lcom/koushikdutta/async/ArrayDeque;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->b:Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 305
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->d:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Ljava/lang/String;)V

    .line 306
    monitor-exit v1

    .line 307
    return-void

    .line 306
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method
