.class public Lcom/koushikdutta/ion/bitmap/IonBitmapCache;
.super Ljava/lang/Object;
.source "IonBitmapCache.java"


# static fields
.field static final synthetic g:Z


# instance fields
.field a:Landroid/content/res/Resources;

.field b:Landroid/util/DisplayMetrics;

.field c:Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

.field d:Lcom/koushikdutta/ion/Ion;

.field e:J

.field f:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->g:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/koushikdutta/ion/Ion;)V
    .registers 7

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->e:J

    .line 67
    const-wide v0, 0x3fc2492492492492L    # 0.14285714285714285

    iput-wide v0, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->f:D

    .line 49
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Ion;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 50
    iput-object p1, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->d:Lcom/koushikdutta/ion/Ion;

    .line 51
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->b:Landroid/util/DisplayMetrics;

    .line 52
    const-string/jumbo v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->b:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 54
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 55
    new-instance v2, Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->b:Landroid/util/DisplayMetrics;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v2, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a:Landroid/content/res/Resources;

    .line 56
    new-instance v0, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

    invoke-static {v1}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;-><init>(I)V

    iput-object v0, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->c:Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

    .line 57
    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 266
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    return v0
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 206
    sget-boolean v0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->g:Z

    if-nez v0, :cond_19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_19

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 209
    :cond_19
    const/4 v0, 0x0

    .line 211
    :try_start_1a
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 212
    const v1, 0xc350

    new-array v1, v1, [B

    .line 213
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 214
    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Lcom/koushikdutta/ion/bitmap/Exif;->a([BII)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2b} :catch_3d

    move-result v1

    .line 219
    :goto_2c
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 221
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 222
    invoke-static {v0, v1}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 216
    :catch_3d
    move-exception v1

    move v1, v2

    .line 217
    goto :goto_2c
.end method

.method private static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 178
    if-nez p0, :cond_5

    .line 179
    const/4 p0, 0x0

    .line 185
    :cond_4
    :goto_4
    return-object p0

    .line 180
    :cond_5
    if-eqz p1, :cond_4

    .line 183
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 184
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 185
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_4
.end method

.method public static a(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 246
    sget-boolean v0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->g:Z

    if-nez v0, :cond_19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_19

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 249
    :cond_19
    const/4 v1, 0x0

    .line 251
    :try_start_1a
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_42

    .line 252
    const v1, 0xc350

    :try_start_22
    new-array v1, v1, [B

    .line 253
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 254
    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Lcom/koushikdutta/ion/bitmap/Exif;->a([BII)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_46

    move-result v1

    .line 259
    :goto_2d
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 261
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 262
    invoke-static {v0, v1}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 256
    :catch_42
    move-exception v0

    move-object v0, v1

    :goto_44
    move v1, v2

    .line 257
    goto :goto_2d

    .line 256
    :catch_46
    move-exception v1

    goto :goto_44
.end method

.method public static a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    const v3, 0xc350

    const/4 v0, 0x0

    .line 226
    sget-boolean v1, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->g:Z

    if-nez v1, :cond_1c

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 229
    :cond_1c
    new-instance v1, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;

    invoke-direct {v1, p0}, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 230
    invoke-virtual {v1, v3}, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->mark(I)V

    .line 232
    const v2, 0xc350

    :try_start_27
    new-array v2, v2, [B

    .line 233
    invoke-virtual {v1, v2}, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->read([B)I

    move-result v3

    .line 234
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/koushikdutta/ion/bitmap/Exif;->a([BII)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_31} :catch_3f

    move-result v0

    .line 239
    :goto_32
    invoke-virtual {v1}, Lcom/koushikdutta/ion/bitmap/MarkableInputStream;->reset()V

    .line 241
    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 242
    invoke-static {v1, v0}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 236
    :catch_3f
    move-exception v2

    goto :goto_32
.end method

.method public static a([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    .line 189
    sget-boolean v0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->g:Z

    if-nez v0, :cond_18

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 191
    :cond_18
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    if-nez v0, :cond_20

    .line 193
    const/4 v0, 0x0

    .line 195
    :goto_1f
    return-object v0

    .line 194
    :cond_20
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/ion/bitmap/Exif;->a([BII)I

    move-result v1

    .line 195
    invoke-static {v0, v1}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1f
.end method

.method private a(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;
    .registers 7

    .prologue
    .line 137
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ltz v0, :cond_8

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gez v0, :cond_12

    .line 138
    :cond_8
    new-instance v0, Lcom/koushikdutta/ion/bitmap/BitmapDecodeException;

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/ion/bitmap/BitmapDecodeException;-><init>(II)V

    throw v0

    .line 139
    :cond_12
    invoke-direct {p0, p2, p3}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(II)Landroid/graphics/Point;

    move-result-object v0

    .line 140
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 141
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 142
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 143
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 144
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 145
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 146
    return-object v1
.end method

.method private a(II)Landroid/graphics/Point;
    .registers 6

    .prologue
    const v0, 0x7fffffff

    .line 123
    .line 125
    if-nez p1, :cond_20

    .line 126
    iget-object v1, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->b:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 127
    :goto_9
    if-gtz v1, :cond_1e

    move v2, v0

    .line 129
    :goto_c
    if-nez p2, :cond_1c

    .line 130
    iget-object v1, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->b:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 131
    :goto_12
    if-gtz v1, :cond_1a

    .line 133
    :goto_14
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1

    :cond_1a
    move v0, v1

    goto :goto_14

    :cond_1c
    move v1, p2

    goto :goto_12

    :cond_1e
    move v2, v1

    goto :goto_c

    :cond_20
    move v1, p1

    goto :goto_9
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;III)Landroid/graphics/BitmapFactory$Options;
    .registers 7

    .prologue
    .line 164
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 165
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 166
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 167
    invoke-direct {p0, v0, p3, p4}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/File;II)Landroid/graphics/BitmapFactory$Options;
    .registers 6

    .prologue
    .line 150
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 152
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 153
    invoke-direct {p0, v0, p2, p3}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;II)Landroid/graphics/BitmapFactory$Options;
    .registers 6

    .prologue
    .line 171
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 173
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 174
    invoke-direct {p0, v0, p2, p3}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method public a([BIIII)Landroid/graphics/BitmapFactory$Options;
    .registers 8

    .prologue
    .line 157
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 159
    invoke-static {p1, p2, p3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 160
    invoke-direct {p0, v0, p4, p5}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    .registers 8

    .prologue
    .line 77
    sget-boolean v0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->g:Z

    if-nez v0, :cond_18

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_18
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->d:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/Ion;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->a(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->f:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 79
    int-to-long v2, v0

    iget-object v1, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->c:Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->a()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_38

    .line 80
    iget-object v1, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->c:Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->a(J)V

    .line 81
    :cond_38
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->c:Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

    iget-object v1, p1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public b(Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    .registers 4

    .prologue
    .line 85
    sget-boolean v0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->g:Z

    if-nez v0, :cond_18

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 86
    :cond_18
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;->c:Lcom/koushikdutta/ion/bitmap/LruBitmapCache;

    iget-object v1, p1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->a(Ljava/lang/String;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    .line 87
    return-void
.end method
