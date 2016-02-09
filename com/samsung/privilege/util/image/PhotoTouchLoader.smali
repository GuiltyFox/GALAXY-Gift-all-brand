.class public Lcom/samsung/privilege/util/image/PhotoTouchLoader;
.super Ljava/lang/Object;
.source "PhotoTouchLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/util/image/PhotoTouchLoader$BitmapDisplayer;,
        Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;,
        Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;,
        Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;
    }
.end annotation


# instance fields
.field public ProgressBarLoading:Landroid/widget/ProgressBar;

.field private gBitmapError:Landroid/graphics/Bitmap;

.field private gContext:Landroid/content/Context;

.field photoLoaderThread:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;

.field photosQueue:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;

.field private stub_id:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "image_stub"    # I

    .prologue
    const v2, 0x7f02039f

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->ProgressBarLoading:Landroid/widget/ProgressBar;

    .line 56
    iput v2, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->stub_id:I

    .line 227
    new-instance v0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;-><init>(Lcom/samsung/privilege/util/image/PhotoTouchLoader;)V

    iput-object v0, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photosQueue:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;

    .line 313
    new-instance v0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;-><init>(Lcom/samsung/privilege/util/image/PhotoTouchLoader;)V

    iput-object v0, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photoLoaderThread:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;

    .line 38
    iput-object p1, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->gContext:Landroid/content/Context;

    .line 39
    iput p2, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->stub_id:I

    .line 42
    iget-object v0, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photoLoaderThread:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;->setPriority(I)V

    .line 52
    iget-object v0, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->gBitmapError:Landroid/graphics/Bitmap;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/util/image/PhotoTouchLoader;)I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->stub_id:I

    return v0
.end method

.method private decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 13
    .param p1, "f"    # Ljava/io/File;

    .prologue
    const/16 v10, 0x200

    const/4 v7, 0x0

    .line 157
    :try_start_3
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 158
    .local v3, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 159
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v9, 0x0

    invoke-static {v8, v9, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 162
    const/16 v0, 0x200

    .line 163
    .local v0, "REQUIRED_SIZE":I
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v6, "width_tmp":I
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 164
    .local v2, "height_tmp":I
    const/4 v5, 0x1

    .line 166
    .local v5, "scale":I
    :goto_1b
    div-int/lit8 v8, v6, 0x2

    if-lt v8, v10, :cond_23

    div-int/lit8 v8, v2, 0x2

    if-ge v8, v10, :cond_35

    .line 174
    :cond_23
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 175
    .local v4, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_2a} :catch_74

    .line 185
    :try_start_2a
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v9, 0x0

    invoke-static {v8, v9, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_33
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2a .. :try_end_33} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_33} :catch_58
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_33} :catch_74

    move-result-object v7

    .line 207
    .end local v0    # "REQUIRED_SIZE":I
    .end local v2    # "height_tmp":I
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "scale":I
    .end local v6    # "width_tmp":I
    :goto_34
    return-object v7

    .line 168
    .restart local v0    # "REQUIRED_SIZE":I
    .restart local v2    # "height_tmp":I
    .restart local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "scale":I
    .restart local v6    # "width_tmp":I
    :cond_35
    :try_start_35
    div-int/lit8 v6, v6, 0x2

    .line 169
    div-int/lit8 v2, v2, 0x2

    .line 170
    add-int/lit8 v5, v5, 0x1

    .line 165
    goto :goto_1b

    .line 191
    .restart local v4    # "o2":Landroid/graphics/BitmapFactory$Options;
    :catch_3c
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v8, "MyLog"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(PhotoLoader|decodeFile|decodeStream|OutOfMemoryError):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v7, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->gBitmapError:Landroid/graphics/Bitmap;

    goto :goto_34

    .line 195
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_58
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "MyLog"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(PhotoLoader|decodeFile|decodeStream|Exception):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v7, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->gBitmapError:Landroid/graphics/Bitmap;
    :try_end_73
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_73} :catch_74

    goto :goto_34

    .line 200
    .end local v0    # "REQUIRED_SIZE":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "height_tmp":I
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "scale":I
    .end local v6    # "width_tmp":I
    :catch_74
    move-exception v1

    .line 201
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v8, "MyLog"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(PhotoLoader|decodeFile|FileNotFoundException):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method

.method private queuePhoto(Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageViewTouch"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photosQueue:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;

    invoke-virtual {v1, p2}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->Clean(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V

    .line 91
    new-instance v0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;-><init>(Lcom/samsung/privilege/util/image/PhotoTouchLoader;Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V

    .line 92
    .local v0, "p":Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;
    iget-object v1, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photosQueue:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v1}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->access$0(Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v2

    monitor-enter v2

    .line 93
    :try_start_11
    iget-object v1, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photosQueue:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v1}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->access$0(Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photosQueue:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v1}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->access$0(Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 92
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_34

    .line 98
    iget-object v1, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photoLoaderThread:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;

    invoke-virtual {v1}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_33

    .line 99
    iget-object v1, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photoLoaderThread:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;

    invoke-virtual {v1}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;->start()V

    .line 100
    :cond_33
    return-void

    .line 92
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private queuePhoto(Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageViewTouch"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photosQueue:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;

    invoke-virtual {v1, p2}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->Clean(Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V

    .line 105
    new-instance v0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;-><init>(Lcom/samsung/privilege/util/image/PhotoTouchLoader;Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V

    .line 106
    .local v0, "p":Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;
    iget-object v1, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photosQueue:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v1}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->access$0(Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v2

    monitor-enter v2

    .line 107
    :try_start_11
    iget-object v1, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photosQueue:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v1}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->access$0(Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v1, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photosQueue:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v1}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;->access$0(Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 106
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_34

    .line 112
    iget-object v1, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photoLoaderThread:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;

    invoke-virtual {v1}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_33

    .line 113
    iget-object v1, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photoLoaderThread:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;

    invoke-virtual {v1}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;->start()V

    .line 114
    :cond_33
    return-void

    .line 106
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method


# virtual methods
.method public DisplayImage(Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageViewTouch"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->queuePhoto(Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V

    .line 70
    iget v0, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->stub_id:I

    invoke-virtual {p2, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageResource(I)V

    .line 71
    return-void
.end method

.method public DisplayImage(Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageViewTouch"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->queuePhoto(Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V

    .line 85
    iget v0, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->stub_id:I

    invoke-virtual {p2, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->setImageResource(I)V

    .line 86
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 129
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_36

    move-result-object v2

    .line 137
    .local v2, "is":Ljava/io/InputStream;
    :try_start_9
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 138
    .local v3, "o2":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 139
    const/4 v4, 0x2

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 140
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_1a

    move-result-object v4

    .line 149
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "o2":Landroid/graphics/BitmapFactory$Options;
    :goto_19
    return-object v4

    .line 141
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_1a
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1b
    const-string v4, "MyLog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(PhotoLoader|getBitmap|decodeStream|Exception):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v4, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->gBitmapError:Landroid/graphics/Bitmap;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_35} :catch_36

    goto :goto_19

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_36
    move-exception v1

    .line 148
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "MyLog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(PhotoLoader|getBitmap|Exception):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v4, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->gBitmapError:Landroid/graphics/Bitmap;

    goto :goto_19
.end method

.method public stopThread()V
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader;->photoLoaderThread:Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;

    invoke-virtual {v0}, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotosLoader;->interrupt()V

    .line 231
    return-void
.end method
