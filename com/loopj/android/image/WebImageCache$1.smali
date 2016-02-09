.class Lcom/loopj/android/image/WebImageCache$1;
.super Ljava/lang/Object;
.source "WebImageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/image/WebImageCache;->cacheBitmapToDisk(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/image/WebImageCache;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/loopj/android/image/WebImageCache;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/loopj/android/image/WebImageCache$1;->this$0:Lcom/loopj/android/image/WebImageCache;

    iput-object p2, p0, Lcom/loopj/android/image/WebImageCache$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/loopj/android/image/WebImageCache$1;->val$url:Ljava/lang/String;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 140
    :try_start_0
    iget-object v4, p0, Lcom/loopj/android/image/WebImageCache$1;->this$0:Lcom/loopj/android/image/WebImageCache;

    # getter for: Lcom/loopj/android/image/WebImageCache;->diskCacheEnabled:Z
    invoke-static {v4}, Lcom/loopj/android/image/WebImageCache;->access$0(Lcom/loopj/android/image/WebImageCache;)Z
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_5} :catch_64
    .catchall {:try_start_0 .. :try_end_5} :catchall_8f

    move-result v4

    if-eqz v4, :cond_39

    .line 141
    const/4 v2, 0x0

    .line 143
    .local v2, "ostream":Ljava/io/BufferedOutputStream;
    :try_start_9
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/loopj/android/image/WebImageCache$1;->this$0:Lcom/loopj/android/image/WebImageCache;

    # getter for: Lcom/loopj/android/image/WebImageCache;->diskCachePath:Ljava/lang/String;
    invoke-static {v6}, Lcom/loopj/android/image/WebImageCache;->access$1(Lcom/loopj/android/image/WebImageCache;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/loopj/android/image/WebImageCache$1;->this$0:Lcom/loopj/android/image/WebImageCache;

    iget-object v8, p0, Lcom/loopj/android/image/WebImageCache$1;->val$url:Ljava/lang/String;

    # invokes: Lcom/loopj/android/image/WebImageCache;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/loopj/android/image/WebImageCache;->access$2(Lcom/loopj/android/image/WebImageCache;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x800

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_28} :catch_4b
    .catchall {:try_start_9 .. :try_end_28} :catchall_5a

    .line 144
    .end local v2    # "ostream":Ljava/io/BufferedOutputStream;
    .local v3, "ostream":Ljava/io/BufferedOutputStream;
    :try_start_28
    iget-object v4, p0, Lcom/loopj/android/image/WebImageCache$1;->val$bitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_31} :catch_a9
    .catchall {:try_start_28 .. :try_end_31} :catchall_a6

    .line 149
    if-eqz v3, :cond_39

    .line 150
    :try_start_33
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 151
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_39} :catch_a2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_33 .. :try_end_39} :catch_64
    .catchall {:try_start_33 .. :try_end_39} :catchall_8f

    .line 160
    .end local v3    # "ostream":Ljava/io/BufferedOutputStream;
    :cond_39
    :goto_39
    iget-object v4, p0, Lcom/loopj/android/image/WebImageCache$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4a

    .line 161
    iget-object v4, p0, Lcom/loopj/android/image/WebImageCache$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 162
    iget-object v4, p0, Lcom/loopj/android/image/WebImageCache$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 168
    :cond_4a
    :goto_4a
    return-void

    .line 145
    .restart local v2    # "ostream":Ljava/io/BufferedOutputStream;
    :catch_4b
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4c
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_5a

    .line 149
    if-eqz v2, :cond_39

    .line 150
    :try_start_51
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 151
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_57} :catch_58
    .catch Ljava/lang/OutOfMemoryError; {:try_start_51 .. :try_end_57} :catch_64
    .catchall {:try_start_51 .. :try_end_57} :catchall_8f

    goto :goto_39

    .line 153
    :catch_58
    move-exception v4

    goto :goto_39

    .line 147
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_5a
    move-exception v4

    .line 149
    :goto_5b
    if-eqz v2, :cond_63

    .line 150
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 151
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_63} :catch_a4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5d .. :try_end_63} :catch_64
    .catchall {:try_start_5d .. :try_end_63} :catchall_8f

    .line 155
    :cond_63
    :goto_63
    :try_start_63
    throw v4
    :try_end_64
    .catch Ljava/lang/OutOfMemoryError; {:try_start_63 .. :try_end_64} :catch_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_8f

    .line 157
    .end local v2    # "ostream":Ljava/io/BufferedOutputStream;
    :catch_64
    move-exception v1

    .line 158
    .local v1, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_65
    const-string v4, "MyLog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WebImageCache|Error in out of memory image|"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_65 .. :try_end_7d} :catchall_8f

    .line 160
    iget-object v4, p0, Lcom/loopj/android/image/WebImageCache$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4a

    .line 161
    iget-object v4, p0, Lcom/loopj/android/image/WebImageCache$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 162
    iget-object v4, p0, Lcom/loopj/android/image/WebImageCache$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4a

    .line 159
    .end local v1    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_8f
    move-exception v4

    .line 160
    iget-object v5, p0, Lcom/loopj/android/image/WebImageCache$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_a1

    .line 161
    iget-object v5, p0, Lcom/loopj/android/image/WebImageCache$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 162
    iget-object v5, p0, Lcom/loopj/android/image/WebImageCache$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 166
    :cond_a1
    throw v4

    .line 153
    .restart local v3    # "ostream":Ljava/io/BufferedOutputStream;
    :catch_a2
    move-exception v4

    goto :goto_39

    .end local v3    # "ostream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "ostream":Ljava/io/BufferedOutputStream;
    :catch_a4
    move-exception v5

    goto :goto_63

    .line 147
    .end local v2    # "ostream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "ostream":Ljava/io/BufferedOutputStream;
    :catchall_a6
    move-exception v4

    move-object v2, v3

    .end local v3    # "ostream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "ostream":Ljava/io/BufferedOutputStream;
    goto :goto_5b

    .line 145
    .end local v2    # "ostream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "ostream":Ljava/io/BufferedOutputStream;
    :catch_a9
    move-exception v0

    move-object v2, v3

    .end local v3    # "ostream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "ostream":Ljava/io/BufferedOutputStream;
    goto :goto_4c
.end method
