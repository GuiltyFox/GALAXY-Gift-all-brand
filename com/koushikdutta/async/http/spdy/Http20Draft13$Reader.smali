.class final Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;
.super Ljava/lang/Object;
.source "Http20Draft13.java"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/FrameReader;


# instance fields
.field final a:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

.field b:I

.field c:I

.field d:B

.field e:B

.field f:S

.field g:I

.field h:B

.field i:I

.field j:I

.field private final k:Lcom/koushikdutta/async/DataEmitter;

.field private final l:Z

.field private final m:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

.field private final n:Lcom/koushikdutta/async/DataEmitterReader;

.field private final o:Lcom/koushikdutta/async/callback/DataCallback;

.field private final p:Lcom/koushikdutta/async/callback/DataCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;IZ)V
    .registers 6

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;-><init>(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->o:Lcom/koushikdutta/async/callback/DataCallback;

    .line 143
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;-><init>(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->p:Lcom/koushikdutta/async/callback/DataCallback;

    .line 103
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->k:Lcom/koushikdutta/async/DataEmitter;

    .line 104
    iput-boolean p4, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->l:Z

    .line 105
    new-instance v0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-direct {v0, p3}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;-><init>(I)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->a:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    .line 106
    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->m:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    .line 107
    new-instance v0, Lcom/koushikdutta/async/DataEmitterReader;

    invoke-direct {v0}, Lcom/koushikdutta/async/DataEmitterReader;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->n:Lcom/koushikdutta/async/DataEmitterReader;

    .line 109
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->a()V

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)Lcom/koushikdutta/async/callback/DataCallback;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->p:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->k:Lcom/koushikdutta/async/DataEmitter;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->n:Lcom/koushikdutta/async/DataEmitterReader;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 114
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->n:Lcom/koushikdutta/async/DataEmitterReader;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->o:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/DataEmitterReader;->a(ILcom/koushikdutta/async/callback/DataCallback;)V

    .line 115
    return-void
.end method

.method private a(Lcom/koushikdutta/async/ByteBufferList;I)V
    .registers 7

    .prologue
    .line 291
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v1

    .line 292
    const/high16 v0, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    .line 293
    :goto_a
    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 294
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->i()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    .line 295
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->m:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v3, p2, v1, v2, v0}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(IIIZ)V

    .line 296
    return-void

    .line 292
    :cond_1c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private a(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 216
    if-nez p4, :cond_d

    const-string/jumbo v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 219
    :cond_d
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v3, v0

    .line 221
    :cond_18
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_22

    .line 222
    invoke-direct {p0, p1, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->a(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 223
    add-int/lit8 v0, p2, -0x5

    int-to-short p2, v0

    .line 226
    :cond_22
    invoke-static {p2, p3, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(SBS)S

    move-result v2

    .line 228
    iget-byte v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->e:B

    iput-byte v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->h:B

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    .line 229
    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->a(Lcom/koushikdutta/async/ByteBufferList;SSBI)V

    .line 232
    return-void
.end method

.method private a(Lcom/koushikdutta/async/ByteBufferList;SSBI)V
    .registers 13

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 244
    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/ByteBufferList;->b(I)Lcom/koushikdutta/async/ByteBufferList;

    .line 245
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->a:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 246
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->a:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a()V

    .line 247
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->a:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->b()V

    .line 250
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_4e

    .line 251
    iget-byte v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->h:B

    if-ne v0, v2, :cond_32

    .line 252
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    .line 253
    :goto_20
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->m:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    const/4 v4, -0x1

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->a:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->c()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/koushikdutta/async/http/spdy/HeadersMode;->d:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    move v3, p5

    invoke-interface/range {v0 .. v6}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    .line 265
    :goto_2f
    return-void

    :cond_30
    move v2, v1

    .line 252
    goto :goto_20

    .line 255
    :cond_32
    iget-byte v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->h:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_45

    .line 256
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->m:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    iget v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->j:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->a:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p5, v1, v2}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(IILjava/util/List;)V

    goto :goto_2f

    .line 259
    :cond_45
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "unknown header type"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 263
    :cond_4e
    iput p5, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->i:I

    goto :goto_2f
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 5

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->c(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)Lcom/koushikdutta/async/DataEmitterReader;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->n:Lcom/koushikdutta/async/DataEmitterReader;

    return-object v0
.end method

.method private b(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 11

    .prologue
    .line 236
    iget v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->i:I

    if-eq p4, v0, :cond_d

    .line 237
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "continuation stream id mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_d
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->a(Lcom/koushikdutta/async/ByteBufferList;SSBI)V

    .line 239
    return-void
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 5

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->a(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method

.method private c(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 270
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_17

    move v2, v1

    .line 271
    :goto_7
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_19

    .line 272
    :goto_b
    if-eqz v1, :cond_1b

    .line 273
    const-string/jumbo v1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_17
    move v2, v0

    .line 270
    goto :goto_7

    :cond_19
    move v1, v0

    .line 271
    goto :goto_b

    .line 276
    :cond_1b
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_26

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 277
    :cond_26
    invoke-static {p2, p3, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(SBS)S

    .line 279
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->m:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v1, v2, p4, p1}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(ZILcom/koushikdutta/async/ByteBufferList;)V

    .line 280
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->b(I)Lcom/koushikdutta/async/ByteBufferList;

    .line 281
    return-void
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->a()V

    return-void
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 5

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->d(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method

.method static synthetic d(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->m:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    return-object v0
.end method

.method private d(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 285
    const/4 v0, 0x5

    if-eq p2, v0, :cond_15

    const-string/jumbo v0, "TYPE_PRIORITY length: %d != 5"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 286
    :cond_15
    if-nez p4, :cond_21

    const-string/jumbo v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 287
    :cond_21
    invoke-direct {p0, p1, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->a(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 288
    return-void
.end method

.method static synthetic d(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 5

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->e(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method

.method private e(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 300
    const/4 v0, 0x4

    if-eq p2, v0, :cond_15

    const-string/jumbo v0, "TYPE_RST_STREAM length: %d != 4"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 301
    :cond_15
    if-nez p4, :cond_21

    const-string/jumbo v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 302
    :cond_21
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v0

    .line 303
    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->b(I)Lcom/koushikdutta/async/http/spdy/ErrorCode;

    move-result-object v1

    .line 304
    if-nez v1, :cond_3b

    .line 305
    const-string/jumbo v1, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 307
    :cond_3b
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->m:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v0, p4, v1}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V

    .line 308
    return-void
.end method

.method static synthetic e(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 5

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->f(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method

.method private f(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 312
    if-eqz p4, :cond_e

    const-string/jumbo v0, "TYPE_SETTINGS streamId != 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 313
    :cond_e
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_24

    .line 314
    if-eqz p2, :cond_1e

    const-string/jumbo v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 315
    :cond_1e
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->m:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->b()V

    .line 353
    :cond_23
    :goto_23
    return-void

    .line 319
    :cond_24
    rem-int/lit8 v0, p2, 0x6

    if-eqz v0, :cond_38

    const-string/jumbo v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 320
    :cond_38
    new-instance v3, Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-direct {v3}, Lcom/koushikdutta/async/http/spdy/Settings;-><init>()V

    move v1, v2

    .line 321
    :goto_3e
    if-ge v1, p2, :cond_7e

    .line 322
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->h()S

    move-result v0

    .line 323
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v4

    .line 325
    packed-switch v0, :pswitch_data_94

    .line 345
    const-string/jumbo v1, "PROTOCOL_ERROR invalid settings id: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 329
    :pswitch_5b
    if-eqz v4, :cond_6a

    if-eq v4, v5, :cond_6a

    .line 330
    const-string/jumbo v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 334
    :pswitch_69
    const/4 v0, 0x4

    .line 347
    :cond_6a
    :pswitch_6a
    invoke-virtual {v3, v0, v2, v4}, Lcom/koushikdutta/async/http/spdy/Settings;->a(III)Lcom/koushikdutta/async/http/spdy/Settings;

    .line 321
    add-int/lit8 v0, v1, 0x6

    move v1, v0

    goto :goto_3e

    .line 337
    :pswitch_71
    const/4 v0, 0x7

    .line 338
    if-gez v4, :cond_6a

    .line 339
    const-string/jumbo v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 349
    :cond_7e
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->m:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v0, v2, v3}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(ZLcom/koushikdutta/async/http/spdy/Settings;)V

    .line 350
    invoke-virtual {v3}, Lcom/koushikdutta/async/http/spdy/Settings;->c()I

    move-result v0

    if-ltz v0, :cond_23

    .line 351
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->a:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/spdy/Settings;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Reader;->a(I)V

    goto :goto_23

    .line 325
    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_5b
        :pswitch_69
        :pswitch_71
        :pswitch_6a
    .end packed-switch
.end method

.method static synthetic f(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 5

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->g(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method

.method private g(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 358
    if-nez p4, :cond_d

    .line 359
    const-string/jumbo v0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 361
    :cond_d
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v3, v0

    .line 362
    :cond_18
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->j:I

    .line 363
    add-int/lit8 v0, p2, -0x4

    int-to-short v0, v0

    .line 364
    invoke-static {v0, p3, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(SBS)S

    move-result v2

    .line 365
    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->h:B

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    .line 366
    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->a(Lcom/koushikdutta/async/ByteBufferList;SSBI)V

    .line 367
    return-void
.end method

.method static synthetic g(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 5

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->h(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method

.method private h(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 371
    const/16 v2, 0x8

    if-eq p2, v2, :cond_16

    const-string/jumbo v2, "TYPE_PING length != 8: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 372
    :cond_16
    if-eqz p4, :cond_22

    const-string/jumbo v0, "TYPE_PING streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 373
    :cond_22
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v2

    .line 374
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v3

    .line 375
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_34

    .line 376
    :goto_2e
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->m:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v1, v0, v2, v3}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(ZII)V

    .line 377
    return-void

    :cond_34
    move v0, v1

    .line 375
    goto :goto_2e
.end method

.method static synthetic h(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 5

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->i(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method

.method private i(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 381
    const/16 v0, 0x8

    if-ge p2, v0, :cond_16

    const-string/jumbo v0, "TYPE_GOAWAY length < 8: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 382
    :cond_16
    if-eqz p4, :cond_22

    const-string/jumbo v0, "TYPE_GOAWAY streamId != 0"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 383
    :cond_22
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v1

    .line 384
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v0

    .line 385
    add-int/lit8 v2, p2, -0x8

    .line 386
    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->b(I)Lcom/koushikdutta/async/http/spdy/ErrorCode;

    move-result-object v3

    .line 387
    if-nez v3, :cond_42

    .line 388
    const-string/jumbo v1, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 390
    :cond_42
    sget-object v0, Lcom/koushikdutta/async/http/spdy/ByteString;->a:Lcom/koushikdutta/async/http/spdy/ByteString;

    .line 391
    if-lez v2, :cond_4e

    .line 392
    invoke-virtual {p1, v2}, Lcom/koushikdutta/async/ByteBufferList;->a(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->a([B)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    .line 394
    :cond_4e
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->m:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v2, v1, v3, v0}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(ILcom/koushikdutta/async/http/spdy/ErrorCode;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    .line 395
    return-void
.end method

.method static synthetic i(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 5

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->j(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method

.method private j(Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 399
    const/4 v0, 0x4

    if-eq p2, v0, :cond_15

    const-string/jumbo v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 400
    :cond_15
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    .line 401
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_34

    const-string/jumbo v2, "windowSizeIncrement was 0"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 402
    :cond_34
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->m:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v2, p4, v0, v1}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(IJ)V

    .line 403
    return-void
.end method

.method static synthetic j(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V
    .registers 5

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->b(Lcom/koushikdutta/async/ByteBufferList;SBI)V

    return-void
.end method
