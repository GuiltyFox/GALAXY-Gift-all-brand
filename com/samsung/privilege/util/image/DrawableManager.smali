.class public Lcom/samsung/privilege/util/image/DrawableManager;
.super Ljava/lang/Object;
.source "DrawableManager.java"


# static fields
.field private static webImageCacheSD:Lcom/loopj/android/image/WebImageCacheSD;


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private final drawableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "buzzebees.DrawableManager"

    iput-object v0, p0, Lcom/samsung/privilege/util/image/DrawableManager;->LOGCAT:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/util/image/DrawableManager;->drawableMap:Ljava/util/Map;

    .line 53
    sget-object v0, Lcom/samsung/privilege/util/image/DrawableManager;->webImageCacheSD:Lcom/loopj/android/image/WebImageCacheSD;

    if-nez v0, :cond_19

    .line 54
    new-instance v0, Lcom/loopj/android/image/WebImageCacheSD;

    invoke-direct {v0, p1}, Lcom/loopj/android/image/WebImageCacheSD;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/privilege/util/image/DrawableManager;->webImageCacheSD:Lcom/loopj/android/image/WebImageCacheSD;

    .line 56
    :cond_19
    return-void
.end method

.method private fetch(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 139
    .local v0, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 141
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public fetchDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 14
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 59
    iget-object v7, p0, Lcom/samsung/privilege/util/image/DrawableManager;->drawableMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 60
    iget-object v7, p0, Lcom/samsung/privilege/util/image/DrawableManager;->drawableMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;

    .line 108
    :goto_11
    return-object v7

    .line 63
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "image url:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :try_start_2c
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/loopj/android/image/WebImageCacheSD;->gRootPath:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/samsung/privilege/util/image/DrawableManager;->webImageCacheSD:Lcom/loopj/android/image/WebImageCacheSD;

    invoke-virtual {v9, p1}, Lcom/loopj/android/image/WebImageCacheSD;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "fullpath":Ljava/lang/String;
    sget-object v7, Lcom/samsung/privilege/util/image/DrawableManager;->webImageCacheSD:Lcom/loopj/android/image/WebImageCacheSD;

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v9}, Lcom/loopj/android/image/WebImageCacheSD;->GetDrawableFromSD(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 68
    .local v3, "drawableCacheSD":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_64

    .line 69
    const-string v7, "buzzebees.DrawableManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "from SD:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v3

    .line 70
    goto :goto_11

    .line 73
    :cond_64
    invoke-direct {p0, p1}, Lcom/samsung/privilege/util/image/DrawableManager;->fetch(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 74
    .local v6, "is":Ljava/io/InputStream;
    const-string v7, "src"

    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_6d
    .catch Ljava/net/MalformedURLException; {:try_start_2c .. :try_end_6d} :catch_fe
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_6d} :catch_11d

    move-result-object v2

    .line 76
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_10f

    .line 79
    const/4 v1, 0x0

    .line 82
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_71
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 83
    new-instance v7, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;

    const-string v9, ""

    invoke-direct {v7, v1, v9, v5}, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, ""

    aput-object v11, v9, v10

    invoke-virtual {v7, v9}, Lcom/loopj/android/image/WebImageCacheSD$BitmapSaveToSDTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_8b} :catch_e4
    .catch Ljava/net/MalformedURLException; {:try_start_71 .. :try_end_8b} :catch_fe
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_8b} :catch_11d

    .line 95
    :goto_8b
    :try_start_8b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "got a thumbnail drawable: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 96
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 97
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 95
    invoke-static {v7, v9}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_e1
    move-object v7, v2

    .line 102
    goto/16 :goto_11

    .line 84
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_e4
    move-exception v4

    .line 85
    .local v4, "e":Ljava/lang/Exception;
    const-string v7, "buzzebees.DrawableManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(Exception|BitmapSaveToSDTask):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fd
    .catch Ljava/net/MalformedURLException; {:try_start_8b .. :try_end_fd} :catch_fe
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_fd} :catch_11d

    goto :goto_8b

    .line 103
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "drawableCacheSD":Landroid/graphics/drawable/Drawable;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fullpath":Ljava/lang/String;
    .end local v6    # "is":Ljava/io/InputStream;
    :catch_fe
    move-exception v4

    .line 104
    .local v4, "e":Ljava/net/MalformedURLException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "fetchDrawable failed"

    invoke-static {v7, v9}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .line 105
    goto/16 :goto_11

    .line 99
    .end local v4    # "e":Ljava/net/MalformedURLException;
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "drawableCacheSD":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "fullpath":Ljava/lang/String;
    .restart local v6    # "is":Ljava/io/InputStream;
    :cond_10f
    :try_start_10f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "could not get thumbnail"

    invoke-static {v7, v9}, Lcom/samsung/privilege/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11c
    .catch Ljava/net/MalformedURLException; {:try_start_10f .. :try_end_11c} :catch_fe
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_11c} :catch_11d

    goto :goto_e1

    .line 106
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "drawableCacheSD":Landroid/graphics/drawable/Drawable;
    .end local v5    # "fullpath":Ljava/lang/String;
    .end local v6    # "is":Ljava/io/InputStream;
    :catch_11d
    move-exception v4

    .line 107
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "fetchDrawable failed"

    invoke-static {v7, v9}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .line 108
    goto/16 :goto_11
.end method

.method public fetchDrawableOnThread(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .registers 7
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "pbLoading"    # Landroid/widget/ProgressBar;

    .prologue
    .line 113
    iget-object v2, p0, Lcom/samsung/privilege/util/image/DrawableManager;->drawableMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 114
    iget-object v2, p0, Lcom/samsung/privilege/util/image/DrawableManager;->drawableMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_13
    new-instance v0, Lcom/samsung/privilege/util/image/DrawableManager$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/privilege/util/image/DrawableManager$1;-><init>(Lcom/samsung/privilege/util/image/DrawableManager;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    .line 125
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/privilege/util/image/DrawableManager$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/privilege/util/image/DrawableManager$2;-><init>(Lcom/samsung/privilege/util/image/DrawableManager;Ljava/lang/String;Landroid/os/Handler;)V

    .line 134
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 135
    return-void
.end method
