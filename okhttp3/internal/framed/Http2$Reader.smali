.class final Lokhttp3/internal/framed/Http2$Reader;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lokhttp3/internal/framed/FrameReader;


# instance fields
.field final a:Lokhttp3/internal/framed/Hpack$Reader;

.field private final b:Lokio/BufferedSource;

.field private final c:Lokhttp3/internal/framed/Http2$ContinuationSource;

.field private final d:Z


# direct methods
.method constructor <init>(Lokio/BufferedSource;IZ)V
    .registers 6

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    .line 95
    iput-boolean p3, p0, Lokhttp3/internal/framed/Http2$Reader;->d:Z

    .line 96
    new-instance v0, Lokhttp3/internal/framed/Http2$ContinuationSource;

    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/Http2$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->c:Lokhttp3/internal/framed/Http2$ContinuationSource;

    .line 97
    new-instance v0, Lokhttp3/internal/framed/Hpack$Reader;

    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Reader;->c:Lokhttp3/internal/framed/Http2$ContinuationSource;

    invoke-direct {v0, p2, v1}, Lokhttp3/internal/framed/Hpack$Reader;-><init>(ILokio/Source;)V

    iput-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->a:Lokhttp3/internal/framed/Hpack$Reader;

    .line 98
    return-void
.end method

