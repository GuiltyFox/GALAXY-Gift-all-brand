.class public Lcom/loopj/android/image/SmartImageTask$OnCompleteHandler;
.super Landroid/os/Handler;
.source "SmartImageTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopj/android/image/SmartImageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnCompleteHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 25
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 26
    invoke-virtual {p0, v1}, Lcom/loopj/android/image/SmartImageTask$OnCompleteHandler;->onComplete(Landroid/graphics/Bitmap;)V
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_a} :catch_17
    .catchall {:try_start_1 .. :try_end_a} :catchall_3d

    .line 30
    if-eqz v1, :cond_16

    .line 31
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 32
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    :cond_15
    const/4 v1, 0x0

    .line 38
    :cond_16
    :goto_16
    return-void

    .line 27
    :catch_17
    move-exception v2

    .line 28
    .local v2, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_18
    const-string v3, "MyLog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SmartImageTask|Error in out of memory image|"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_3d

    .line 30
    if-eqz v1, :cond_16

    .line 31
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 32
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    :cond_3b
    const/4 v1, 0x0

    goto :goto_16

    .line 29
    .end local v2    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_3d
    move-exception v3

    .line 30
    if-eqz v1, :cond_4a

    .line 31
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 32
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    :cond_49
    const/4 v1, 0x0

    .line 36
    :cond_4a
    throw v3
.end method

.method public onComplete(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 41
    return-void
.end method
