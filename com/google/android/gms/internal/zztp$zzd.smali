.class public final Lcom/google/android/gms/internal/zztp$zzd;
.super Lcom/google/android/gms/internal/zzte;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zztp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzte",
        "<",
        "Lcom/google/android/gms/internal/zztp$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public tag:Ljava/lang/String;

.field public zzbqA:Z

.field public zzbqB:[Lcom/google/android/gms/internal/zztp$zze;

.field public zzbqC:Lcom/google/android/gms/internal/zztp$zzb;

.field public zzbqD:[B

.field public zzbqE:[B

.field public zzbqF:[B

.field public zzbqG:Lcom/google/android/gms/internal/zztp$zza;

.field public zzbqH:Ljava/lang/String;

.field public zzbqI:J

.field public zzbqJ:Lcom/google/android/gms/internal/zztp$zzc;

.field public zzbqK:[B

.field public zzbqL:I

.field public zzbqM:[I

.field public zzbqw:J

.field public zzbqx:J

.field public zzbqy:J

.field public zzbqz:I

.field public zznN:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzte;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztp$zzd;->zzHP()Lcom/google/android/gms/internal/zztp$zzd;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_5
    :goto_5
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/zztp$zzd;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zztp$zzd;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqw:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqw:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqx:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqx:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqy:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqy:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->tag:Ljava/lang/String;

    if-nez v2, :cond_c3

    iget-object v2, p1, Lcom/google/android/gms/internal/zztp$zzd;->tag:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_2c
    iget v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqz:I

    iget v3, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqz:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zznN:I

    iget v3, p1, Lcom/google/android/gms/internal/zztp$zzd;->zznN:I

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqA:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqA:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqB:[Lcom/google/android/gms/internal/zztp$zze;

    iget-object v3, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqB:[Lcom/google/android/gms/internal/zztp$zze;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzti;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqC:Lcom/google/android/gms/internal/zztp$zzb;

    if-nez v2, :cond_cf

    iget-object v2, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqC:Lcom/google/android/gms/internal/zztp$zzb;

    if-nez v2, :cond_5

    :cond_50
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqD:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqD:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqE:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqE:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqF:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqF:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqG:Lcom/google/android/gms/internal/zztp$zza;

    if-nez v2, :cond_db

    iget-object v2, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqG:Lcom/google/android/gms/internal/zztp$zza;

    if-nez v2, :cond_5

    :cond_76
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqH:Ljava/lang/String;

    if-nez v2, :cond_e7

    iget-object v2, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqH:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_7e
    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqI:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqI:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqJ:Lcom/google/android/gms/internal/zztp$zzc;

    if-nez v2, :cond_f3

    iget-object v2, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqJ:Lcom/google/android/gms/internal/zztp$zzc;

    if-nez v2, :cond_5

    :cond_8e
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqK:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqK:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqL:I

    iget v3, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqL:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzti;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-eqz v2, :cond_b4

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ff

    :cond_b4
    iget-object v2, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-eqz v2, :cond_c0

    iget-object v2, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_c0
    move v0, v1

    goto/16 :goto_5

    :cond_c3
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zztp$zzd;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto/16 :goto_5

    :cond_cf
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqC:Lcom/google/android/gms/internal/zztp$zzb;

    iget-object v3, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqC:Lcom/google/android/gms/internal/zztp$zzb;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zztp$zzb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    goto/16 :goto_5

    :cond_db
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqG:Lcom/google/android/gms/internal/zztp$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqG:Lcom/google/android/gms/internal/zztp$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zztp$zza;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_76

    goto/16 :goto_5

    :cond_e7
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqH:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7e

    goto/16 :goto_5

    :cond_f3
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqJ:Lcom/google/android/gms/internal/zztp$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbqJ:Lcom/google/android/gms/internal/zztp$zzc;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zztp$zzc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    goto/16 :goto_5

    :cond_ff
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    iget-object v1, p1, Lcom/google/android/gms/internal/zztp$zzd;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztg;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_5
.end method

.method public hashCode()I
    .registers 8

    const/16 v6, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqw:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqw:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqx:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqx:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqy:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqy:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->tag:Ljava/lang/String;

    if-nez v0, :cond_bf

    move v0, v1

    :goto_36
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqz:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zznN:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqA:Z

    if-eqz v0, :cond_c7

    const/16 v0, 0x4cf

    :goto_49
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqB:[Lcom/google/android/gms/internal/zztp$zze;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzti;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqC:Lcom/google/android/gms/internal/zztp$zzb;

    if-nez v0, :cond_ca

    move v0, v1

    :goto_5a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqD:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqE:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqF:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqG:Lcom/google/android/gms/internal/zztp$zza;

    if-nez v0, :cond_d1

    move v0, v1

    :goto_7d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqH:Ljava/lang/String;

    if-nez v0, :cond_d8

    move v0, v1

    :goto_85
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqI:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqI:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqJ:Lcom/google/android/gms/internal/zztp$zzc;

    if-nez v0, :cond_df

    move v0, v1

    :goto_97
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqK:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqL:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzti;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-eqz v2, :cond_bd

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e6

    :cond_bd
    :goto_bd
    add-int/2addr v0, v1

    return v0

    :cond_bf
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_36

    :cond_c7
    const/16 v0, 0x4d5

    goto :goto_49

    :cond_ca
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqC:Lcom/google/android/gms/internal/zztp$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztp$zzb;->hashCode()I

    move-result v0

    goto :goto_5a

    :cond_d1
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqG:Lcom/google/android/gms/internal/zztp$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztp$zza;->hashCode()I

    move-result v0

    goto :goto_7d

    :cond_d8
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_85

    :cond_df
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqJ:Lcom/google/android/gms/internal/zztp$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztp$zzc;->hashCode()I

    move-result v0

    goto :goto_97

    :cond_e6
    iget-object v1, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zztg;->hashCode()I

    move-result v1

    goto :goto_bd
.end method

.method public synthetic mergeFrom(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zztk;
    .registers 3
    .param p1, "x0"    # Lcom/google/android/gms/internal/zztc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zztp$zzd;->zzK(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zztp$zzd;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zztd;)V
    .registers 10
    .param p1, "output"    # Lcom/google/android/gms/internal/zztd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqw:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqw:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzb(IJ)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->tag:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zzb(ILjava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqB:[Lcom/google/android/gms/internal/zztp$zze;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqB:[Lcom/google/android/gms/internal/zztp$zze;

    array-length v0, v0

    if-lez v0, :cond_3c

    move v0, v1

    :goto_2a
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqB:[Lcom/google/android/gms/internal/zztp$zze;

    array-length v2, v2

    if-ge v0, v2, :cond_3c

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqB:[Lcom/google/android/gms/internal/zztp$zze;

    aget-object v2, v2, v0

    if-eqz v2, :cond_39

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zztd;->zza(ILcom/google/android/gms/internal/zztk;)V

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqD:[B

    sget-object v2, Lcom/google/android/gms/internal/zztn;->zzbqi:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4c

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqD:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zza(I[B)V

    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqG:Lcom/google/android/gms/internal/zztp$zza;

    if-eqz v0, :cond_56

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqG:Lcom/google/android/gms/internal/zztp$zza;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zza(ILcom/google/android/gms/internal/zztk;)V

    :cond_56
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqE:[B

    sget-object v2, Lcom/google/android/gms/internal/zztn;->zzbqi:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_67

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqE:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zza(I[B)V

    :cond_67
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqC:Lcom/google/android/gms/internal/zztp$zzb;

    if-eqz v0, :cond_72

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqC:Lcom/google/android/gms/internal/zztp$zzb;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zza(ILcom/google/android/gms/internal/zztk;)V

    :cond_72
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqA:Z

    if-eqz v0, :cond_7d

    const/16 v0, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqA:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zzb(IZ)V

    :cond_7d
    iget v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqz:I

    if-eqz v0, :cond_88

    const/16 v0, 0xb

    iget v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqz:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zzG(II)V

    :cond_88
    iget v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zznN:I

    if-eqz v0, :cond_93

    const/16 v0, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zznN:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zzG(II)V

    :cond_93
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqF:[B

    sget-object v2, Lcom/google/android/gms/internal/zztn;->zzbqi:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_a4

    const/16 v0, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqF:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zza(I[B)V

    :cond_a4
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqH:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const/16 v0, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqH:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zzb(ILjava/lang/String;)V

    :cond_b6
    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqI:J

    const-wide/32 v4, 0x2bf20

    cmp-long v0, v2, v4

    if-eqz v0, :cond_c6

    const/16 v0, 0xf

    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqI:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzc(IJ)V

    :cond_c6
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqJ:Lcom/google/android/gms/internal/zztp$zzc;

    if-eqz v0, :cond_d1

    const/16 v0, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqJ:Lcom/google/android/gms/internal/zztp$zzc;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zza(ILcom/google/android/gms/internal/zztk;)V

    :cond_d1
    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqx:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_de

    const/16 v0, 0x11

    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqx:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzb(IJ)V

    :cond_de
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqK:[B

    sget-object v2, Lcom/google/android/gms/internal/zztn;->zzbqi:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_ef

    const/16 v0, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqK:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zza(I[B)V

    :cond_ef
    iget v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqL:I

    if-eqz v0, :cond_fa

    const/16 v0, 0x13

    iget v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqL:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zzG(II)V

    :cond_fa
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    if-eqz v0, :cond_114

    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    array-length v0, v0

    if-lez v0, :cond_114

    :goto_103
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    array-length v0, v0

    if-ge v1, v0, :cond_114

    const/16 v0, 0x14

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zzG(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_103

    :cond_114
    iget-wide v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqy:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_121

    const/16 v0, 0x15

    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqy:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzb(IJ)V

    :cond_121
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzte;->writeTo(Lcom/google/android/gms/internal/zztd;)V

    return-void
.end method

.method public zzHP()Lcom/google/android/gms/internal/zztp$zzd;
    .registers 5

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqw:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqx:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqy:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->tag:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqz:I

    iput v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zznN:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqA:Z

    invoke-static {}, Lcom/google/android/gms/internal/zztp$zze;->zzHQ()[Lcom/google/android/gms/internal/zztp$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqB:[Lcom/google/android/gms/internal/zztp$zze;

    iput-object v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqC:Lcom/google/android/gms/internal/zztp$zzb;

    sget-object v0, Lcom/google/android/gms/internal/zztn;->zzbqi:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqD:[B

    sget-object v0, Lcom/google/android/gms/internal/zztn;->zzbqi:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqE:[B

    sget-object v0, Lcom/google/android/gms/internal/zztn;->zzbqi:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqF:[B

    iput-object v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqG:Lcom/google/android/gms/internal/zztp$zza;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqH:Ljava/lang/String;

    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqI:J

    iput-object v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqJ:Lcom/google/android/gms/internal/zztp$zzc;

    sget-object v0, Lcom/google/android/gms/internal/zztn;->zzbqi:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqK:[B

    iput v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqL:I

    sget-object v0, Lcom/google/android/gms/internal/zztn;->zzboD:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    iput-object v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqb:I

    return-object p0
.end method

.method public zzK(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zztp$zzd;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    move-result v0

    sparse-switch v0, :sswitch_data_16a

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zztp$zzd;->zza(Lcom/google/android/gms/internal/zztc;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHk()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqw:J

    goto :goto_1

    :sswitch_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->tag:Ljava/lang/String;

    goto :goto_1

    :sswitch_1d
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zztn;->zzc(Lcom/google/android/gms/internal/zztc;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqB:[Lcom/google/android/gms/internal/zztp$zze;

    if-nez v0, :cond_49

    move v0, v1

    :goto_28
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zztp$zze;

    if-eqz v0, :cond_32

    iget-object v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqB:[Lcom/google/android/gms/internal/zztp$zze;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_32
    :goto_32
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4d

    new-instance v3, Lcom/google/android/gms/internal/zztp$zze;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zztp$zze;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqB:[Lcom/google/android/gms/internal/zztp$zze;

    array-length v0, v0

    goto :goto_28

    :cond_4d
    new-instance v3, Lcom/google/android/gms/internal/zztp$zze;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zztp$zze;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqB:[Lcom/google/android/gms/internal/zztp$zze;

    goto :goto_1

    :sswitch_5c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqD:[B

    goto :goto_1

    :sswitch_63
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqG:Lcom/google/android/gms/internal/zztp$zza;

    if-nez v0, :cond_6e

    new-instance v0, Lcom/google/android/gms/internal/zztp$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztp$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqG:Lcom/google/android/gms/internal/zztp$zza;

    :cond_6e
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqG:Lcom/google/android/gms/internal/zztp$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    goto :goto_1

    :sswitch_74
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqE:[B

    goto :goto_1

    :sswitch_7b
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqC:Lcom/google/android/gms/internal/zztp$zzb;

    if-nez v0, :cond_86

    new-instance v0, Lcom/google/android/gms/internal/zztp$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztp$zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqC:Lcom/google/android/gms/internal/zztp$zzb;

    :cond_86
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqC:Lcom/google/android/gms/internal/zztp$zzb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    goto/16 :goto_1

    :sswitch_8d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHm()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqA:Z

    goto/16 :goto_1

    :sswitch_95
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqz:I

    goto/16 :goto_1

    :sswitch_9d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zznN:I

    goto/16 :goto_1

    :sswitch_a5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqF:[B

    goto/16 :goto_1

    :sswitch_ad
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqH:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_b5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHo()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqI:J

    goto/16 :goto_1

    :sswitch_bd
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqJ:Lcom/google/android/gms/internal/zztp$zzc;

    if-nez v0, :cond_c8

    new-instance v0, Lcom/google/android/gms/internal/zztp$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztp$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqJ:Lcom/google/android/gms/internal/zztp$zzc;

    :cond_c8
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqJ:Lcom/google/android/gms/internal/zztp$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    goto/16 :goto_1

    :sswitch_cf
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHk()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqx:J

    goto/16 :goto_1

    :sswitch_d7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqK:[B

    goto/16 :goto_1

    :sswitch_df
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v0

    packed-switch v0, :pswitch_data_1c0

    goto/16 :goto_1

    :pswitch_e8
    iput v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqL:I

    goto/16 :goto_1

    :sswitch_ec
    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zztn;->zzc(Lcom/google/android/gms/internal/zztc;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    if-nez v0, :cond_112

    move v0, v1

    :goto_f7
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_101

    iget-object v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_101
    :goto_101
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_116

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_101

    :cond_112
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    array-length v0, v0

    goto :goto_f7

    :cond_116
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    goto/16 :goto_1

    :sswitch_120
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHp()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztc;->zzmn(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->getPosition()I

    move-result v2

    move v0, v1

    :goto_12d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHu()I

    move-result v4

    if-lez v4, :cond_139

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_12d

    :cond_139
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zztc;->zzmp(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    if-nez v2, :cond_157

    move v2, v1

    :goto_141
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_14b

    iget-object v4, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14b
    :goto_14b
    array-length v4, v0

    if-ge v2, v4, :cond_15b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14b

    :cond_157
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    array-length v2, v2

    goto :goto_141

    :cond_15b
    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zztc;->zzmo(I)V

    goto/16 :goto_1

    :sswitch_162
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHk()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqy:J

    goto/16 :goto_1

    :sswitch_data_16a
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1d
        0x32 -> :sswitch_5c
        0x3a -> :sswitch_63
        0x42 -> :sswitch_74
        0x4a -> :sswitch_7b
        0x50 -> :sswitch_8d
        0x58 -> :sswitch_95
        0x60 -> :sswitch_9d
        0x6a -> :sswitch_a5
        0x72 -> :sswitch_ad
        0x78 -> :sswitch_b5
        0x82 -> :sswitch_bd
        0x88 -> :sswitch_cf
        0x92 -> :sswitch_d7
        0x98 -> :sswitch_df
        0xa0 -> :sswitch_ec
        0xa2 -> :sswitch_120
        0xa8 -> :sswitch_162
    .end sparse-switch

    :pswitch_data_1c0
    .packed-switch 0x0
        :pswitch_e8
        :pswitch_e8
        :pswitch_e8
    .end packed-switch
.end method

.method protected zzz()I
    .registers 9

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzte;->zzz()I

    move-result v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqw:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqw:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zztd;->zzd(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->tag:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->tag:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzp(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_28
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqB:[Lcom/google/android/gms/internal/zztp$zze;

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqB:[Lcom/google/android/gms/internal/zztp$zze;

    array-length v2, v2

    if-lez v2, :cond_48

    move v2, v0

    move v0, v1

    :goto_33
    iget-object v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqB:[Lcom/google/android/gms/internal/zztp$zze;

    array-length v3, v3

    if-ge v0, v3, :cond_47

    iget-object v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqB:[Lcom/google/android/gms/internal/zztp$zze;

    aget-object v3, v3, v0

    if-eqz v3, :cond_44

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zztd;->zzc(ILcom/google/android/gms/internal/zztk;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_47
    move v0, v2

    :cond_48
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqD:[B

    sget-object v3, Lcom/google/android/gms/internal/zztn;->zzbqi:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_5a

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqD:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5a
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqG:Lcom/google/android/gms/internal/zztp$zza;

    if-eqz v2, :cond_66

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqG:Lcom/google/android/gms/internal/zztp$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzc(ILcom/google/android/gms/internal/zztk;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_66
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqE:[B

    sget-object v3, Lcom/google/android/gms/internal/zztn;->zzbqi:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_79

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqE:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_79
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqC:Lcom/google/android/gms/internal/zztp$zzb;

    if-eqz v2, :cond_86

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqC:Lcom/google/android/gms/internal/zztp$zzb;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzc(ILcom/google/android/gms/internal/zztk;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_86
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqA:Z

    if-eqz v2, :cond_93

    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqA:Z

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzc(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_93
    iget v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqz:I

    if-eqz v2, :cond_a0

    const/16 v2, 0xb

    iget v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqz:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzI(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a0
    iget v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zznN:I

    if-eqz v2, :cond_ad

    const/16 v2, 0xc

    iget v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zznN:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzI(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_ad
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqF:[B

    sget-object v3, Lcom/google/android/gms/internal/zztn;->zzbqi:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_c0

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqF:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c0
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqH:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d4

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqH:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzp(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_d4
    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqI:J

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e6

    const/16 v2, 0xf

    iget-wide v4, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqI:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zztd;->zze(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_e6
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqJ:Lcom/google/android/gms/internal/zztp$zzc;

    if-eqz v2, :cond_f3

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqJ:Lcom/google/android/gms/internal/zztp$zzc;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzc(ILcom/google/android/gms/internal/zztk;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_f3
    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqx:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_102

    const/16 v2, 0x11

    iget-wide v4, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqx:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zztd;->zzd(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_102
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqK:[B

    sget-object v3, Lcom/google/android/gms/internal/zztn;->zzbqi:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_115

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqK:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_115
    iget v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqL:I

    if-eqz v2, :cond_122

    const/16 v2, 0x13

    iget v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqL:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzI(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_122
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    if-eqz v2, :cond_144

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    array-length v2, v2

    if-lez v2, :cond_144

    move v2, v1

    :goto_12c
    iget-object v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    array-length v3, v3

    if-ge v1, v3, :cond_13d

    iget-object v3, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/zztd;->zzmu(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_12c

    :cond_13d
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqM:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_144
    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqy:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_153

    const/16 v1, 0x15

    iget-wide v2, p0, Lcom/google/android/gms/internal/zztp$zzd;->zzbqy:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_153
    return v0
.end method
