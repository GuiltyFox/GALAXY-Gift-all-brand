.class final Lokio/RealBufferedSource;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Lokio/BufferedSource;


# instance fields
.field public final a:Lokio/Buffer;

.field public final b:Lokio/Source;

.field c:Z


# direct methods
.method constructor <init>(Lokio/Source;)V
    .registers 4

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    .line 31
    if-nez p1, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_15
    iput-object p1, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    .line 33
    return-void
.end method


# virtual methods
.method public a(B)J
    .registers 4

    .prologue
    .line 314
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/RealBufferedSource;->a(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJ)J
    .registers 12

    .prologue
    const-wide/16 v2, -0x1

    .line 318
    iget-boolean v0, p0, Lokio/RealBufferedSource;->c:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_f
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 321
    :cond_13
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->a(BJ)J

    move-result-wide v0

    .line 322
    cmp-long v4, v0, v2

    if-eqz v4, :cond_1e

    .line 325
    :goto_1d
    return-wide v0

    .line 324
    :cond_1e
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->b:J

    .line 325
    iget-object v4, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    iget-object v5, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->a(Lokio/Buffer;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_f

    move-wide v0, v2

    goto :goto_1d
.end method

.method public a(Lokio/Buffer;J)J
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    .line 40
    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_f
    cmp-long v2, p2, v4

    if-gez v2, :cond_2d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_2d
    iget-boolean v2, p0, Lokio/RealBufferedSource;->c:Z

    if-eqz v2, :cond_3a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_3a
    iget-object v2, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_51

    .line 45
    iget-object v2, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    iget-object v3, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Lokio/Source;->a(Lokio/Buffer;J)J

    move-result-wide v2

    .line 46
    cmp-long v2, v2, v0

    if-nez v2, :cond_51

    .line 50
    :goto_50
    return-wide v0

    .line 49
    :cond_51
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 50
    iget-object v2, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v2, p1, v0, v1}, Lokio/Buffer;->a(Lokio/Buffer;J)J

    move-result-wide v0

    goto :goto_50
.end method

.method public a()Lokio/Timeout;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->a()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->b(J)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 60
    :cond_c
    return-void
.end method

.method public b(J)Z
    .registers 8

    .prologue
    .line 63
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_20
    iget-boolean v0, p0, Lokio/RealBufferedSource;->c:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2d
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_47

    .line 66
    iget-object v0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    iget-object v1, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->a(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2d

    const/4 v0, 0x0

    .line 68
    :goto_46
    return v0

    :cond_47
    const/4 v0, 0x1

    goto :goto_46
.end method

.method public c()Lokio/Buffer;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    return-object v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 409
    iget-boolean v0, p0, Lokio/RealBufferedSource;->c:Z

    if-eqz v0, :cond_5

    .line 413
    :goto_4
    return-void

    .line 410
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/RealBufferedSource;->c:Z

    .line 411
    iget-object v0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->close()V

    .line 412
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->s()V

    goto :goto_4
.end method

.method public d(J)Lokio/ByteString;
    .registers 4

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->a(J)V

    .line 83
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->d(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .registers 5

    .prologue
    .line 54
    iget-boolean v0, p0, Lokio/RealBufferedSource;->c:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_d
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->f()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    iget-object v1, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->a(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public g(J)[B
    .registers 4

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->a(J)V

    .line 112
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->g(J)[B

    move-result-object v0

    return-object v0
.end method

.method public h()B
    .registers 3

    .prologue
    .line 72
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->a(J)V

    .line 73
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->h()B

    move-result v0

    return v0
.end method

.method public h(J)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 302
    iget-boolean v0, p0, Lokio/RealBufferedSource;->c:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_f
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 308
    iget-object v2, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->h(J)V

    .line 309
    sub-long/2addr p1, v0

    .line 303
    :cond_1f
    cmp-long v0, p1, v4

    if-lez v0, :cond_41

    .line 304
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_f

    iget-object v0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    iget-object v1, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->a(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 305
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 311
    :cond_41
    return-void
.end method

.method public i()S
    .registers 3

    .prologue
    .line 236
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->a(J)V

    .line 237
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->i()S

    move-result v0

    return v0
.end method

.method public j()I
    .registers 3

    .prologue
    .line 246
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->a(J)V

    .line 247
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->j()I

    move-result v0

    return v0
.end method

.method public k()S
    .registers 3

    .prologue
    .line 241
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->a(J)V

    .line 242
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->k()S

    move-result v0

    return v0
.end method

.method public l()I
    .registers 3

    .prologue
    .line 251
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->a(J)V

    .line 252
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->l()I

    move-result v0

    return v0
.end method

.method public m()J
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 284
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lokio/RealBufferedSource;->a(J)V

    move v0, v1

    .line 286
    :goto_7
    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lokio/RealBufferedSource;->b(J)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 287
    iget-object v2, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->c(J)B

    move-result v2

    .line 288
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1f

    const/16 v3, 0x39

    if-le v2, v3, :cond_47

    :cond_1f
    const/16 v3, 0x61

    if-lt v2, v3, :cond_27

    const/16 v3, 0x66

    if-le v2, v3, :cond_47

    :cond_27
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2f

    const/16 v3, 0x46

    if-le v2, v3, :cond_47

    .line 290
    :cond_2f
    if-nez v0, :cond_4a

    .line 291
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "Expected leading [0-9a-fA-F] character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 292
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v1

    .line 291
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 298
    :cond_4a
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public p()Ljava/lang/String;
    .registers 9

    .prologue
    .line 210
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lokio/RealBufferedSource;->a(B)J

    move-result-wide v0

    .line 211
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_5e

    .line 212
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 213
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-object v6, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->b()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->a(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 214
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 215
    invoke-virtual {v1}, Lokio/Buffer;->n()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_5e
    iget-object v2, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->f(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()[B
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    iget-object v1, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->a(Lokio/Source;)J

    .line 107
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->r()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
