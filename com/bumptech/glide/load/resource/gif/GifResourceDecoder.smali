.class public Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
.super Ljava/lang/Object;
.source "GifResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<",
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

.field private static final b:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

.field private final e:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final f:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

.field private final g:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->a:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->b:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .registers 5

    .prologue
    .line 42
    sget-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->a:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    sget-object v1, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->b:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;)V
    .registers 6

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->c:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 50
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->f:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    .line 51
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->g:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    .line 52
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->d:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    .line 53
    return-void
.end method

.method private a(Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/gifdecoder/GifHeader;[B)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 89
    invoke-virtual {p1, p2, p3}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->a(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V

    .line 90
    invoke-virtual {p1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->a()V

    .line 91
    invoke-virtual {p1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a([BIILcom/bumptech/glide/gifdecoder/GifHeaderParser;Lcom/bumptech/glide/gifdecoder/GifDecoder;)Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
    .registers 16

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p4}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->b()Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v7

    .line 70
    invoke-virtual {v7}, Lcom/bumptech/glide/gifdecoder/GifHeader;->a()I

    move-result v1

    if-lez v1, :cond_11

    invoke-virtual {v7}, Lcom/bumptech/glide/gifdecoder/GifHeader;->b()I

    move-result v1

    if-eqz v1, :cond_12

    .line 85
    :cond_11
    :goto_11
    return-object v0

    .line 75
    :cond_12
    invoke-direct {p0, p5, v7, p1}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->a(Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/gifdecoder/GifHeader;[B)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 76
    if-eqz v9, :cond_11

    .line 80
    invoke-static {}, Lcom/bumptech/glide/load/resource/UnitTransformation;->b()Lcom/bumptech/glide/load/resource/UnitTransformation;

    move-result-object v4

    .line 82
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->g:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move v5, p2

    move v6, p3

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/graphics/Bitmap;)V

    .line 85
    new-instance v1, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V

    move-object v0, v1

    goto :goto_11
.end method

.method private static a(Ljava/io/InputStream;)[B
    .registers 5

    .prologue
    const/16 v0, 0x4000

    .line 100
    .line 101
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 104
    const/16 v0, 0x4000

    :try_start_9
    new-array v0, v0, [B

    .line 105
    :goto_b
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_26

    .line 106
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_17

    goto :goto_b

    .line 109
    :catch_17
    move-exception v0

    .line 110
    const-string/jumbo v2, "GifResourceDecoder"

    const-string/jumbo v3, "Error reading data from stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :goto_21
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 108
    :cond_26
    :try_start_26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_17

    goto :goto_21
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5

    .prologue
    .line 26
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
    .registers 10

    .prologue
    .line 57
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 58
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->d:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->a([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v4

    .line 59
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->f:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->g:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;->a(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-result-object v5

    move-object v0, p0

    move v2, p2

    move v3, p3

    .line 61
    :try_start_15
    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->a([BIILcom/bumptech/glide/gifdecoder/GifHeaderParser;Lcom/bumptech/glide/gifdecoder/GifDecoder;)Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_24

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->d:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->a(Lcom/bumptech/glide/gifdecoder/GifHeaderParser;)V

    .line 64
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->f:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    invoke-virtual {v1, v5}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;->a(Lcom/bumptech/glide/gifdecoder/GifDecoder;)V

    return-object v0

    .line 63
    :catchall_24
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->d:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->a(Lcom/bumptech/glide/gifdecoder/GifHeaderParser;)V

    .line 64
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;->f:Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;

    invoke-virtual {v1, v5}, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifDecoderPool;->a(Lcom/bumptech/glide/gifdecoder/GifDecoder;)V

    throw v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    const-string/jumbo v0, ""

    return-object v0
.end method
