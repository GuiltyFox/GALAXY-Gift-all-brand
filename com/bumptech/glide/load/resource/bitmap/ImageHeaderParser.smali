.class public Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# static fields
.field private static final a:[B

.field private static final b:[I


# instance fields
.field private final c:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 62
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->b:[I

    .line 67
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 69
    :try_start_c
    const-string/jumbo v1, "Exif\u0000\u0000"

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_15} :catch_19

    move-result-object v0

    .line 73
    :goto_16
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->a:[B

    .line 74
    return-void

    .line 70
    :catch_19
    move-exception v1

    goto :goto_16

    .line 62
    nop

    :array_1c
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->c:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    .line 78
    return-void
.end method

.method private static a(II)I
    .registers 4

    .prologue
    .line 291
    add-int/lit8 v0, p0, 0x2

    mul-int/lit8 v1, p1, 0xc

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I
    .registers 12

    .prologue
    const/4 v10, 0x3

    .line 203
    const-string/jumbo v0, "Exif\u0000\u0000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 205
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->b(I)S

    move-result v0

    .line 207
    const/16 v2, 0x4d4d

    if-ne v0, v2, :cond_32

    .line 208
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 218
    :goto_12
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->a(Ljava/nio/ByteOrder;)V

    .line 220
    add-int/lit8 v0, v1, 0x4

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->a(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 221
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->b(I)S

    move-result v2

    .line 224
    const/4 v0, 0x0

    :goto_21
    if-ge v0, v2, :cond_18a

    .line 225
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->a(II)I

    move-result v3

    .line 227
    invoke-virtual {p0, v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->b(I)S

    move-result v4

    .line 230
    const/16 v5, 0x112

    if-eq v4, v5, :cond_5f

    .line 224
    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 209
    :cond_32
    const/16 v2, 0x4949

    if-ne v0, v2, :cond_39

    .line 210
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_12

    .line 212
    :cond_39
    const-string/jumbo v2, "ImageHeaderParser"

    invoke-static {v2, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 213
    const-string/jumbo v2, "ImageHeaderParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown endianness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_5c
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_12

    .line 234
    :cond_5f
    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->b(I)S

    move-result v5

    .line 237
    const/4 v6, 0x1

    if-lt v5, v6, :cond_6c

    const/16 v6, 0xc

    if-le v5, v6, :cond_90

    .line 238
    :cond_6c
    const-string/jumbo v3, "ImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 239
    const-string/jumbo v3, "ImageHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Got invalid format code="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 244
    :cond_90
    add-int/lit8 v6, v3, 0x4

    invoke-virtual {p0, v6}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->a(I)I

    move-result v6

    .line 246
    if-gez v6, :cond_ab

    .line 247
    const-string/jumbo v3, "ImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 248
    const-string/jumbo v3, "ImageHeaderParser"

    const-string/jumbo v4, "Negative tiff component count"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 253
    :cond_ab
    const-string/jumbo v7, "ImageHeaderParser"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_ef

    .line 254
    const-string/jumbo v7, "ImageHeaderParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Got tagIndex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " tagType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " formatCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " componentCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_ef
    sget-object v7, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->b:[I

    aget v7, v7, v5

    add-int/2addr v6, v7

    .line 260
    const/4 v7, 0x4

    if-le v6, v7, :cond_11c

    .line 261
    const-string/jumbo v3, "ImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 262
    const-string/jumbo v3, "ImageHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Got byte count > 4, not orientation, continuing, formatCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    .line 267
    :cond_11c
    add-int/lit8 v3, v3, 0x8

    .line 269
    if-ltz v3, :cond_126

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->a()I

    move-result v5

    if-le v3, v5, :cond_156

    .line 270
    :cond_126
    const-string/jumbo v5, "ImageHeaderParser"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 271
    const-string/jumbo v5, "ImageHeaderParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Illegal tagValueOffset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " tagType="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    .line 276
    :cond_156
    if-ltz v6, :cond_160

    add-int v5, v3, v6

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->a()I

    move-result v6

    if-le v5, v6, :cond_185

    .line 277
    :cond_160
    const-string/jumbo v3, "ImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 278
    const-string/jumbo v3, "ImageHeaderParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Illegal number of bytes for TI tag data tagType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    .line 284
    :cond_185
    invoke-virtual {p0, v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->b(I)S

    move-result v0

    .line 287
    :goto_189
    return v0

    :cond_18a
    const/4 v0, -0x1

    goto :goto_189
.end method

.method private static a(I)Z
    .registers 3

    .prologue
    const v1, 0xffd8

    .line 295
    and-int v0, p0, v1

    if-eq v0, v1, :cond_f

    const/16 v0, 0x4d4d

    if-eq p0, v0, :cond_f

    const/16 v0, 0x4949

    if-ne p0, v0, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private d()[B
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x0

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->c:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->b()S

    move-result v1

    .line 152
    const/16 v2, 0xff

    if-eq v1, v2, :cond_30

    .line 153
    const-string/jumbo v2, "ImageHeaderParser"

    invoke-static {v2, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 154
    const-string/jumbo v2, "ImageHeaderParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown segmentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_2f
    :goto_2f
    return-object v0

    .line 159
    :cond_30
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->c:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->b()S

    move-result v2

    .line 161
    const/16 v1, 0xda

    if-eq v2, v1, :cond_2f

    .line 163
    const/16 v1, 0xd9

    if-ne v2, v1, :cond_51

    .line 164
    const-string/jumbo v1, "ImageHeaderParser"

    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 165
    const-string/jumbo v1, "ImageHeaderParser"

    const-string/jumbo v2, "Found MARKER_EOI in exif segment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 171
    :cond_51
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->c:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->a()I

    move-result v1

    add-int/lit8 v3, v1, -0x2

    .line 173
    const/16 v1, 0xe1

    if-eq v2, v1, :cond_a3

    .line 174
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->c:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->a(J)J

    move-result-wide v4

    .line 175
    int-to-long v6, v3

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    .line 176
    const-string/jumbo v1, "ImageHeaderParser"

    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 177
    const-string/jumbo v1, "ImageHeaderParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to skip enough data, type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ", wanted to skip: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", but actually skipped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 185
    :cond_a3
    new-array v1, v3, [B

    .line 186
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->c:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v4, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->a([B)I

    move-result v4

    .line 187
    if-eq v4, v3, :cond_e8

    .line 188
    const-string/jumbo v1, "ImageHeaderParser"

    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 189
    const-string/jumbo v1, "ImageHeaderParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to read segment data, type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", length: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", actually read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    :cond_e8
    move-object v0, v1

    .line 196
    goto/16 :goto_2f
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->b()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v0

    return v0
.end method

.method public b()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    .registers 5

    .prologue
    .line 87
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->c:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->a()I

    move-result v0

    .line 90
    const v1, 0xffd8

    if-ne v0, v1, :cond_e

    .line 91
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 109
    :goto_d
    return-object v0

    .line 94
    :cond_e
    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->c:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->a()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 96
    const v1, -0x76afb1b9

    if-ne v0, v1, :cond_39

    .line 98
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->c:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    const-wide/16 v2, 0x15

    invoke-virtual {v0, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->a(J)J

    .line 99
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->c:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->c()I

    move-result v0

    .line 101
    const/4 v1, 0x3

    if-lt v0, v1, :cond_36

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_d

    :cond_36
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_d

    .line 105
    :cond_39
    shr-int/lit8 v0, v0, 0x8

    const v1, 0x474946

    if-ne v0, v1, :cond_43

    .line 106
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_d

    .line 109
    :cond_43
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_d
.end method

.method public c()I
    .registers 8

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->c:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->a()I

    move-result v0

    .line 122
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->a(I)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v2

    .line 141
    :goto_f
    return v0

    .line 125
    :cond_10
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->d()[B

    move-result-object v4

    .line 126
    if-eqz v4, :cond_39

    array-length v0, v4

    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->a:[B

    array-length v3, v3

    if-le v0, v3, :cond_39

    const/4 v3, 0x1

    .line 129
    :goto_1d
    if-eqz v3, :cond_40

    move v0, v1

    .line 130
    :goto_20
    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->a:[B

    array-length v5, v5

    if-ge v0, v5, :cond_40

    .line 131
    aget-byte v5, v4, v0

    sget-object v6, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->a:[B

    aget-byte v6, v6, v0

    if-eq v5, v6, :cond_3b

    .line 138
    :goto_2d
    if-eqz v1, :cond_3e

    .line 139
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;

    invoke-direct {v0, v4}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;-><init>([B)V

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->a(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I

    move-result v0

    goto :goto_f

    :cond_39
    move v3, v1

    .line 126
    goto :goto_1d

    .line 130
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3e
    move v0, v2

    .line 141
    goto :goto_f

    :cond_40
    move v1, v3

    goto :goto_2d
.end method
