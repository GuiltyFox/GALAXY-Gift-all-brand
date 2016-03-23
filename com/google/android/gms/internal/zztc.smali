.class public final Lcom/google/android/gms/internal/zztc;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private zzbpG:I

.field private zzbpH:I

.field private zzbpI:I

.field private zzbpJ:I

.field private zzbpK:I

.field private zzbpL:I

.field private zzbpM:I

.field private zzbpN:I

.field private zzbpO:I


# direct methods
.method private constructor <init>([BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpL:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpN:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpO:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zztc;->buffer:[B

    iput p2, p0, Lcom/google/android/gms/internal/zztc;->zzbpG:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpH:I

    iput p2, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    return-void
.end method

.method public static zzC([B)Lcom/google/android/gms/internal/zztc;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/zztc;->zza([BII)Lcom/google/android/gms/internal/zztc;

    move-result-object v0

    return-object v0
.end method

.method private zzHt()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpH:I

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpI:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpH:I

    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpH:I

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpL:I

    if-le v0, v1, :cond_1a

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpL:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpI:I

    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpH:I

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpI:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpH:I

    :goto_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpI:I

    goto :goto_19
.end method

.method public static zza([BII)Lcom/google/android/gms/internal/zztc;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zztc;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zztc;-><init>([BII)V

    return-object v0
.end method

.method public static zzaa(J)J
    .registers 6

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static zzmm(I)I
    .registers 3

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getPosition()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpG:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readBytes()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHp()I

    move-result v1

    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpH:I

    iget v2, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_1d

    if-lez v1, :cond_1d

    new-array v0, v1, [B

    iget-object v2, p0, Lcom/google/android/gms/internal/zztc;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    :goto_1c
    return-object v0

    :cond_1d
    if-nez v1, :cond_22

    sget-object v0, Lcom/google/android/gms/internal/zztn;->zzbqi:[B

    goto :goto_1c

    :cond_22
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zztc;->zzmq(I)[B

    move-result-object v0

    goto :goto_1c
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHr()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHp()I

    move-result v1

    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpH:I

    iget v2, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_1f

    if-lez v1, :cond_1f

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zztc;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    :goto_1e
    return-object v0

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zztc;->zzmq(I)[B

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1e
.end method

.method public zzF(II)[B
    .registers 7

    if-nez p2, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/zztn;->zzbqi:[B

    :goto_4
    return-object v0

    :cond_5
    new-array v0, p2, [B

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpG:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/google/android/gms/internal/zztc;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4
.end method

.method public zzHi()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHv()Z

    move-result v1

    if-eqz v1, :cond_a

    iput v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpK:I

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHp()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpK:I

    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpK:I

    if-nez v0, :cond_19

    invoke-static {}, Lcom/google/android/gms/internal/zztj;->zzHF()Lcom/google/android/gms/internal/zztj;

    move-result-object v0

    throw v0

    :cond_19
    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpK:I

    goto :goto_9
.end method

.method public zzHj()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztc;->zzml(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public zzHk()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHq()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzHl()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHp()I

    move-result v0

    return v0
.end method

.method public zzHm()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHp()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public zzHn()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHp()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zztc;->zzmm(I)I

    move-result v0

    return v0
.end method

.method public zzHo()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHq()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zztc;->zzaa(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzHp()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHw()B

    move-result v0

    if-ltz v0, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHw()B

    move-result v1

    if-ltz v1, :cond_13

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_6

    :cond_13
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHw()B

    move-result v1

    if-ltz v1, :cond_22

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_6

    :cond_22
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHw()B

    move-result v1

    if-ltz v1, :cond_31

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_6

    :cond_31
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHw()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_40
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHw()B

    move-result v2

    if-gez v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_4c
    invoke-static {}, Lcom/google/android/gms/internal/zztj;->zzHE()Lcom/google/android/gms/internal/zztj;

    move-result-object v0

    throw v0
.end method

.method public zzHq()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHw()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/zztj;->zzHE()Lcom/google/android/gms/internal/zztj;

    move-result-object v0

    throw v0
.end method

.method public zzHr()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHw()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHw()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHw()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHw()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public zzHs()J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v12, 0xff

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHw()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHw()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHw()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHw()B

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHw()B

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHw()B

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHw()B

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHw()B

    move-result v7

    int-to-long v8, v0

    and-long/2addr v8, v12

    int-to-long v0, v1

    and-long/2addr v0, v12

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v12

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v12

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v12

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v12

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v12

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public zzHu()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpL:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpL:I

    sub-int v0, v1, v0

    goto :goto_8
.end method

.method public zzHv()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpH:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public zzHw()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpH:I

    if-ne v0, v1, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/zztj;->zzHC()Lcom/google/android/gms/internal/zztj;

    move-result-object v0

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zztc;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zztk;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHp()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpM:I

    iget v2, p0, Lcom/google/android/gms/internal/zztc;->zzbpN:I

    if-lt v1, v2, :cond_f

    invoke-static {}, Lcom/google/android/gms/internal/zztj;->zzHI()Lcom/google/android/gms/internal/zztj;

    move-result-object v0

    throw v0

    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztc;->zzmn(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpM:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpM:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zztk;->mergeFrom(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zztk;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zztc;->zzmk(I)V

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpM:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpM:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztc;->zzmo(I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zztk;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpM:I

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpN:I

    if-lt v0, v1, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/zztj;->zzHI()Lcom/google/android/gms/internal/zztj;

    move-result-object v0

    throw v0

    :cond_b
    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpM:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpM:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zztk;->mergeFrom(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zztk;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zztn;->zzL(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztc;->zzmk(I)V

    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpM:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpM:I

    return-void
.end method

.method public zzmk(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zztj;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpK:I

    if-eq v0, p1, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/zztj;->zzHG()Lcom/google/android/gms/internal/zztj;

    move-result-object v0

    throw v0

    :cond_9
    return-void
.end method

.method public zzml(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/zztn;->zzmF(I)I

    move-result v1

    packed-switch v1, :pswitch_data_34

    invoke-static {}, Lcom/google/android/gms/internal/zztj;->zzHH()Lcom/google/android/gms/internal/zztj;

    move-result-object v0

    throw v0

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    :goto_10
    return v0

    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHs()J

    goto :goto_10

    :pswitch_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHp()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zztc;->zzmr(I)V

    goto :goto_10

    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHj()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zztn;->zzmG(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztn;->zzL(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zztc;->zzmk(I)V

    goto :goto_10

    :pswitch_2d
    const/4 v0, 0x0

    goto :goto_10

    :pswitch_2f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztc;->zzHr()I

    goto :goto_10

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_1d
        :pswitch_2d
        :pswitch_2f
    .end packed-switch
.end method

.method public zzmn(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zztj;
        }
    .end annotation

    if-gez p1, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/zztj;->zzHD()Lcom/google/android/gms/internal/zztj;

    move-result-object v0

    throw v0

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpL:I

    if-le v0, v1, :cond_13

    invoke-static {}, Lcom/google/android/gms/internal/zztj;->zzHC()Lcom/google/android/gms/internal/zztj;

    move-result-object v0

    throw v0

    :cond_13
    iput v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpL:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztc;->zzHt()V

    return v1
.end method

.method public zzmo(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zztc;->zzbpL:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztc;->zzHt()V

    return-void
.end method

.method public zzmp(I)V
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpG:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_31

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is beyond current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    iget v3, p0, Lcom/google/android/gms/internal/zztc;->zzbpG:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    if-gez p1, :cond_4d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpG:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    return-void
.end method

.method public zzmq(I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/zztj;->zzHD()Lcom/google/android/gms/internal/zztj;

    move-result-object v0

    throw v0

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpL:I

    if-le v0, v1, :cond_1b

    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpL:I

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztc;->zzmr(I)V

    invoke-static {}, Lcom/google/android/gms/internal/zztj;->zzHC()Lcom/google/android/gms/internal/zztj;

    move-result-object v0

    throw v0

    :cond_1b
    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpH:I

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_32

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/zztc;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    return-object v0

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/zztj;->zzHC()Lcom/google/android/gms/internal/zztj;

    move-result-object v0

    throw v0
.end method

.method public zzmr(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/zztj;->zzHD()Lcom/google/android/gms/internal/zztj;

    move-result-object v0

    throw v0

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpL:I

    if-le v0, v1, :cond_1b

    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpL:I

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztc;->zzmr(I)V

    invoke-static {}, Lcom/google/android/gms/internal/zztj;->zzHC()Lcom/google/android/gms/internal/zztj;

    move-result-object v0

    throw v0

    :cond_1b
    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpH:I

    iget v1, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_28

    iget v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zztc;->zzbpJ:I

    return-void

    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/zztj;->zzHC()Lcom/google/android/gms/internal/zztj;

    move-result-object v0

    throw v0
.end method
