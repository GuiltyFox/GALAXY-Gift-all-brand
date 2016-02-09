.class public Lcom/loopj/android/image/WebImage;
.super Ljava/lang/Object;
.source "WebImage.java"

# interfaces
.implements Lcom/loopj/android/image/SmartImage;


# static fields
.field private static webImageCache:Lcom/loopj/android/image/WebImageCache;

.field private static webImageCacheSD:Lcom/loopj/android/image/WebImageCacheSD;


# instance fields
.field private cache_image:Z

.field private cover_offset_y:I

.field private default_image:I

.field private reqHeight:I

.field private reqWidth:I

.field private total_retry:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZIII)V
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "is_cache"    # Z
    .param p3, "default_image"    # I
    .param p4, "reqWidth"    # I
    .param p5, "reqHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/loopj/android/image/WebImage;->cover_offset_y:I

    .line 25
    iput v1, p0, Lcom/loopj/android/image/WebImage;->reqWidth:I

    .line 26
    iput v1, p0, Lcom/loopj/android/image/WebImage;->reqHeight:I

    .line 28
    iput v1, p0, Lcom/loopj/android/image/WebImage;->total_retry:I

    .line 31
    iput-object p1, p0, Lcom/loopj/android/image/WebImage;->url:Ljava/lang/String;

    .line 32
    iput-boolean p2, p0, Lcom/loopj/android/image/WebImage;->cache_image:Z

    .line 33
    iput p3, p0, Lcom/loopj/android/image/WebImage;->default_image:I

    .line 34
    iput p4, p0, Lcom/loopj/android/image/WebImage;->reqWidth:I

    .line 35
    iput p5, p0, Lcom/loopj/android/image/WebImage;->reqHeight:I

    .line 37
    iput v1, p0, Lcom/loopj/android/image/WebImage;->total_retry:I

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZIIII)V
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "is_cache"    # Z
    .param p3, "default_image"    # I
    .param p4, "reqWidth"    # I
    .param p5, "reqHeight"    # I
    .param p6, "cover_offset_y"    # I

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/loopj/android/image/WebImage;->cover_offset_y:I

    .line 25
    iput v1, p0, Lcom/loopj/android/image/WebImage;->reqWidth:I

    .line 26
    iput v1, p0, Lcom/loopj/android/image/WebImage;->reqHeight:I

    .line 28
    iput v1, p0, Lcom/loopj/android/image/WebImage;->total_retry:I

    .line 41
    iput-object p1, p0, Lcom/loopj/android/image/WebImage;->url:Ljava/lang/String;

    .line 42
    iput-boolean p2, p0, Lcom/loopj/android/image/WebImage;->cache_image:Z

    .line 43
    iput p3, p0, Lcom/loopj/android/image/WebImage;->default_image:I

    .line 44
    iput p4, p0, Lcom/loopj/android/image/WebImage;->reqWidth:I

    .line 45
    iput p5, p0, Lcom/loopj/android/image/WebImage;->reqHeight:I

    .line 46
    iput p6, p0, Lcom/loopj/android/image/WebImage;->cover_offset_y:I

    .line 48
    iput v1, p0, Lcom/loopj/android/image/WebImage;->total_retry:I

    .line 49
    return-void
.end method

