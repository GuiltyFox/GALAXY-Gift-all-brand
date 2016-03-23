.class Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosLoader;
.super Ljava/lang/Thread;
.source "PhotoTouchLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotosLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 261
    :cond_0
    const-wide/16 v6, 0x64

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_b9

    .line 267
    :goto_5
    :try_start_5
    iget-object v5, p0, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;

    iget-object v5, v5, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;->photosQueue:Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;->access$000(Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-nez v5, :cond_28

    .line 268
    iget-object v5, p0, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;

    iget-object v5, v5, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;->photosQueue:Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;->access$000(Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_1c} :catch_b4

    .line 269
    :try_start_1c
    iget-object v5, p0, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;

    iget-object v5, v5, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;->photosQueue:Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;->access$000(Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 270
    monitor-exit v6
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_b1

    .line 271
    :cond_28
    :try_start_28
    iget-object v5, p0, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;

    iget-object v5, v5, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;->photosQueue:Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;->access$000(Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-eqz v5, :cond_aa

    .line 273
    iget-object v5, p0, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;

    iget-object v5, v5, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;->photosQueue:Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;->access$000(Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v6

    monitor-enter v6
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_3f} :catch_b4

    .line 274
    :try_start_3f
    iget-object v5, p0, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;

    iget-object v5, v5, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;->photosQueue:Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;->access$000(Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotoToLoad;

    .line 275
    .local v3, "photoToLoad":Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotoToLoad;
    monitor-exit v6
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_b6

    .line 276
    :try_start_4e
    iget-object v5, p0, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;

    iget-object v6, v3, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 279
    .local v2, "bmp":Landroid/graphics/Bitmap;
    iget-object v5, v3, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    if-eqz v5, :cond_80

    .line 280
    iget-object v5, v3, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 281
    .local v4, "tag_url":Ljava/lang/String;
    if-eqz v4, :cond_80

    .line 282
    iget-object v5, v3, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 283
    new-instance v1, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$BitmapDisplayer;

    iget-object v5, p0, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;

    iget-object v6, v3, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-direct {v1, v5, v2, v6}, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$BitmapDisplayer;-><init>(Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;Landroid/graphics/Bitmap;Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V

    .line 284
    .local v1, "bd":Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$BitmapDisplayer;
    iget-object v5, v3, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 285
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 290
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "bd":Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$BitmapDisplayer;
    .end local v4    # "tag_url":Ljava/lang/String;
    :cond_80
    iget-object v5, v3, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    if-eqz v5, :cond_aa

    .line 291
    iget-object v5, v3, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 292
    .restart local v4    # "tag_url":Ljava/lang/String;
    if-eqz v4, :cond_aa

    .line 293
    iget-object v5, v3, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 294
    new-instance v1, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$BitmapDisplayer;

    iget-object v5, p0, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;

    iget-object v6, v3, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-direct {v1, v5, v2, v6}, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$BitmapDisplayer;-><init>(Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader;Landroid/graphics/Bitmap;Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V

    .line 295
    .restart local v1    # "bd":Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$BitmapDisplayer;
    iget-object v5, v3, Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 296
    .restart local v0    # "a":Landroid/app/Activity;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 302
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "bd":Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$BitmapDisplayer;
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "photoToLoad":Lcom/bzbs/lib/survey/util/image/PhotoTouchLoader$PhotoToLoad;
    .end local v4    # "tag_url":Ljava/lang/String;
    :cond_aa
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_ad
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_ad} :catch_b4

    move-result v5

    if-eqz v5, :cond_0

    .line 308
    :goto_b0
    return-void

    .line 270
    :catchall_b1
    move-exception v5

    :try_start_b2
    monitor-exit v6
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    :try_start_b3
    throw v5
    :try_end_b4
    .catch Ljava/lang/InterruptedException; {:try_start_b3 .. :try_end_b4} :catch_b4

    .line 305
    :catch_b4
    move-exception v5

    goto :goto_b0

    .line 275
    :catchall_b6
    move-exception v5

    :try_start_b7
    monitor-exit v6
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    :try_start_b8
    throw v5
    :try_end_b9
    .catch Ljava/lang/InterruptedException; {:try_start_b8 .. :try_end_b9} :catch_b4

    .line 262
    :catch_b9
    move-exception v5

    goto/16 :goto_5
.end method
