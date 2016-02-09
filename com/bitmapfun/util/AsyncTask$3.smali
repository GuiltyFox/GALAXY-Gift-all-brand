.class Lcom/bitmapfun/util/AsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitmapfun/util/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitmapfun/util/AsyncTask;


# direct methods
.method constructor <init>(Lcom/bitmapfun/util/AsyncTask;Ljava/util/concurrent/Callable;)V
    .registers 3

    .prologue
    .line 1
    .local p2, "$anonymous0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Lcom/bitmapfun/util/AsyncTask$3;->this$0:Lcom/bitmapfun/util/AsyncTask;

    .line 318
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .registers 4

    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/bitmapfun/util/AsyncTask$3;->this$0:Lcom/bitmapfun/util/AsyncTask;

    invoke-virtual {p0}, Lcom/bitmapfun/util/AsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v2

    # invokes: Lcom/bitmapfun/util/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/bitmapfun/util/AsyncTask;->access$3(Lcom/bitmapfun/util/AsyncTask;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_9} :catch_15
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_9} :catch_1e

    .line 331
    :goto_9
    return-void

    .line 323
    :catch_a
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "AsyncTask"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 325
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_15
    move-exception v0

    .line 327
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v1, "AsyncTask"

    const-string v2, "An error occured while executing doInBackground()"

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 328
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1e
    move-exception v0

    .line 329
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v1, p0, Lcom/bitmapfun/util/AsyncTask$3;->this$0:Lcom/bitmapfun/util/AsyncTask;

    const/4 v2, 0x0

    # invokes: Lcom/bitmapfun/util/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/bitmapfun/util/AsyncTask;->access$3(Lcom/bitmapfun/util/AsyncTask;Ljava/lang/Object;)V

    goto :goto_9
.end method