.method private getBitmapFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 160
    const/4 v0, 0x0

    .line 163
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_2
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 164
    .local v2, "conn":Ljava/net/URLConnection;
    sget v5, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_CONNECT_TIMEOUT:I

    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 165
    sget v5, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_READ_TIMEOUT:I

    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 166
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_2e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_1e} :catch_55
    .catchall {:try_start_2 .. :try_end_1e} :catchall_7c

    move-result-object v0

    .line 177
    if-eqz v0, :cond_8a

    .line 178
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 179
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 181
    :cond_2a
    const/4 v1, 0x0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_2b
    move-object v5, v0

    move-object v0, v1

    .line 175
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "conn":Ljava/net/URLConnection;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_2d
    return-object v5

    .line 168
    :catch_2e
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2f
    const-string v5, "buzzebees.WebImage"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "WebImage|getBitmapFromUrl|Error in Exception|"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_7c

    .line 177
    if-eqz v0, :cond_53

    .line 178
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 179
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 181
    :cond_52
    const/4 v0, 0x0

    :cond_53
    move-object v5, v6

    .line 171
    goto :goto_2d

    .line 172
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_55
    move-exception v4

    .line 173
    .local v4, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_56
    const-string v5, "buzzebees.WebImage"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "WebImage|getBitmapFromUrl|Error in OutOfMemoryError|"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_56 .. :try_end_6e} :catchall_7c

    .line 177
    if-eqz v0, :cond_7a

    .line 178
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_79

    .line 179
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 181
    :cond_79
    const/4 v0, 0x0

    :cond_7a
    move-object v5, v6

    .line 175
    goto :goto_2d

    .line 176
    .end local v4    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_7c
    move-exception v5

    .line 177
    if-eqz v0, :cond_89

    .line 178
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_88

    .line 179
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 181
    :cond_88
    const/4 v0, 0x0

    .line 183
    :cond_89
    throw v5

    .restart local v2    # "conn":Ljava/net/URLConnection;
    :cond_8a
    move-object v1, v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2b
.end method

.method public static removeFromCache(Ljava/lang/String;)V
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 188
    sget-object v0, Lcom/loopj/android/image/WebImage;->webImageCache:Lcom/loopj/android/image/WebImageCache;

    if-eqz v0, :cond_9

    .line 189
    sget-object v0, Lcom/loopj/android/image/WebImage;->webImageCache:Lcom/loopj/android/image/WebImageCache;

    invoke-virtual {v0, p0}, Lcom/loopj/android/image/WebImageCache;->remove(Ljava/lang/String;)V

    .line 191
    :cond_9
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 197
    return-void
.end method

