.class public Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/String;

.field protected final d:[B

.field protected final e:Ljava/lang/String;

.field protected final f:[B

.field protected g:[B

.field protected h:[B

.field protected i:[B

.field protected j:[B

.field protected k:[B

.field protected l:[B

.field protected m:[B

.field protected n:[B

.field protected o:[B

.field protected p:[B

.field protected q:[B

.field protected r:[B

.field protected s:[B

.field protected t:[B

.field protected u:[B

.field protected v:[B

.field protected w:[B

.field protected x:[B

.field protected y:[B

.field protected z:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)V
    .registers 18

    .prologue
    .line 311
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[B[B[B[B)V

    .line 312
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[B[B[B[B)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->k:[B

    .line 277
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->l:[B

    .line 278
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->m:[B

    .line 279
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->n:[B

    .line 280
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->o:[B

    .line 281
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->p:[B

    .line 282
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->q:[B

    .line 283
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->r:[B

    .line 284
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->s:[B

    .line 285
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->t:[B

    .line 286
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->u:[B

    .line 287
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->v:[B

    .line 288
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->w:[B

    .line 289
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->x:[B

    .line 290
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->y:[B

    .line 291
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->z:[B

    .line 297
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->a:Ljava/lang/String;

    .line 298
    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->e:Ljava/lang/String;

    .line 299
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->b:Ljava/lang/String;

    .line 300
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->c:Ljava/lang/String;

    .line 301
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->d:[B

    .line 302
    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->f:[B

    .line 303
    iput-object p7, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->g:[B

    .line 304
    iput-object p8, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->h:[B

    .line 305
    iput-object p9, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->i:[B

    .line 306
    iput-object p10, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->j:[B

    .line 307
    return-void
.end method


# virtual methods
.method public a()[B
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->g:[B

    if-nez v0, :cond_a

    .line 318
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->g:[B

    .line 320
    :cond_a
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->g:[B

    return-object v0
.end method

.method public b()[B
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->h:[B

    if-nez v0, :cond_a

    .line 327
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->h:[B

    .line 329
    :cond_a
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->h:[B

    return-object v0
.end method

.method public c()[B
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->i:[B

    if-nez v0, :cond_a

    .line 336
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b()[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->i:[B

    .line 338
    :cond_a
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->i:[B

    return-object v0
.end method

.method public d()[B
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->k:[B

    if-nez v0, :cond_c

    .line 345
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->c:Ljava/lang/String;

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->k:[B

    .line 347
    :cond_c
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->k:[B

    return-object v0
.end method

.method public e()[B
    .registers 3

    .prologue
    .line 353
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->l:[B

    if-nez v0, :cond_10

    .line 354
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->d()[B

    move-result-object v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->d:[B

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->l:[B

    .line 356
    :cond_10
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->l:[B

    return-object v0
.end method

.method public f()[B
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->m:[B

    if-nez v0, :cond_c

    .line 363
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->c:Ljava/lang/String;

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->m:[B

    .line 365
    :cond_c
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->m:[B

    return-object v0
.end method

.method public g()[B
    .registers 3

    .prologue
    .line 371
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->n:[B

    if-nez v0, :cond_10

    .line 372
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->f()[B

    move-result-object v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->d:[B

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->n:[B

    .line 374
    :cond_10
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->n:[B

    return-object v0
.end method

.method public h()[B
    .registers 4

    .prologue
    .line 380
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->p:[B

    if-nez v0, :cond_12

    .line 381
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->a:Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->f()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->p:[B

    .line 383
    :cond_12
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->p:[B

    return-object v0
.end method

.method public i()[B
    .registers 4

    .prologue
    .line 389
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->o:[B

    if-nez v0, :cond_12

    .line 390
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->a:Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->f()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->o:[B

    .line 392
    :cond_12
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->o:[B

    return-object v0
.end method

.method public j()[B
    .registers 7

    .prologue
    const/16 v5, 0x8

    .line 397
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->j:[B

    if-nez v0, :cond_24

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 399
    const-wide v2, 0xa9730b66800L

    add-long/2addr v0, v2

    .line 400
    const-wide/16 v2, 0x2710

    mul-long/2addr v2, v0

    .line 402
    new-array v0, v5, [B

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->j:[B

    .line 403
    const/4 v0, 0x0

    :goto_18
    if-ge v0, v5, :cond_24

    .line 404
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->j:[B

    long-to-int v4, v2

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 405
    ushr-long/2addr v2, v5

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 408
    :cond_24
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->j:[B

    return-object v0
.end method

.method public k()[B
    .registers 4

    .prologue
    .line 414
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->r:[B

    if-nez v0, :cond_14

    .line 415
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->b()[B

    move-result-object v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->f:[B

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->j()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b([B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->r:[B

    .line 417
    :cond_14
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->r:[B

    return-object v0
.end method

.method public l()[B
    .registers 4

    .prologue
    .line 423
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->s:[B

    if-nez v0, :cond_14

    .line 424
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->i()[B

    move-result-object v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->d:[B

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->k()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c([B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->s:[B

    .line 426
    :cond_14
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->s:[B

    return-object v0
.end method

.method public m()[B
    .registers 4

    .prologue
    .line 432
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->q:[B

    if-nez v0, :cond_14

    .line 433
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->h()[B

    move-result-object v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->d:[B

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->a()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c([B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->q:[B

    .line 435
    :cond_14
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->q:[B

    return-object v0
.end method

.method public n()[B
    .registers 4

    .prologue
    .line 441
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->t:[B

    if-nez v0, :cond_14

    .line 442
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->f()[B

    move-result-object v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->d:[B

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->a()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a([B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->t:[B

    .line 444
    :cond_14
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->t:[B

    return-object v0
.end method

.method public o()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 450
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->u:[B

    if-nez v0, :cond_1e

    .line 451
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->a()[B

    move-result-object v0

    .line 452
    const/16 v1, 0x18

    new-array v1, v1, [B

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->u:[B

    .line 453
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->u:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->u:[B

    array-length v0, v0

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->u:[B

    array-length v2, v2

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 456
    :cond_1e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->u:[B

    return-object v0
.end method

.method public p()[B
    .registers 6

    .prologue
    const/16 v4, 0x10

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 462
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->v:[B

    if-nez v0, :cond_1b

    .line 463
    new-array v0, v4, [B

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->v:[B

    .line 464
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->d()[B

    move-result-object v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->v:[B

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->v:[B

    invoke-static {v0, v3, v4, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 467
    :cond_1b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->v:[B

    return-object v0
.end method

.method public q()[B
    .registers 3

    .prologue
    .line 473
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->w:[B

    if-nez v0, :cond_16

    .line 474
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;-><init>()V

    .line 475
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->f()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a([B)V

    .line 476
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$MD4;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->w:[B

    .line 478
    :cond_16
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->w:[B

    return-object v0
.end method

.method public r()[B
    .registers 6

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 484
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->x:[B

    if-nez v0, :cond_1a

    .line 485
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->i()[B

    move-result-object v0

    .line 486
    new-array v1, v4, [B

    .line 487
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->l()[B

    move-result-object v2

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->x:[B

    .line 490
    :cond_1a
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->x:[B

    return-object v0
.end method

.method public s()[B
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 496
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->y:[B

    if-nez v0, :cond_29

    .line 497
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->o()[B

    move-result-object v0

    .line 498
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->d:[B

    array-length v1, v1

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 499
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->d:[B

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->d:[B

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->d:[B

    array-length v2, v2

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->q()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->y:[B

    .line 503
    :cond_29
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->y:[B

    return-object v0
.end method

.method public t()[B
    .registers 8

    .prologue
    .line 509
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->z:[B

    if-nez v0, :cond_67

    .line 511
    const/16 v0, 0xe

    :try_start_6
    new-array v0, v0, [B

    .line 512
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->d()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    const/16 v1, 0x8

    array-length v2, v0

    const/16 v3, -0x43

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 514
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a([BI)Ljava/security/Key;

    move-result-object v1

    .line 515
    const/4 v2, 0x7

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->a([BI)Ljava/security/Key;

    move-result-object v0

    .line 516
    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 517
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->e()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 518
    const-string/jumbo v3, "DES/ECB/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 519
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 520
    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 521
    const-string/jumbo v3, "DES/ECB/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 522
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 523
    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 524
    const/16 v2, 0x10

    new-array v2, v2, [B

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->z:[B

    .line 525
    const/4 v2, 0x0

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->z:[B

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    const/4 v2, 0x0

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->z:[B

    array-length v1, v1

    array-length v4, v0

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_67} :catch_6a

    .line 531
    :cond_67
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$CipherGen;->z:[B

    return-object v0

    .line 527
    :catch_6a
    move-exception v0

    .line 528
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
