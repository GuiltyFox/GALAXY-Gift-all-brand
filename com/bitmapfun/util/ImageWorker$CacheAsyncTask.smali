.class public Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;
.super Lcom/bitmapfun/util/AsyncTask;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bitmapfun/util/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CacheAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bitmapfun/util/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitmapfun/util/ImageWorker;


# direct methods
.method protected constructor <init>(Lcom/bitmapfun/util/ImageWorker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bitmapfun/util/ImageWorker;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    invoke-direct {p0}, Lcom/bitmapfun/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 623
    invoke-virtual {p0, p1}, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 626
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 640
    :goto_c
    const/4 v0, 0x0

    return-object v0

    .line 628
    :pswitch_e
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageWorker;->clearCacheInternal()V

    goto :goto_c

    .line 631
    :pswitch_14
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageWorker;->initDiskCacheInternal()V

    goto :goto_c

    .line 634
    :pswitch_1a
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageWorker;->flushCacheInternal()V

    goto :goto_c

    .line 637
    :pswitch_20
    iget-object v0, p0, Lcom/bitmapfun/util/ImageWorker$CacheAsyncTask;->this$0:Lcom/bitmapfun/util/ImageWorker;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageWorker;->closeCacheInternal()V

    goto :goto_c

    .line 626
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_e
        :pswitch_14
        :pswitch_1a
        :pswitch_20
    .end packed-switch
.end method