.method public getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/loopj/android/image/WebImage;->url:Ljava/lang/String;

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/loopj/android/image/WebImage;->url:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df

    .line 54
    sget-object v0, Lcom/loopj/android/image/WebImage;->webImageCacheSD:Lcom/loopj/android/image/WebImageCacheSD;

    if-nez v0, :cond_19

    .line 55
    new-instance v0, Lcom/loopj/android/image/WebImageCacheSD;

    invoke-direct {v0, p1}, Lcom/loopj/android/image/WebImageCacheSD;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/loopj/android/image/WebImage;->webImageCacheSD:Lcom/loopj/android/image/WebImageCacheSD;

    .line 58
    :cond_19
    sget v0, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_CACHE_MEMORY:I

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/loopj/android/image/WebImage;->cover_offset_y:I

    if-ltz v0, :cond_32

    .line 59
    :cond_21
    sget-object v0, Lcom/loopj/android/image/WebImage;->webImageCacheSD:Lcom/loopj/android/image/WebImageCacheSD;

    iget-object v1, p0, Lcom/loopj/android/image/WebImage;->url:Ljava/lang/String;

    iget v2, p0, Lcom/loopj/android/image/WebImage;->default_image:I

    iget v3, p0, Lcom/loopj/android/image/WebImage;->reqWidth:I

    iget v4, p0, Lcom/loopj/android/image/WebImage;->reqHeight:I

    iget v5, p0, Lcom/loopj/android/image/WebImage;->cover_offset_y:I

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/image/WebImageCacheSD;->get(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 104
    :cond_31
    :goto_31
    return-object v7

    .line 61
    :cond_32
    sget-object v0, Lcom/loopj/android/image/WebImage;->webImageCache:Lcom/loopj/android/image/WebImageCache;

    if-nez v0, :cond_3e

    .line 62
    new-instance v0, Lcom/loopj/android/image/WebImageCache;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/loopj/android/image/WebImageCache;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/loopj/android/image/WebImage;->webImageCache:Lcom/loopj/android/image/WebImageCache;

    .line 66
    :cond_3e
    const/4 v6, 0x0

    .line 69
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    :try_start_3f
    iget-object v0, p0, Lcom/loopj/android/image/WebImage;->url:Ljava/lang/String;

    if-eqz v0, :cond_92

    .line 70
    sget-object v0, Lcom/loopj/android/image/WebImage;->webImageCache:Lcom/loopj/android/image/WebImageCache;

    iget-object v1, p0, Lcom/loopj/android/image/WebImage;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/loopj/android/image/WebImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 71
    if-nez v6, :cond_76

    .line 73
    sget-object v0, Lcom/loopj/android/image/WebImage;->webImageCacheSD:Lcom/loopj/android/image/WebImageCacheSD;

    iget-object v1, p0, Lcom/loopj/android/image/WebImage;->url:Ljava/lang/String;

    iget v2, p0, Lcom/loopj/android/image/WebImage;->default_image:I

    iget v3, p0, Lcom/loopj/android/image/WebImage;->reqWidth:I

    iget v4, p0, Lcom/loopj/android/image/WebImage;->reqHeight:I

    iget v5, p0, Lcom/loopj/android/image/WebImage;->cover_offset_y:I

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/image/WebImageCacheSD;->get(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 74
    if-eqz v6, :cond_92

    .line 75
    sget-object v0, Lcom/loopj/android/image/WebImage;->webImageCache:Lcom/loopj/android/image/WebImageCache;

    iget-object v1, p0, Lcom/loopj/android/image/WebImage;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lcom/loopj/android/image/WebImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_66
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3f .. :try_end_66} :catch_a6
    .catchall {:try_start_3f .. :try_end_66} :catchall_d1

    move-object v7, v6

    .line 82
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    :goto_67
    if-eqz v7, :cond_94

    .line 95
    if-eqz v7, :cond_ea

    .line 96
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 97
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    :cond_74
    const/4 v6, 0x0

    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_31

    .line 78
    :cond_76
    :try_start_76
    const-string v0, "buzzebees.WebImage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get from CACHE_MEMORY{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/loopj/android/image/WebImage;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_92
    .catch Ljava/lang/OutOfMemoryError; {:try_start_76 .. :try_end_92} :catch_a6
    .catchall {:try_start_76 .. :try_end_92} :catchall_d1

    :cond_92
    move-object v7, v6

    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_67

    .line 85
    :cond_94
    :try_start_94
    invoke-virtual {p0, p1}, Lcom/loopj/android/image/WebImage;->getBitmapAgain(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_97
    .catch Ljava/lang/OutOfMemoryError; {:try_start_94 .. :try_end_97} :catch_e5
    .catchall {:try_start_94 .. :try_end_97} :catchall_e2

    move-result-object v0

    .line 95
    if-eqz v7, :cond_e8

    .line 96
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 97
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    :cond_a3
    const/4 v6, 0x0

    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    :goto_a4
    move-object v7, v0

    .line 85
    goto :goto_31

    .line 87
    :catch_a6
    move-exception v8

    .line 88
    .local v8, "oom":Ljava/lang/OutOfMemoryError;
    :goto_a7
    :try_start_a7
    const-string v0, "buzzebees.WebImage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebImage|getBitmap|Error in OutOfMemoryError|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/loopj/android/image/WebImage;->getBitmapAgain(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_c2
    .catchall {:try_start_a7 .. :try_end_c2} :catchall_d1

    move-result-object v7

    .line 95
    if-eqz v6, :cond_31

    .line 96
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 97
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    :cond_ce
    const/4 v6, 0x0

    goto/16 :goto_31

    .line 94
    .end local v8    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_d1
    move-exception v0

    .line 95
    :goto_d2
    if-eqz v6, :cond_de

    .line 96
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 97
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    :cond_dd
    const/4 v6, 0x0

    .line 101
    :cond_de
    throw v0

    .line 104
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_df
    const/4 v7, 0x0

    goto/16 :goto_31

    .line 94
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_e2
    move-exception v0

    move-object v6, v7

    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_d2

    .line 87
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :catch_e5
    move-exception v8

    move-object v6, v7

    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_a7

    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_e8
    move-object v6, v7

    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_a4

    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_ea
    move-object v6, v7

    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_31
.end method

.method public getBitmapAgain(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    iget v0, p0, Lcom/loopj/android/image/WebImage;->total_retry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loopj/android/image/WebImage;->total_retry:I

    .line 110
    iget v0, p0, Lcom/loopj/android/image/WebImage;->total_retry:I

    sget v1, Lcom/samsung/privilege/AppSetting;->WEB_IMAGE_RETRY_NUMBER:I

    if-gt v0, v1, :cond_39

    .line 111
    const-string v0, "buzzebees.WebImage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RETRY("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/loopj/android/image/WebImage;->total_retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "){"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loopj/android/image/WebImage;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/loopj/android/image/WebImage;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    :goto_38
    return-object v0

    .line 117
    :cond_39
    const-string v0, "buzzebees.WebImage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FAIL("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/loopj/android/image/WebImage;->total_retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "){"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loopj/android/image/WebImage;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    goto :goto_38
.end method

.method public getBitmapOLD(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    sget-object v3, Lcom/loopj/android/image/WebImage;->webImageCache:Lcom/loopj/android/image/WebImageCache;

    if-nez v3, :cond_d

    .line 128
    new-instance v3, Lcom/loopj/android/image/WebImageCache;

    iget-boolean v4, p0, Lcom/loopj/android/image/WebImage;->cache_image:Z

    invoke-direct {v3, p1, v4}, Lcom/loopj/android/image/WebImageCache;-><init>(Landroid/content/Context;Z)V

    sput-object v3, Lcom/loopj/android/image/WebImage;->webImageCache:Lcom/loopj/android/image/WebImageCache;

    .line 132
    :cond_d
    const/4 v0, 0x0

    .line 135
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_e
    iget-object v3, p0, Lcom/loopj/android/image/WebImage;->url:Ljava/lang/String;

    if-eqz v3, :cond_2b

    .line 136
    sget-object v3, Lcom/loopj/android/image/WebImage;->webImageCache:Lcom/loopj/android/image/WebImageCache;

    iget-object v4, p0, Lcom/loopj/android/image/WebImage;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/loopj/android/image/WebImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    if-nez v0, :cond_2b

    .line 138
    iget-object v3, p0, Lcom/loopj/android/image/WebImage;->url:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/loopj/android/image/WebImage;->getBitmapFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_2b

    .line 140
    sget-object v3, Lcom/loopj/android/image/WebImage;->webImageCache:Lcom/loopj/android/image/WebImageCache;

    iget-object v4, p0, Lcom/loopj/android/image/WebImage;->url:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/loopj/android/image/WebImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_2b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_2b} :catch_3b
    .catchall {:try_start_e .. :try_end_2b} :catchall_62

    .line 150
    :cond_2b
    if-eqz v0, :cond_75

    .line 151
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 152
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    :cond_36
    const/4 v1, 0x0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_37
    move-object v6, v1

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    move-object v1, v0

    move-object v0, v6

    .line 148
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_3a
    return-object v1

    .line 146
    :catch_3b
    move-exception v2

    move-object v1, v0

    .line 147
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .local v2, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_3d
    const-string v3, "buzzebees.WebImage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WebImage|getBitmap|Error in OutOfMemoryError|"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_3d .. :try_end_55} :catchall_70

    .line 150
    if-eqz v1, :cond_73

    .line 151
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 152
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    :cond_60
    const/4 v0, 0x0

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_3a

    .line 149
    .end local v2    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_62
    move-exception v3

    .line 150
    :goto_63
    if-eqz v0, :cond_6f

    .line 151
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 152
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    :cond_6e
    const/4 v0, 0x0

    .line 156
    :cond_6f
    throw v3

    .line 149
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_70
    move-exception v3

    move-object v0, v1

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_63

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_73
    move-object v0, v1

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_3a

    .end local v2    # "oom":Ljava/lang/OutOfMemoryError;
    :cond_75
    move-object v1, v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_37
.end method
