.class Lcom/bitmapfun/util/AsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bitmapfun/util/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 662
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bitmapfun/util/AsyncTask$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/bitmapfun/util/AsyncTask$1;

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/bitmapfun/util/AsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 666
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bitmapfun/util/AsyncTask$AsyncTaskResult;

    .line 667
    .local v0, "result":Lcom/bitmapfun/util/AsyncTask$AsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e

    .line 676
    :goto_9
    return-void

    .line 670
    :pswitch_a
    iget-object v1, v0, Lcom/bitmapfun/util/AsyncTask$AsyncTaskResult;->mTask:Lcom/bitmapfun/util/AsyncTask;

    iget-object v2, v0, Lcom/bitmapfun/util/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    # invokes: Lcom/bitmapfun/util/AsyncTask;->finish(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/bitmapfun/util/AsyncTask;->access$600(Lcom/bitmapfun/util/AsyncTask;Ljava/lang/Object;)V

    goto :goto_9

    .line 673
    :pswitch_15
    iget-object v1, v0, Lcom/bitmapfun/util/AsyncTask$AsyncTaskResult;->mTask:Lcom/bitmapfun/util/AsyncTask;

    iget-object v2, v0, Lcom/bitmapfun/util/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/bitmapfun/util/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_9

    .line 667
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_15
    .end packed-switch
.end method
