.class Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;
.super Ljava/lang/Thread;
.source "PhotoTouchLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/image/PhotoTouchLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotosLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/util/image/PhotoTouchLoader;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/image/PhotoTouchLoader;)V
    .registers 2

    .prologue
    .line 257
    iput-object p1, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/samsung/privilege/util/image/PhotoTouchLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 262
    :cond_0
    const-wide/16 v5, 0x64

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_b9

    .line 268
    :goto_5
    :try_start_5
    iget-object v5, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/samsung/privilege/util/image/PhotoTouchLoader;

    iget-object v5, v5, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photosQueue:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->access$0(Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-nez v5, :cond_28

    .line 269
    iget-object v5, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/samsung/privilege/util/image/PhotoTouchLoader;

    iget-object v5, v5, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photosQueue:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->access$0(Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_1c} :catch_b4

    .line 270
    :try_start_1c
    iget-object v5, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/samsung/privilege/util/image/PhotoTouchLoader;

    iget-object v5, v5, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photosQueue:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->access$0(Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 269
    monitor-exit v6
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_b1

    .line 272
    :cond_28
    :try_start_28
    iget-object v5, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/samsung/privilege/util/image/PhotoTouchLoader;

    iget-object v5, v5, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photosQueue:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->access$0(Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-eqz v5, :cond_aa

    .line 274
    iget-object v5, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/samsung/privilege/util/image/PhotoTouchLoader;

    iget-object v5, v5, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photosQueue:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->access$0(Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v6

    monitor-enter v6
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_3f} :catch_b4

    .line 275
    :try_start_3f
    iget-object v5, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/samsung/privilege/util/image/PhotoTouchLoader;

    iget-object v5, v5, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photosQueue:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v5}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->access$0(Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;

    .line 274
    .local v3, "photoToLoad":Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;
    monitor-exit v6
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_b6

    .line 277
    :try_start_4e
    iget-object v5, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/samsung/privilege/util/image/PhotoTouchLoader;

    iget-object v6, v3, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 280
    .local v2, "bmp":Landroid/graphics/Bitmap;
    iget-object v5, v3, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    if-eqz v5, :cond_80

    .line 281
    iget-object v5, v3, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 282
    .local v4, "tag_url":Ljava/lang/String;
    if-eqz v4, :cond_80

    .line 283
    iget-object v5, v3, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 284
    new-instance v1, Lcom/samsung/privilege/util/image/PhotoTouchLoader$BitmapDisplayer;

    iget-object v5, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/samsung/privilege/util/image/PhotoTouchLoader;

    iget-object v6, v3, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-direct {v1, v5, v2, v6}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$BitmapDisplayer;-><init>(Lcom/samsung/privilege/util/image/PhotoTouchLoader;Landroid/graphics/Bitmap;Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V

    .line 285
    .local v1, "bd":Lcom/samsung/privilege/util/image/PhotoTouchLoader$BitmapDisplayer;
    iget-object v5, v3, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 286
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 291
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "bd":Lcom/samsung/privilege/util/image/PhotoTouchLoader$BitmapDisplayer;
    .end local v4    # "tag_url":Ljava/lang/String;
    :cond_80
    iget-object v5, v3, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    if-eqz v5, :cond_aa

    .line 292
    iget-object v5, v3, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 293
    .restart local v4    # "tag_url":Ljava/lang/String;
    if-eqz v4, :cond_aa

    .line 294
    iget-object v5, v3, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 295
    new-instance v1, Lcom/samsung/privilege/util/image/PhotoTouchLoader$BitmapDisplayer;

    iget-object v5, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;->this$0:Lcom/samsung/privilege/util/image/PhotoTouchLoader;

    iget-object v6, v3, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-direct {v1, v5, v2, v6}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$BitmapDisplayer;-><init>(Lcom/samsung/privilege/util/image/PhotoTouchLoader;Landroid/graphics/Bitmap;Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V

    .line 296
    .restart local v1    # "bd":Lcom/samsung/privilege/util/image/PhotoTouchLoader$BitmapDisplayer;
    iget-object v5, v3, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    invoke-virtual {v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 297
    .restart local v0    # "a":Landroid/app/Activity;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 303
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "bd":Lcom/samsung/privilege/util/image/PhotoTouchLoader$BitmapDisplayer;
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "photoToLoad":Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;
    .end local v4    # "tag_url":Ljava/lang/String;
    :cond_aa
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_ad
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_ad} :catch_b4

    move-result v5

    if-eqz v5, :cond_0

    .line 309
    :goto_b0
    return-void

    .line 269
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

    .line 306
    :catch_b4
    move-exception v5

    goto :goto_b0

    .line 274
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

    .line 263
    :catch_b9
    move-exception v5

    goto/16 :goto_5
.end method
