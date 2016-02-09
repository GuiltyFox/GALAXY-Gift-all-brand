.class Lcom/bitmapfun/util/AsyncTask$2;
.super Lcom/bitmapfun/util/AsyncTask$WorkerRunnable;
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
        "Lcom/bitmapfun/util/AsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitmapfun/util/AsyncTask;


# direct methods
.method constructor <init>(Lcom/bitmapfun/util/AsyncTask;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitmapfun/util/AsyncTask$2;->this$0:Lcom/bitmapfun/util/AsyncTask;

    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bitmapfun/util/AsyncTask$WorkerRunnable;-><init>(Lcom/bitmapfun/util/AsyncTask$WorkerRunnable;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/bitmapfun/util/AsyncTask$2;->this$0:Lcom/bitmapfun/util/AsyncTask;

    # getter for: Lcom/bitmapfun/util/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/bitmapfun/util/AsyncTask;->access$1(Lcom/bitmapfun/util/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 312
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 314
    iget-object v0, p0, Lcom/bitmapfun/util/AsyncTask$2;->this$0:Lcom/bitmapfun/util/AsyncTask;

    iget-object v1, p0, Lcom/bitmapfun/util/AsyncTask$2;->this$0:Lcom/bitmapfun/util/AsyncTask;

    iget-object v2, p0, Lcom/bitmapfun/util/AsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/bitmapfun/util/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/bitmapfun/util/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/bitmapfun/util/AsyncTask;->access$2(Lcom/bitmapfun/util/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
