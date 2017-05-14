.class final Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/FrameReader;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Lcom/koushikdutta/async/ByteBufferList;

.field private final h:Lcom/koushikdutta/async/http/spdy/HeaderReader;

.field private final i:Lcom/koushikdutta/async/DataEmitter;

.field private final j:Z

.field private final k:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

.field private final l:Lcom/koushikdutta/async/DataEmitterReader;

.field private final m:Lcom/koushikdutta/async/ByteBufferList;

.field private final n:Lcom/koushikdutta/async/callback/DataCallback;

.field private final o:Lcom/koushikdutta/async/callback/DataCallback;

.field private final p:Lcom/koushikdutta/async/callback/DataCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;Z)V
    .registers 5

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lcom/koushikdutta/async/http/spdy/HeaderReader;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/spdy/HeaderReader;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->h:Lcom/koushikdutta/async/http/spdy/HeaderReader;

    .line 156
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->m:Lcom/koushikdutta/async/ByteBufferList;

    .line 157
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;-><init>(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->n:Lcom/koushikdutta/async/callback/DataCallback;

    .line 185
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->g:Lcom/koushikdutta/async/ByteBufferList;

    .line 186
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;-><init>(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->o:Lcom/koushikdutta/async/callback/DataCallback;

    .line 203
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;-><init>(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->p:Lcom/koushikdutta/async/callback/DataCallback;

    .line 130
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->i:Lcom/koushikdutta/async/DataEmitter;

    .line 131
    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->k:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    .line 132
    iput-boolean p3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->j:Z

    .line 134
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$1;-><init>(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->b(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 141
    new-instance v0, Lcom/koushikdutta/async/DataEmitterReader;

    invoke-direct {v0}, Lcom/koushikdutta/async/DataEmitterReader;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->l:Lcom/koushikdutta/async/DataEmitterReader;

    .line 142
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->a()V

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/callback/DataCallback;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->o:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 4

    .prologue
    .line 354
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->i:Lcom/koushikdutta/async/DataEmitter;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->l:Lcom/koushikdutta/async/DataEmitterReader;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 147
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->l:Lcom/koushikdutta/async/DataEmitterReader;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->n:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/DataEmitterReader;->a(ILcom/koushikdutta/async/callback/DataCallback;)V

    .line 148
    return-void
.end method

.method private a(Lcom/koushikdutta/async/ByteBufferList;II)V
    .registers 11

    .prologue
    const v5, 0x7fffffff

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 269
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v2

    .line 270
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v4

    .line 271
    and-int v3, v2, v5

    .line 272
    and-int/2addr v4, v5

    .line 273
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->h()S

    .line 274
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->h:Lcom/koushikdutta/async/http/spdy/HeaderReader;

    add-int/lit8 v5, p3, -0xa

    invoke-virtual {v2, p1, v5}, Lcom/koushikdutta/async/http/spdy/HeaderReader;->a(Lcom/koushikdutta/async/ByteBufferList;I)Ljava/util/List;

    move-result-object v5

    .line 276
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2c

    move v2, v1

    .line 277
    :goto_20
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_2e

    .line 278
    :goto_24
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->k:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    sget-object v6, Lcom/koushikdutta/async/http/spdy/HeadersMode;->a:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    invoke-interface/range {v0 .. v6}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    .line 280
    return-void

    :cond_2c
    move v2, v0

    .line 276
    goto :goto_20

    :cond_2e
    move v1, v0

    .line 277
    goto :goto_24
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V
    .registers 4

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->a(Lcom/koushikdutta/async/ByteBufferList;II)V

    return-void
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/ByteBufferList;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->m:Lcom/koushikdutta/async/ByteBufferList;

    return-object v0
.end method

.method private b(Lcom/koushikdutta/async/ByteBufferList;II)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v0

    .line 284
    const v2, 0x7fffffff

    and-int v3, v0, v2

    .line 285
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->h:Lcom/koushikdutta/async/http/spdy/HeaderReader;

    add-int/lit8 v2, p3, -0x4

    invoke-virtual {v0, p1, v2}, Lcom/koushikdutta/async/http/spdy/HeaderReader;->a(Lcom/koushikdutta/async/ByteBufferList;I)Ljava/util/List;

    move-result-object v5

    .line 286
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_20

    const/4 v2, 0x1

    .line 287
    :goto_17
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->k:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    const/4 v4, -0x1

    sget-object v6, Lcom/koushikdutta/async/http/spdy/HeadersMode;->b:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    invoke-interface/range {v0 .. v6}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    .line 288
    return-void

    :cond_20
    move v2, v1

    .line 286
    goto :goto_17
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V
    .registers 4

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->b(Lcom/koushikdutta/async/ByteBufferList;II)V

    return-void
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/callback/DataCallback;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->p:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method private c(Lcom/koushikdutta/async/ByteBufferList;II)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 291
    const/16 v0, 0x8

    if-eq p3, v0, :cond_16

    const-string/jumbo v0, "TYPE_RST_STREAM length: %d != 8"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 292
    :cond_16
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 293
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v1

    .line 294
    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->a(I)Lcom/koushikdutta/async/http/spdy/ErrorCode;

    move-result-object v2

    .line 295
    if-nez v2, :cond_38

    .line 296
    const-string/jumbo v0, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 298
    :cond_38
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->k:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v1, v0, v2}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V

    .line 299
    return-void
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V
    .registers 4

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->c(Lcom/koushikdutta/async/ByteBufferList;II)V

    return-void
.end method

.method static synthetic d(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/DataEmitterReader;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->l:Lcom/koushikdutta/async/DataEmitterReader;

    return-object v0
.end method

.method private d(Lcom/koushikdutta/async/ByteBufferList;II)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 302
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v0

    .line 303
    const v2, 0x7fffffff

    and-int v3, v0, v2

    .line 304
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->h:Lcom/koushikdutta/async/http/spdy/HeaderReader;

    add-int/lit8 v2, p3, -0x4

    invoke-virtual {v0, p1, v2}, Lcom/koushikdutta/async/http/spdy/HeaderReader;->a(Lcom/koushikdutta/async/ByteBufferList;I)Ljava/util/List;

    move-result-object v5

    .line 305
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->k:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    const/4 v4, -0x1

    sget-object v6, Lcom/koushikdutta/async/http/spdy/HeadersMode;->c:Lcom/koushikdutta/async/http/spdy/HeadersMode;

    move v2, v1

    invoke-interface/range {v0 .. v6}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(ZZIILjava/util/List;Lcom/koushikdutta/async/http/spdy/HeadersMode;)V

    .line 306
    return-void
.end method

.method static synthetic d(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V
    .registers 4

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->h(Lcom/koushikdutta/async/ByteBufferList;II)V

    return-void
.end method

.method static synthetic e(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->k:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    return-object v0
.end method

.method private e(Lcom/koushikdutta/async/ByteBufferList;II)V
    .registers 12

    .prologue
    const v2, 0x7fffffff

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 309
    const/16 v0, 0x8

    if-eq p3, v0, :cond_19

    const-string/jumbo v0, "TYPE_WINDOW_UPDATE length: %d != 8"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 310
    :cond_19
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v0

    .line 311
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v1

    .line 312
    and-int/2addr v0, v2

    .line 313
    and-int/2addr v1, v2

    int-to-long v2, v1

    .line 314
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_3a

    const-string/jumbo v0, "windowSizeIncrement was 0"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 315
    :cond_3a
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->k:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v1, v0, v2, v3}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(IJ)V

    .line 316
    return-void
.end method

.method static synthetic e(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V
    .registers 4

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->f(Lcom/koushikdutta/async/ByteBufferList;II)V

    return-void
.end method

.method private f(Lcom/koushikdutta/async/ByteBufferList;II)V
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 319
    const/4 v2, 0x4

    if-eq p3, v2, :cond_15

    const-string/jumbo v2, "TYPE_PING length: %d != 4"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 320
    :cond_15
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v3

    .line 321
    iget-boolean v4, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->j:Z

    and-int/lit8 v2, v3, 0x1

    if-ne v2, v0, :cond_28

    move v2, v0

    :goto_20
    if-ne v4, v2, :cond_2a

    .line 322
    :goto_22
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->k:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v2, v0, v3, v1}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(ZII)V

    .line 323
    return-void

    :cond_28
    move v2, v1

    .line 321
    goto :goto_20

    :cond_2a
    move v0, v1

    goto :goto_22
.end method

.method static synthetic f(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V
    .registers 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->a()V

    return-void
.end method

.method static synthetic f(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V
    .registers 4

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->g(Lcom/koushikdutta/async/ByteBufferList;II)V

    return-void
.end method

.method private g(Lcom/koushikdutta/async/ByteBufferList;II)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 326
    const/16 v0, 0x8

    if-eq p3, v0, :cond_16

    const-string/jumbo v0, "TYPE_GOAWAY length: %d != 8"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 327
    :cond_16
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 328
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v1

    .line 329
    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/ErrorCode;->c(I)Lcom/koushikdutta/async/http/spdy/ErrorCode;

    move-result-object v2

    .line 330
    if-nez v2, :cond_38

    .line 331
    const-string/jumbo v0, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 333
    :cond_38
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->k:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    sget-object v3, Lcom/koushikdutta/async/http/spdy/ByteString;->a:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-interface {v1, v0, v2, v3}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(ILcom/koushikdutta/async/http/spdy/ErrorCode;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    .line 334
    return-void
.end method

.method static synthetic g(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V
    .registers 4

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->d(Lcom/koushikdutta/async/ByteBufferList;II)V

    return-void
.end method

.method private h(Lcom/koushikdutta/async/ByteBufferList;II)V
    .registers 13

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 337
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v3

    .line 338
    mul-int/lit8 v2, v3, 0x8

    add-int/lit8 v2, v2, 0x4

    if-eq p3, v2, :cond_23

    .line 339
    const-string/jumbo v2, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v4}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 341
    :cond_23
    new-instance v4, Lcom/koushikdutta/async/http/spdy/Settings;

    invoke-direct {v4}, Lcom/koushikdutta/async/http/spdy/Settings;-><init>()V

    move v2, v1

    .line 342
    :goto_29
    if-ge v2, v3, :cond_42

    .line 343
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v5

    .line 344
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v6

    .line 345
    const/high16 v7, -0x1000000

    and-int/2addr v7, v5

    ushr-int/lit8 v7, v7, 0x18

    .line 346
    const v8, 0xffffff

    and-int/2addr v5, v8

    .line 347
    invoke-virtual {v4, v5, v7, v6}, Lcom/koushikdutta/async/http/spdy/Settings;->a(III)Lcom/koushikdutta/async/http/spdy/Settings;

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 349
    :cond_42
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_4c

    .line 350
    :goto_46
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->k:Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    invoke-interface {v1, v0, v4}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(ZLcom/koushikdutta/async/http/spdy/Settings;)V

    .line 351
    return-void

    :cond_4c
    move v0, v1

    .line 349
    goto :goto_46
.end method

.method static synthetic h(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V
    .registers 4

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->e(Lcom/koushikdutta/async/ByteBufferList;II)V

    return-void
.end method
