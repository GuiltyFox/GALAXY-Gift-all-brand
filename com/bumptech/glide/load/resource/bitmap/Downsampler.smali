.class public abstract Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.super Ljava/lang/Object;
.source "Downsampler.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/BitmapDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/bitmap/BitmapDecoder",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field public static final b:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field public static final c:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 29
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->d:Ljava/util/Set;

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->e:Ljava/util/Queue;

    .line 38
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->a:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 54
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->b:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 72
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$3;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$3;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->c:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(IIIII)I
    .registers 8

    .prologue
    const/high16 v0, -0x80000000

    .line 184
    if-ne p5, v0, :cond_5

    move p5, p3

    .line 185
    :cond_5
    if-ne p4, v0, :cond_8

    move p4, p2

    .line 188
    :cond_8
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_10

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1d

    .line 192
    :cond_10
    invoke-virtual {p0, p3, p2, p4, p5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->a(IIII)I

    move-result v0

    .line 201
    :goto_14
    if-nez v0, :cond_22

    const/4 v0, 0x0

    .line 204
    :goto_17
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 194
    :cond_1d
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->a(IIII)I

    move-result v0

    goto :goto_14

    .line 201
    :cond_22
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    goto :goto_17
.end method

.method private static a(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap$Config;
    .registers 8

    .prologue
    const/4 v5, 0x5

    .line 254
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->a:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq p1, v0, :cond_f

    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->b:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq p1, v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_12

    .line 256
    :cond_f
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 278
    :goto_11
    return-object v0

    .line 259
    :cond_12
    const/4 v1, 0x0

    .line 261
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 263
    :try_start_18
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->a()Z
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_20} :catch_3d
    .catchall {:try_start_18 .. :try_end_20} :catchall_7c

    move-result v0

    .line 270
    :try_start_21
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_29

    .line 278
    :cond_24
    :goto_24
    if-eqz v0, :cond_95

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_11

    .line 271
    :catch_29
    move-exception v1

    .line 272
    const-string/jumbo v2, "Downsampler"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 273
    const-string/jumbo v2, "Downsampler"

    const-string/jumbo v3, "Cannot reset the input stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 264
    :catch_3d
    move-exception v0

    .line 265
    :try_start_3e
    const-string/jumbo v2, "Downsampler"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 266
    const-string/jumbo v2, "Downsampler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot determine whether the image has alpha or not from header for format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_3e .. :try_end_62} :catchall_7c

    .line 270
    :cond_62
    :try_start_62
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_67

    move v0, v1

    .line 275
    goto :goto_24

    .line 271
    :catch_67
    move-exception v0

    .line 272
    const-string/jumbo v2, "Downsampler"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 273
    const-string/jumbo v2, "Downsampler"

    const-string/jumbo v3, "Cannot reset the input stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7a
    move v0, v1

    .line 276
    goto :goto_24

    .line 269
    :catchall_7c
    move-exception v0

    .line 270
    :try_start_7d
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    .line 275
    :cond_80
    :goto_80
    throw v0

    .line 271
    :catch_81
    move-exception v1

    .line 272
    const-string/jumbo v2, "Downsampler"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 273
    const-string/jumbo v2, "Downsampler"

    const-string/jumbo v3, "Cannot reset the input stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_80

    .line 278
    :cond_95
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_11
.end method

.method private a(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IIILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .registers 15

    .prologue
    .line 211
    invoke-static {p1, p8}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->a(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 212
    iput p7, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 213
    iput-object v0, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 214
    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    const/16 v1, 0x13

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_30

    :cond_13
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->a(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 215
    int-to-double v2, p5

    int-to-double v4, p7

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 216
    int-to-double v2, p6

    int-to-double v4, p7

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 218
    invoke-interface {p4, v1, v2, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->a(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V

    .line 220
    :cond_30
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->b(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;)V
    .registers 3

    .prologue
    .line 367
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->b(Landroid/graphics/BitmapFactory$Options;)V

    .line 368
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->e:Ljava/util/Queue;

    monitor-enter v1

    .line 369
    :try_start_6
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->e:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 370
    monitor-exit v1

    .line 371
    return-void

    .line 370
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 347
    const/16 v0, 0xb

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_8

    .line 348
    iput-object p1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 350
    :cond_8
    return-void
.end method

.method private static a(Ljava/io/InputStream;)Z
    .registers 5

    .prologue
    const/4 v3, 0x5

    .line 225
    const/16 v0, 0x13

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_9

    .line 226
    const/4 v0, 0x1

    .line 248
    :cond_8
    :goto_8
    return v0

    .line 229
    :cond_9
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 231
    :try_start_e
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->b()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v0

    .line 234
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_35
    .catchall {:try_start_e .. :try_end_1c} :catchall_62

    move-result v0

    .line 241
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_8

    .line 242
    :catch_21
    move-exception v1

    .line 243
    const-string/jumbo v2, "Downsampler"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 244
    const-string/jumbo v2, "Downsampler"

    const-string/jumbo v3, "Cannot reset the input stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 235
    :catch_35
    move-exception v0

    .line 236
    :try_start_36
    const-string/jumbo v1, "Downsampler"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 237
    const-string/jumbo v1, "Downsampler"

    const-string/jumbo v2, "Cannot determine the image type from header"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_62

    .line 241
    :cond_49
    :try_start_49
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4e

    .line 248
    :cond_4c
    :goto_4c
    const/4 v0, 0x0

    goto :goto_8

    .line 242
    :catch_4e
    move-exception v0

    .line 243
    const-string/jumbo v1, "Downsampler"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 244
    const-string/jumbo v1, "Downsampler"

    const-string/jumbo v2, "Cannot reset the input stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    .line 240
    :catchall_62
    move-exception v0

    .line 241
    :try_start_63
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    .line 246
    :cond_66
    :goto_66
    throw v0

    .line 242
    :catch_67
    move-exception v1

    .line 243
    const-string/jumbo v2, "Downsampler"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 244
    const-string/jumbo v2, "Downsampler"

    const-string/jumbo v3, "Cannot reset the input stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66
.end method

.method private static b(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    .line 315
    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_16

    .line 321
    const/high16 v0, 0x500000

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->mark(I)V

    .line 329
    :goto_9
    const/4 v0, 0x0

    invoke-static {p0, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 332
    :try_start_e
    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_15

    .line 333
    invoke-virtual {p0}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->reset()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_1a

    .line 342
    :cond_15
    :goto_15
    return-object v1

    .line 326
    :cond_16
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a()V

    goto :goto_9

    .line 335
    :catch_1a
    move-exception v0

    .line 336
    const-string/jumbo v2, "Downsampler"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 337
    const-string/jumbo v2, "Downsampler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception loading inDecodeBounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " sample="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private static declared-synchronized b()Landroid/graphics/BitmapFactory$Options;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 355
    const-class v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->e:Ljava/util/Queue;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1e

    .line 356
    :try_start_6
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapFactory$Options;

    .line 357
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_1b

    .line 358
    if-nez v0, :cond_19

    .line 359
    :try_start_11
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 360
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->b(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    .line 363
    :cond_19
    monitor-exit v1

    return-object v0

    .line 357
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    .line 355
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 375
    iput-object v2, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 376
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 377
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 378
    iput v3, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 379
    iput-object v2, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 380
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 381
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 382
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 383
    iput-object v2, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 385
    const/16 v0, 0xb

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_1f

    .line 386
    iput-object v2, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 387
    iput-boolean v3, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 389
    :cond_1f
    return-void
.end method


# virtual methods
.method protected abstract a(IIII)I
.end method

.method public a(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .registers 26

    .prologue
    .line 108
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->a()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v16

    .line 109
    invoke-virtual/range {v16 .. v16}, Lcom/bumptech/glide/util/ByteArrayPool;->b()[B

    move-result-object v17

    .line 110
    invoke-virtual/range {v16 .. v16}, Lcom/bumptech/glide/util/ByteArrayPool;->b()[B

    move-result-object v18

    .line 111
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->b()Landroid/graphics/BitmapFactory$Options;

    move-result-object v9

    .line 114
    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;[B)V

    .line 119
    invoke-static {v8}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->a(Ljava/io/InputStream;)Lcom/bumptech/glide/util/ExceptionCatchingInputStream;

    move-result-object v19

    .line 124
    new-instance v10, Lcom/bumptech/glide/util/MarkEnforcingInputStream;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 126
    const/high16 v2, 0x500000

    :try_start_26
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->mark(I)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_72

    .line 127
    const/4 v3, 0x0

    .line 129
    :try_start_2c
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->c()I
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_36} :catch_9a
    .catchall {:try_start_2c .. :try_end_36} :catchall_ca

    move-result v2

    .line 136
    :try_start_37
    invoke-virtual/range {v19 .. v19}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_84
    .catchall {:try_start_37 .. :try_end_3a} :catchall_72

    move v15, v2

    .line 144
    :goto_3b
    :try_start_3b
    move-object/from16 v0, v17

    iput-object v0, v9, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 146
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v8, v9}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->a(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)[I

    move-result-object v2

    .line 147
    const/4 v3, 0x0

    aget v4, v2, v3

    .line 148
    const/4 v3, 0x1

    aget v5, v2, v3

    .line 150
    invoke-static {v15}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->a(I)I

    move-result v3

    move-object/from16 v2, p0

    move/from16 v6, p3

    move/from16 v7, p4

    .line 151
    invoke-direct/range {v2 .. v7}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->a(IIIII)I

    move-result v13

    move-object/from16 v6, p0

    move-object v7, v10

    move-object/from16 v10, p2

    move v11, v4

    move v12, v5

    move-object/from16 v14, p5

    .line 153
    invoke-direct/range {v6 .. v14}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->a(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IIILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 160
    invoke-virtual/range {v19 .. v19}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->a()Ljava/io/IOException;

    move-result-object v2

    .line 161
    if-eqz v2, :cond_e4

    .line 162
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_72
    .catchall {:try_start_3b .. :try_end_72} :catchall_72

    .line 176
    :catchall_72
    move-exception v2

    invoke-virtual/range {v16 .. v17}, Lcom/bumptech/glide/util/ByteArrayPool;->a([B)Z

    .line 177
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/util/ByteArrayPool;->a([B)Z

    .line 178
    invoke-virtual/range {v19 .. v19}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->b()V

    .line 179
    invoke-static {v9}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->a(Landroid/graphics/BitmapFactory$Options;)V

    throw v2

    .line 137
    :catch_84
    move-exception v3

    .line 138
    :try_start_85
    const-string/jumbo v4, "Downsampler"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 139
    const-string/jumbo v4, "Downsampler"

    const-string/jumbo v5, "Cannot reset the input stream"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_98
    .catchall {:try_start_85 .. :try_end_98} :catchall_72

    :cond_98
    move v15, v2

    .line 142
    goto :goto_3b

    .line 130
    :catch_9a
    move-exception v2

    .line 131
    :try_start_9b
    const-string/jumbo v4, "Downsampler"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 132
    const-string/jumbo v4, "Downsampler"

    const-string/jumbo v5, "Cannot determine the image orientation from header"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ae
    .catchall {:try_start_9b .. :try_end_ae} :catchall_ca

    .line 136
    :cond_ae
    :try_start_ae
    invoke-virtual/range {v19 .. v19}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b3
    .catchall {:try_start_ae .. :try_end_b1} :catchall_72

    move v15, v3

    .line 141
    goto :goto_3b

    .line 137
    :catch_b3
    move-exception v2

    .line 138
    :try_start_b4
    const-string/jumbo v4, "Downsampler"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 139
    const-string/jumbo v4, "Downsampler"

    const-string/jumbo v5, "Cannot reset the input stream"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c7
    .catchall {:try_start_b4 .. :try_end_c7} :catchall_72

    :cond_c7
    move v15, v3

    .line 142
    goto/16 :goto_3b

    .line 135
    :catchall_ca
    move-exception v2

    .line 136
    :try_start_cb
    invoke-virtual/range {v19 .. v19}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf
    .catchall {:try_start_cb .. :try_end_ce} :catchall_72

    .line 141
    :cond_ce
    :goto_ce
    :try_start_ce
    throw v2

    .line 137
    :catch_cf
    move-exception v3

    .line 138
    const-string/jumbo v4, "Downsampler"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_ce

    .line 139
    const-string/jumbo v4, "Downsampler"

    const-string/jumbo v5, "Cannot reset the input stream"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ce

    .line 165
    :cond_e4
    const/4 v2, 0x0

    .line 166
    if-eqz v3, :cond_fe

    .line 167
    move-object/from16 v0, p2

    invoke-static {v3, v0, v15}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 169
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_fe

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->a(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_fe

    .line 170
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_fe
    .catchall {:try_start_ce .. :try_end_fe} :catchall_72

    .line 176
    :cond_fe
    invoke-virtual/range {v16 .. v17}, Lcom/bumptech/glide/util/ByteArrayPool;->a([B)Z

    .line 177
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/util/ByteArrayPool;->a([B)Z

    .line 178
    invoke-virtual/range {v19 .. v19}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->b()V

    .line 179
    invoke-static {v9}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->a(Landroid/graphics/BitmapFactory$Options;)V

    return-object v2
.end method

.method public a(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)[I
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 307
    iput-boolean v3, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 308
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->b(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 309
    iput-boolean v2, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 310
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v1, v0, v2

    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v1, v0, v3

    return-object v0
.end method