.method private a(ISBI)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->c:Lokhttp3/internal/framed/Http2$ContinuationSource;

    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Reader;->c:Lokhttp3/internal/framed/Http2$ContinuationSource;

    iput p1, v1, Lokhttp3/internal/framed/Http2$ContinuationSource;->d:I

    iput p1, v0, Lokhttp3/internal/framed/Http2$ContinuationSource;->a:I

    .line 204
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->c:Lokhttp3/internal/framed/Http2$ContinuationSource;

    iput-short p2, v0, Lokhttp3/internal/framed/Http2$ContinuationSource;->e:S

    .line 205
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->c:Lokhttp3/internal/framed/Http2$ContinuationSource;

    iput-byte p3, v0, Lokhttp3/internal/framed/Http2$ContinuationSource;->b:B

    .line 206
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->c:Lokhttp3/internal/framed/Http2$ContinuationSource;

    iput p4, v0, Lokhttp3/internal/framed/Http2$ContinuationSource;->c:I

    .line 210
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->a:Lokhttp3/internal/framed/Hpack$Reader;

    invoke-virtual {v0}, Lokhttp3/internal/framed/Hpack$Reader;->a()V

    .line 211
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->a:Lokhttp3/internal/framed/Hpack$Reader;

    invoke-virtual {v0}, Lokhttp3/internal/framed/Hpack$Reader;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Lokhttp3/internal/framed/FrameReader$Handler;I)V
    .registers 6

    .prologue
    .line 238
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->j()I

    move-result v1

    .line 239
    const/high16 v0, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    .line 240
    :goto_c
    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 241
    iget-object v2, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->h()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    .line 242
    invoke-interface {p1, p2, v1, v2, v0}, Lokhttp3/internal/framed/FrameReader$Handler;->a(IIIZ)V

    .line 243
    return-void

    .line 239
    :cond_1e
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private a(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 183
    if-nez p4, :cond_d

    const-string/jumbo v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 185
    :cond_d
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_39

    const/4 v2, 0x1

    .line 187
    :goto_12
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 189
    :goto_1f
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_28

    .line 190
    invoke-direct {p0, p1, p4}, Lokhttp3/internal/framed/Http2$Reader;->a(Lokhttp3/internal/framed/FrameReader$Handler;I)V

    .line 191
    add-int/lit8 p2, p2, -0x5

    .line 194
    :cond_28
    invoke-static {p2, p3, v0}, Lokhttp3/internal/framed/Http2;->a(IBS)I

    move-result v3

    .line 196
    invoke-direct {p0, v3, v0, p3, p4}, Lokhttp3/internal/framed/Http2$Reader;->a(ISBI)Ljava/util/List;

    move-result-object v5

    .line 198
    const/4 v4, -0x1

    sget-object v6, Lokhttp3/internal/framed/HeadersMode;->d:Lokhttp3/internal/framed/HeadersMode;

    move-object v0, p1

    move v3, p4

    invoke-interface/range {v0 .. v6}, Lokhttp3/internal/framed/FrameReader$Handler;->a(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    .line 199
    return-void

    :cond_39
    move v2, v1

    .line 185
    goto :goto_12

    :cond_3b
    move v0, v1

    .line 187
    goto :goto_1f
.end method

.method private b(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 217
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_17

    move v2, v1

    .line 218
    :goto_7
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_19

    .line 219
    :goto_b
    if-eqz v1, :cond_1b

    .line 220
    const-string/jumbo v1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_17
    move v2, v0

    .line 217
    goto :goto_7

    :cond_19
    move v1, v0

    .line 218
    goto :goto_b

    .line 223
    :cond_1b
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_28

    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 224
    :cond_28
    invoke-static {p2, p3, v0}, Lokhttp3/internal/framed/Http2;->a(IBS)I

    move-result v1

    .line 226
    iget-object v3, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {p1, v2, p4, v3, v1}, Lokhttp3/internal/framed/FrameReader$Handler;->a(ZILokio/BufferedSource;I)V

    .line 227
    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->h(J)V

    .line 228
    return-void
.end method

.method private c(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 232
    const/4 v0, 0x5

    if-eq p2, v0, :cond_15

    const-string/jumbo v0, "TYPE_PRIORITY length: %d != 5"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 233
    :cond_15
    if-nez p4, :cond_21

    const-string/jumbo v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 234
    :cond_21
    invoke-direct {p0, p1, p4}, Lokhttp3/internal/framed/Http2$Reader;->a(Lokhttp3/internal/framed/FrameReader$Handler;I)V

    .line 235
    return-void
.end method

.method private d(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 247
    const/4 v0, 0x4

    if-eq p2, v0, :cond_15

    const-string/jumbo v0, "TYPE_RST_STREAM length: %d != 4"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 248
    :cond_15
    if-nez p4, :cond_21

    const-string/jumbo v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 249
    :cond_21
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->j()I

    move-result v0

    .line 250
    invoke-static {v0}, Lokhttp3/internal/framed/ErrorCode;->b(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v1

    .line 251
    if-nez v1, :cond_3d

    .line 252
    const-string/jumbo v1, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 254
    :cond_3d
    invoke-interface {p1, p4, v1}, Lokhttp3/internal/framed/FrameReader$Handler;->a(ILokhttp3/internal/framed/ErrorCode;)V

    .line 255
    return-void
.end method

.method private e(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 259
    if-eqz p4, :cond_e

    const-string/jumbo v0, "TYPE_SETTINGS streamId != 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 260
    :cond_e
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_22

    .line 261
    if-eqz p2, :cond_1e

    const-string/jumbo v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 262
    :cond_1e
    invoke-interface {p1}, Lokhttp3/internal/framed/FrameReader$Handler;->a()V

    .line 305
    :cond_21
    :goto_21
    return-void

    .line 266
    :cond_22
    rem-int/lit8 v0, p2, 0x6

    if-eqz v0, :cond_36

    const-string/jumbo v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 267
    :cond_36
    new-instance v3, Lokhttp3/internal/framed/Settings;

    invoke-direct {v3}, Lokhttp3/internal/framed/Settings;-><init>()V

    move v1, v2

    .line 268
    :goto_3c
    if-ge v1, p2, :cond_8a

    .line 269
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->i()S

    move-result v0

    .line 270
    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->j()I

    move-result v4

    .line 272
    packed-switch v0, :pswitch_data_9e

    .line 299
    :cond_4d
    :goto_4d
    :pswitch_4d
    invoke-virtual {v3, v0, v2, v4}, Lokhttp3/internal/framed/Settings;->a(III)Lokhttp3/internal/framed/Settings;

    .line 268
    add-int/lit8 v0, v1, 0x6

    move v1, v0

    goto :goto_3c

    .line 276
    :pswitch_54
    if-eqz v4, :cond_4d

    if-eq v4, v6, :cond_4d

    .line 277
    const-string/jumbo v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 281
    :pswitch_62
    const/4 v0, 0x4

    .line 282
    goto :goto_4d

    .line 284
    :pswitch_64
    const/4 v0, 0x7

    .line 285
    if-gez v4, :cond_4d

    .line 286
    const-string/jumbo v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 290
    :pswitch_71
    const/16 v5, 0x4000

    if-lt v4, v5, :cond_7a

    const v5, 0xffffff

    if-le v4, v5, :cond_4d

    .line 291
    :cond_7a
    const-string/jumbo v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 301
    :cond_8a
    invoke-interface {p1, v2, v3}, Lokhttp3/internal/framed/FrameReader$Handler;->a(ZLokhttp3/internal/framed/Settings;)V

    .line 302
    invoke-virtual {v3}, Lokhttp3/internal/framed/Settings;->c()I

    move-result v0

    if-ltz v0, :cond_21

    .line 303
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->a:Lokhttp3/internal/framed/Hpack$Reader;

    invoke-virtual {v3}, Lokhttp3/internal/framed/Settings;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/Hpack$Reader;->a(I)V

    goto :goto_21

    .line 272
    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_54
        :pswitch_62
        :pswitch_64
        :pswitch_71
        :pswitch_4d
    .end packed-switch
.end method

.method private f(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 309
    if-nez p4, :cond_d

    .line 310
    const-string/jumbo v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 312
    :cond_d
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_1a

    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 313
    :cond_1a
    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->j()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 314
    add-int/lit8 v2, p2, -0x4

    .line 315
    invoke-static {v2, p3, v0}, Lokhttp3/internal/framed/Http2;->a(IBS)I

    move-result v2

    .line 316
    invoke-direct {p0, v2, v0, p3, p4}, Lokhttp3/internal/framed/Http2$Reader;->a(ISBI)Ljava/util/List;

    move-result-object v0

    .line 317
    invoke-interface {p1, p4, v1, v0}, Lokhttp3/internal/framed/FrameReader$Handler;->a(IILjava/util/List;)V

    .line 318
    return-void
.end method

.method private g(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 322
    const/16 v2, 0x8

    if-eq p2, v2, :cond_16

    const-string/jumbo v2, "TYPE_PING length != 8: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 323
    :cond_16
    if-eqz p4, :cond_22

    const-string/jumbo v0, "TYPE_PING streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 324
    :cond_22
    iget-object v2, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->j()I

    move-result v2

    .line 325
    iget-object v3, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->j()I

    move-result v3

    .line 326
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_36

    .line 327
    :goto_32
    invoke-interface {p1, v0, v2, v3}, Lokhttp3/internal/framed/FrameReader$Handler;->a(ZII)V

    .line 328
    return-void

    :cond_36
    move v0, v1

    .line 326
    goto :goto_32
.end method

.method private h(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 332
    const/16 v0, 0x8

    if-ge p2, v0, :cond_16

    const-string/jumbo v0, "TYPE_GOAWAY length < 8: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 333
    :cond_16
    if-eqz p4, :cond_22

    const-string/jumbo v0, "TYPE_GOAWAY streamId != 0"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 334
    :cond_22
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->j()I

    move-result v1

    .line 335
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->j()I

    move-result v0

    .line 336
    add-int/lit8 v2, p2, -0x8

    .line 337
    invoke-static {v0}, Lokhttp3/internal/framed/ErrorCode;->b(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v3

    .line 338
    if-nez v3, :cond_46

    .line 339
    const-string/jumbo v1, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 341
    :cond_46
    sget-object v0, Lokio/ByteString;->b:Lokio/ByteString;

    .line 342
    if-lez v2, :cond_51

    .line 343
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Lokio/BufferedSource;->d(J)Lokio/ByteString;

    move-result-object v0

    .line 345
    :cond_51
    invoke-interface {p1, v1, v3, v0}, Lokhttp3/internal/framed/FrameReader$Handler;->a(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V

    .line 346
    return-void
.end method

.method private i(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 350
    const/4 v0, 0x4

    if-eq p2, v0, :cond_15

    const-string/jumbo v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 351
    :cond_15
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->j()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    .line 352
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_36

    const-string/jumbo v2, "windowSizeIncrement was 0"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 353
    :cond_36
    invoke-interface {p1, p4, v0, v1}, Lokhttp3/internal/framed/FrameReader$Handler;->a(IJ)V

    .line 354
    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 101
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Reader;->d:Z

    if-eqz v0, :cond_7

    .line 107
    :cond_6
    return-void

    .line 102
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-static {}, Lokhttp3/internal/framed/Http2;->a()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->e()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->d(J)Lokio/ByteString;

    move-result-object v0

    .line 103
    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Ljava/util/logging/Logger;

    move-result-object v1

    const-string/jumbo v2, "<< CONNECTION %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lokhttp3/internal/Util;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 104
    :cond_38
    invoke-static {}, Lokhttp3/internal/framed/Http2;->a()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 105
    const-string/jumbo v1, "Expected a connection header but was %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public a(Lokhttp3/internal/framed/FrameReader$Handler;)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 111
    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    const-wide/16 v4, 0x9

    invoke-interface {v2, v4, v5}, Lokio/BufferedSource;->a(J)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_25

    .line 128
    iget-object v2, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-static {v2}, Lokhttp3/internal/framed/Http2;->a(Lokio/BufferedSource;)I

    move-result v2

    .line 129
    if-ltz v2, :cond_15

    const/16 v3, 0x4000

    if-le v2, v3, :cond_28

    .line 130
    :cond_15
    const-string/jumbo v3, "FRAME_SIZE_ERROR: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 112
    :catch_25
    move-exception v0

    move v0, v1

    .line 178
    :goto_27
    return v0

    .line 132
    :cond_28
    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 133
    iget-object v3, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->h()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 134
    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->j()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    .line 135
    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Ljava/util/logging/Logger;

    move-result-object v5

    invoke-static {v0, v4, v2, v1, v3}, Lokhttp3/internal/framed/Http2$FrameLogger;->a(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 137
    :cond_5b
    packed-switch v1, :pswitch_data_8a

    .line 176
    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->h(J)V

    goto :goto_27

    .line 139
    :pswitch_65
    invoke-direct {p0, p1, v2, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->b(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_27

    .line 143
    :pswitch_69
    invoke-direct {p0, p1, v2, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->a(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_27

    .line 147
    :pswitch_6d
    invoke-direct {p0, p1, v2, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->c(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_27

    .line 151
    :pswitch_71
    invoke-direct {p0, p1, v2, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->d(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_27

    .line 155
    :pswitch_75
    invoke-direct {p0, p1, v2, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->e(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_27

    .line 159
    :pswitch_79
    invoke-direct {p0, p1, v2, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->f(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_27

    .line 163
    :pswitch_7d
    invoke-direct {p0, p1, v2, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->g(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_27

    .line 167
    :pswitch_81
    invoke-direct {p0, p1, v2, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->h(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_27

    .line 171
    :pswitch_85
    invoke-direct {p0, p1, v2, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->i(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_27

    .line 137
    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_65
        :pswitch_69
        :pswitch_6d
        :pswitch_71
        :pswitch_75
        :pswitch_79
        :pswitch_7d
        :pswitch_81
        :pswitch_85
    .end packed-switch
.end method

.method public close()V
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 358
    return-void
.end method
