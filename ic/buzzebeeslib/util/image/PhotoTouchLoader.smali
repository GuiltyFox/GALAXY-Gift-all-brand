.class public Lic/buzzebeeslib/util/image/PhotoTouchLoader;
.super Ljava/lang/Object;
.source "PhotoTouchLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/util/image/PhotoTouchLoader$BitmapDisplayer;,
        Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotoToLoad;,
        Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosLoader;,
        Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;
    }
.end annotation


# instance fields
.field public ProgressBarLoading:Landroid/widget/ProgressBar;

.field private gBitmapError:Landroid/graphics/Bitmap;

.field private gContext:Landroid/content/Context;

.field photoLoaderThread:Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosLoader;

.field photosQueue:Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;

.field private stub_id:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "image_stub"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->ProgressBarLoading:Landroid/widget/ProgressBar;

    .line 55
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_loading_white:I

    iput v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->stub_id:I

    .line 226
    new-instance v0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;-><init>(Lic/buzzebeeslib/util/image/PhotoTouchLoader;)V

    iput-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->photosQueue:Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;

    .line 312
    new-instance v0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosLoader;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosLoader;-><init>(Lic/buzzebeeslib/util/image/PhotoTouchLoader;)V

    iput-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->photoLoaderThread:Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosLoader;

    .line 37
    iput-object p1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->gContext:Landroid/content/Context;

    .line 38
    iput p2, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->stub_id:I

    .line 41
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->photoLoaderThread:Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosLoader;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosLoader;->setPriority(I)V

    .line 51
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_pixel100:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->gBitmapError:Landroid/graphics/Bitmap;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/util/image/PhotoTouchLoader;)I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->stub_id:I

    return v0
.end method

.method private decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 13
    .param p1, "f"    # Ljava/io/File;

    .prologue
    const/16 v10, 0x200

    const/4 v7, 0x0

    .line 156
    :try_start_3
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 157
    .local v3, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 158
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v9, 0x0

    invoke-static {v8, v9, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 161
    const/16 v0, 0x200

    .line 162
    .local v0, "REQUIRED_SIZE":I
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v6, "width_tmp":I
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 163
    .local v2, "height_tmp":I
    const/4 v5, 0x1

    .line 165
    .local v5, "scale":I
    :goto_1b
    div-int/lit8 v8, v6, 0x2

    if-lt v8, v10, :cond_23

    div-int/lit8 v8, v2, 0x2

    if-ge v8, v10, :cond_35

    .line 173
    :cond_23
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 174
    .local v4, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_2a} :catch_74

    .line 184
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

    .line 206
    .end local v0    # "REQUIRED_SIZE":I
    .end local v2    # "height_tmp":I
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "scale":I
    .end local v6    # "width_tmp":I
    :goto_34
    return-object v7

    .line 167
    .restart local v0    # "REQUIRED_SIZE":I
    .restart local v2    # "height_tmp":I
    .restart local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "scale":I
    .restart local v6    # "width_tmp":I
    :cond_35
    :try_start_35
    div-int/lit8 v6, v6, 0x2

    .line 168
    div-int/lit8 v2, v2, 0x2

    .line 169
    add-int/lit8 v5, v5, 0x1

    .line 164
    goto :goto_1b

    .line 190
    .restart local v4    # "o2":Landroid/graphics/BitmapFactory$Options;
    :catch_3c
    move-exception v1

    .line 191
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

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v7, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->gBitmapError:Landroid/graphics/Bitmap;

    goto :goto_34

    .line 194
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_58
    move-exception v1

    .line 195
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

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v7, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->gBitmapError:Landroid/graphics/Bitmap;
    :try_end_73
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_73} :catch_74

    goto :goto_34

    .line 199
    .end local v0    # "REQUIRED_SIZE":I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "height_tmp":I
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "scale":I
    .end local v6    # "width_tmp":I
    :catch_74
    move-exception v1

    .line 200
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

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method

.method private queuePhoto(Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageViewTouch"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .prologue
    .line 89
    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->photosQueue:Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;

    invoke-virtual {v1, p2}, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->Clean(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V

    .line 90
    new-instance v0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotoToLoad;

    invoke-direct {v0, p0, p1, p2}, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotoToLoad;-><init>(Lic/buzzebeeslib/util/image/PhotoTouchLoader;Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V

    .line 91
    .local v0, "p":Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotoToLoad;
    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->photosQueue:Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v1}, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->access$0(Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v2

    monitor-enter v2

    .line 92
    :try_start_11
    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->photosQueue:Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v1}, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->access$0(Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->photosQueue:Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v1}, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->access$0(Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 91
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_34

    .line 97
    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->photoLoaderThread:Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosLoader;

    invoke-virtual {v1}, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosLoader;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_33

    .line 98
    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->photoLoaderThread:Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosLoader;

    invoke-virtual {v1}, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosLoader;->start()V

    .line 99
    :cond_33
    return-void

    .line 91
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
    .line 103
    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->photosQueue:Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;

    invoke-virtual {v1, p2}, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->Clean(Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V

    .line 104
    new-instance v0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotoToLoad;

    invoke-direct {v0, p0, p1, p2}, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotoToLoad;-><init>(Lic/buzzebeeslib/util/image/PhotoTouchLoader;Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V

    .line 105
    .local v0, "p":Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotoToLoad;
    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->photosQueue:Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v1}, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->access$0(Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v2

    monitor-enter v2

    .line 106
    :try_start_11
    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->photosQueue:Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v1}, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->access$0(Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->photosQueue:Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;

    # getter for: Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v1}, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->access$0(Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 105
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_34

    .line 111
    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->photoLoaderThread:Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosLoader;

    invoke-virtual {v1}, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosLoader;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_33

    .line 112
    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->photoLoaderThread:Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosLoader;

    invoke-virtual {v1}, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosLoader;->start()V

    .line 113
    :cond_33
    return-void

    .line 105
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
    .line 68
    invoke-direct {p0, p1, p2}, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->queuePhoto(Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V

    .line 69
    iget v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->stub_id:I

    invoke-virtual {p2, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageResource(I)V

    .line 70
    return-void
.end method

.method public DisplayImage(Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageViewTouch"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->queuePhoto(Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V

    .line 84
    iget v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->stub_id:I

    invoke-virtual {p2, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;->setImageResource(I)V

    .line 85
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 128
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_36

    move-result-object v2

    .line 136
    .local v2, "is":Ljava/io/InputStream;
    :try_start_9
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 137
    .local v3, "o2":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 138
    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 139
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_1a

    move-result-object v4

    .line 148
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "o2":Landroid/graphics/BitmapFactory$Options;
    :goto_19
    return-object v4

    .line 140
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_1a
    move-exception v0

    .line 141
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

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v4, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->gBitmapError:Landroid/graphics/Bitmap;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_35} :catch_36

    goto :goto_19

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_36
    move-exception v1

    .line 147
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

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->gBitmapError:Landroid/graphics/Bitmap;

    goto :goto_19
.end method

.method public stopThread()V
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader;->photoLoaderThread:Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosLoader;

    invoke-virtual {v0}, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosLoader;->interrupt()V

    .line 230
    return-void
.end method
