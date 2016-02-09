.class public Lcom/loopj/android/image/SmartImageTask;
.super Ljava/lang/Object;
.source "SmartImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopj/android/image/SmartImageTask$OnCompleteHandler;
    }
.end annotation


# static fields
.field private static final BITMAP_READY:I


# instance fields
.field private cancelled:Z

.field private context:Landroid/content/Context;

.field private image:Lcom/loopj/android/image/SmartImage;

.field private onCompleteHandler:Lcom/loopj/android/image/SmartImageTask$OnCompleteHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loopj/android/image/SmartImage;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "image"    # Lcom/loopj/android/image/SmartImage;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopj/android/image/SmartImageTask;->cancelled:Z

    .line 45
    iput-object p2, p0, Lcom/loopj/android/image/SmartImageTask;->image:Lcom/loopj/android/image/SmartImage;

    .line 46
    iput-object p1, p0, Lcom/loopj/android/image/SmartImageTask;->context:Landroid/content/Context;

    .line 47
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopj/android/image/SmartImageTask;->cancelled:Z

    .line 63
    return-void
.end method

.method public complete(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/loopj/android/image/SmartImageTask;->onCompleteHandler:Lcom/loopj/android/image/SmartImageTask$OnCompleteHandler;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/loopj/android/image/SmartImageTask;->cancelled:Z

    if-nez v0, :cond_14

    .line 67
    iget-object v0, p0, Lcom/loopj/android/image/SmartImageTask;->onCompleteHandler:Lcom/loopj/android/image/SmartImageTask$OnCompleteHandler;

    iget-object v1, p0, Lcom/loopj/android/image/SmartImageTask;->onCompleteHandler:Lcom/loopj/android/image/SmartImageTask$OnCompleteHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/loopj/android/image/SmartImageTask$OnCompleteHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loopj/android/image/SmartImageTask$OnCompleteHandler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    :cond_14
    return-void
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 75
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/loopj/android/image/SmartImageTask;->image:Lcom/loopj/android/image/SmartImage;

    if-eqz v0, :cond_12

    .line 52
    iget-object v0, p0, Lcom/loopj/android/image/SmartImageTask;->image:Lcom/loopj/android/image/SmartImage;

    iget-object v1, p0, Lcom/loopj/android/image/SmartImageTask;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/loopj/android/image/SmartImage;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/image/SmartImageTask;->complete(Landroid/graphics/Bitmap;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopj/android/image/SmartImageTask;->context:Landroid/content/Context;

    .line 55
    :cond_12
    return-void
.end method

.method public setOnCompleteHandler(Lcom/loopj/android/image/SmartImageTask$OnCompleteHandler;)V
    .registers 2
    .param p1, "handler"    # Lcom/loopj/android/image/SmartImageTask$OnCompleteHandler;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/loopj/android/image/SmartImageTask;->onCompleteHandler:Lcom/loopj/android/image/SmartImageTask$OnCompleteHandler;

    .line 59
    return-void
.end method
