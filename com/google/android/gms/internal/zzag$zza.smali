.class public final Lcom/google/android/gms/internal/zzag$zza;
.super Lcom/google/android/gms/internal/zzte;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzte",
        "<",
        "Lcom/google/android/gms/internal/zzag$zza;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzjn:[Lcom/google/android/gms/internal/zzag$zza;


# instance fields
.field public type:I

.field public zzjo:Ljava/lang/String;

.field public zzjp:[Lcom/google/android/gms/internal/zzag$zza;

.field public zzjq:[Lcom/google/android/gms/internal/zzag$zza;

.field public zzjr:[Lcom/google/android/gms/internal/zzag$zza;

.field public zzjs:Ljava/lang/String;

.field public zzjt:Ljava/lang/String;

.field public zzju:J

.field public zzjv:Z

.field public zzjw:[Lcom/google/android/gms/internal/zzag$zza;

.field public zzjx:[I

.field public zzjy:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzte;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzag$zza;->zzR()Lcom/google/android/gms/internal/zzag$zza;

    return-void
.end method

.method public static zzQ()[Lcom/google/android/gms/internal/zzag$zza;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzag$zza;->zzjn:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzti;->zzbqa:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzag$zza;->zzjn:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzag$zza;

    sput-object v0, Lcom/google/android/gms/internal/zzag$zza;->zzjn:[Lcom/google/android/gms/internal/zzag$zza;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzag$zza;->zzjn:[Lcom/google/android/gms/internal/zzag$zza;

    return-object v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzag$zza;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/zzag$zza;->type:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjo:Ljava/lang/String;

    if-nez v2, :cond_8b

    iget-object v2, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjo:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_1a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzti;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzti;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzti;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjs:Ljava/lang/String;

    if-nez v2, :cond_97

    iget-object v2, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjs:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_40
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjt:Ljava/lang/String;

    if-nez v2, :cond_a3

    iget-object v2, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjt:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_48
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzju:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzag$zza;->zzju:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjv:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjv:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzti;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzti;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjy:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_af

    :cond_7c
    iget-object v2, p1, Lcom/google/android/gms/internal/zzag$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-eqz v2, :cond_88

    iget-object v2, p1, Lcom/google/android/gms/internal/zzag$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_88
    move v0, v1

    goto/16 :goto_5

    :cond_8b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjo:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_5

    :cond_97
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjs:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto/16 :goto_5

    :cond_a3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjt:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzag$zza;->zzjt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    goto/16 :goto_5

    :cond_af
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzag$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztg;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_5
.end method

.method public hashCode()I
    .registers 10

    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjo:Ljava/lang/String;

    if-nez v0, :cond_88

    move v0, v1

    :goto_1f
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzti;->hashCode([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzti;->hashCode([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzti;->hashCode([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjs:Ljava/lang/String;

    if-nez v0, :cond_8f

    move v0, v1

    :goto_42
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjt:Ljava/lang/String;

    if-nez v0, :cond_96

    move v0, v1

    :goto_4a
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzju:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzag$zza;->zzju:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjv:Z

    if-eqz v0, :cond_9d

    move v0, v2

    :goto_5e
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzti;->hashCode([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    invoke-static {v4}, Lcom/google/android/gms/internal/zzti;->hashCode([I)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:Z

    if-eqz v4, :cond_9f

    :goto_77
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-eqz v2, :cond_86

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a1

    :cond_86
    :goto_86
    add-int/2addr v0, v1

    return v0

    :cond_88
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1f

    :cond_8f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_42

    :cond_96
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4a

    :cond_9d
    move v0, v3

    goto :goto_5e

    :cond_9f
    move v2, v3

    goto :goto_77

    :cond_a1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zztg;->hashCode()I

    move-result v1

    goto :goto_86
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzag$zza;->zzk(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zztd;)V
    .registers 8
    .param p1, "output"    # Lcom/google/android/gms/internal/zztd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zzG(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjo:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjo:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zzb(ILjava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    if-lez v0, :cond_34

    move v0, v1

    :goto_22
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_34

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v2, v2, v0

    if-eqz v2, :cond_31

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zztd;->zza(ILcom/google/android/gms/internal/zztk;)V

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    if-lez v0, :cond_50

    move v0, v1

    :goto_3e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_50

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4d

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zztd;->zza(ILcom/google/android/gms/internal/zztk;)V

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_50
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    if-lez v0, :cond_6c

    move v0, v1

    :goto_5a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_6c

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v2, v2, v0

    if-eqz v2, :cond_69

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zztd;->zza(ILcom/google/android/gms/internal/zztk;)V

    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    :cond_6c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjs:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjs:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zzb(ILjava/lang/String;)V

    :cond_7d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjt:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjt:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zzb(ILjava/lang/String;)V

    :cond_8e
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzju:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9d

    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzju:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzb(IJ)V

    :cond_9d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:Z

    if-eqz v0, :cond_a8

    const/16 v0, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zztd;->zzb(IZ)V

    :cond_a8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    array-length v0, v0

    if-lez v0, :cond_c3

    move v0, v1

    :goto_b2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    array-length v2, v2

    if-ge v0, v2, :cond_c3

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzG(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b2

    :cond_c3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    if-lez v0, :cond_df

    :goto_cc
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    if-ge v1, v0, :cond_df

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v0, v0, v1

    if-eqz v0, :cond_dc

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zztd;->zza(ILcom/google/android/gms/internal/zztk;)V

    :cond_dc
    add-int/lit8 v1, v1, 0x1

    goto :goto_cc

    :cond_df
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjv:Z

    if-eqz v0, :cond_ea

    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjv:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzb(IZ)V

    :cond_ea
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzte;->writeTo(Lcom/google/android/gms/internal/zztd;)V

    return-void
.end method

.method public zzR()Lcom/google/android/gms/internal/zzag$zza;
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjo:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzag$zza;->zzQ()[Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzag$zza;->zzQ()[Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzag$zza;->zzQ()[Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjs:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjt:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzju:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjv:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzag$zza;->zzQ()[Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    sget-object v0, Lcom/google/android/gms/internal/zztn;->zzboD:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzbqb:I

    return-object p0
.end method

.method public zzk(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zzag$zza;
    .registers 9
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

    sparse-switch v0, :sswitch_data_1e2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzag$zza;->zza(Lcom/google/android/gms/internal/zztc;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v0

    packed-switch v0, :pswitch_data_21c

    goto :goto_1

    :pswitch_17
    iput v0, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    goto :goto_1

    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjo:Ljava/lang/String;

    goto :goto_1

    :sswitch_21
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zztn;->zzc(Lcom/google/android/gms/internal/zztc;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v0, :cond_4d

    move v0, v1

    :goto_2c
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_36

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_36
    :goto_36
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_51

    new-instance v3, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    goto :goto_2c

    :cond_51
    new-instance v3, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    goto :goto_1

    :sswitch_60
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zztn;->zzc(Lcom/google/android/gms/internal/zztc;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v0, :cond_8c

    move v0, v1

    :goto_6b
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_75

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_75
    :goto_75
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_90

    new-instance v3, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    :cond_8c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    goto :goto_6b

    :cond_90
    new-instance v3, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    goto/16 :goto_1

    :sswitch_a0
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zztn;->zzc(Lcom/google/android/gms/internal/zztc;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v0, :cond_cc

    move v0, v1

    :goto_ab
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_b5

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b5
    :goto_b5
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d0

    new-instance v3, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    :cond_cc
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    goto :goto_ab

    :cond_d0
    new-instance v3, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    goto/16 :goto_1

    :sswitch_e0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjs:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_e8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjt:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_f0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHk()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzju:J

    goto/16 :goto_1

    :sswitch_f8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHm()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:Z

    goto/16 :goto_1

    :sswitch_100
    const/16 v0, 0x50

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zztn;->zzc(Lcom/google/android/gms/internal/zztc;I)I

    move-result v4

    new-array v5, v4, [I

    move v3, v1

    move v2, v1

    :goto_10a
    if-ge v3, v4, :cond_123

    if-eqz v3, :cond_111

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    :cond_111
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v6

    packed-switch v6, :pswitch_data_230

    move v0, v2

    :goto_119
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_10a

    :pswitch_11e
    add-int/lit8 v0, v2, 0x1

    aput v6, v5, v2

    goto :goto_119

    :cond_123
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    if-nez v0, :cond_133

    move v0, v1

    :goto_12a
    if-nez v0, :cond_137

    array-length v3, v5

    if-ne v2, v3, :cond_137

    iput-object v5, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    goto/16 :goto_1

    :cond_133
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    array-length v0, v0

    goto :goto_12a

    :cond_137
    add-int v3, v0, v2

    new-array v3, v3, [I

    if-eqz v0, :cond_142

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_142
    invoke-static {v5, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    goto/16 :goto_1

    :sswitch_149
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHp()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztc;->zzmn(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->getPosition()I

    move-result v2

    move v0, v1

    :goto_156
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHu()I

    move-result v4

    if-lez v4, :cond_167

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v4

    packed-switch v4, :pswitch_data_256

    goto :goto_156

    :pswitch_164
    add-int/lit8 v0, v0, 0x1

    goto :goto_156

    :cond_167
    if-eqz v0, :cond_195

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zztc;->zzmp(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    if-nez v2, :cond_18f

    move v2, v1

    :goto_171
    add-int/2addr v0, v2

    new-array v4, v0, [I

    if-eqz v2, :cond_17b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17b
    :goto_17b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHu()I

    move-result v0

    if-lez v0, :cond_193

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v5

    packed-switch v5, :pswitch_data_27c

    goto :goto_17b

    :pswitch_189
    add-int/lit8 v0, v2, 0x1

    aput v5, v4, v2

    move v2, v0

    goto :goto_17b

    :cond_18f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    array-length v2, v2

    goto :goto_171

    :cond_193
    iput-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    :cond_195
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zztc;->zzmo(I)V

    goto/16 :goto_1

    :sswitch_19a
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zztn;->zzc(Lcom/google/android/gms/internal/zztc;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    if-nez v0, :cond_1c6

    move v0, v1

    :goto_1a5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_1af

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1af
    :goto_1af
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1ca

    new-instance v3, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1af

    :cond_1c6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v0, v0

    goto :goto_1a5

    :cond_1ca
    new-instance v3, Lcom/google/android/gms/internal/zzag$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzag$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zztc;->zza(Lcom/google/android/gms/internal/zztk;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    goto/16 :goto_1

    :sswitch_1da
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHm()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjv:Z

    goto/16 :goto_1

    :sswitch_data_1e2
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_21
        0x22 -> :sswitch_60
        0x2a -> :sswitch_a0
        0x32 -> :sswitch_e0
        0x3a -> :sswitch_e8
        0x40 -> :sswitch_f0
        0x48 -> :sswitch_f8
        0x50 -> :sswitch_100
        0x52 -> :sswitch_149
        0x5a -> :sswitch_19a
        0x60 -> :sswitch_1da
    .end sparse-switch

    :pswitch_data_21c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_230
    .packed-switch 0x1
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
        :pswitch_11e
    .end packed-switch

    :pswitch_data_256
    .packed-switch 0x1
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
        :pswitch_164
    .end packed-switch

    :pswitch_data_27c
    .packed-switch 0x1
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
        :pswitch_189
    .end packed-switch
.end method

.method protected zzz()I
    .registers 7

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzte;->zzz()I

    move-result v0

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/zzag$zza;->type:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzI(II)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjo:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjo:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzp(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_20
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    if-lez v2, :cond_40

    move v2, v0

    move v0, v1

    :goto_2b
    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v3, v3

    if-ge v0, v3, :cond_3f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjp:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3c

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zztd;->zzc(ILcom/google/android/gms/internal/zztk;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_3f
    move v0, v2

    :cond_40
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v2, :cond_60

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    if-lez v2, :cond_60

    move v2, v0

    move v0, v1

    :goto_4b
    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v3, v3

    if-ge v0, v3, :cond_5f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjq:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v3, v3, v0

    if-eqz v3, :cond_5c

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zztd;->zzc(ILcom/google/android/gms/internal/zztk;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_5f
    move v0, v2

    :cond_60
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    if-lez v2, :cond_80

    move v2, v0

    move v0, v1

    :goto_6b
    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v3, v3

    if-ge v0, v3, :cond_7f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjr:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v3, v3, v0

    if-eqz v3, :cond_7c

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zztd;->zzc(ILcom/google/android/gms/internal/zztk;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    :cond_7f
    move v0, v2

    :cond_80
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjs:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_93

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjs:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzp(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_93
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjt:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a6

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjt:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzp(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a6
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzju:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b7

    const/16 v2, 0x8

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzju:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zztd;->zzd(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b7
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:Z

    if-eqz v2, :cond_c4

    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjy:Z

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzc(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    if-eqz v2, :cond_e7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    array-length v2, v2

    if-lez v2, :cond_e7

    move v2, v1

    move v3, v1

    :goto_cf
    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    array-length v4, v4

    if-ge v2, v4, :cond_e0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/zztd;->zzmu(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_cf

    :cond_e0
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjx:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_e7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v2, :cond_105

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    if-lez v2, :cond_105

    :goto_f0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    array-length v2, v2

    if-ge v1, v2, :cond_105

    iget-object v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjw:[Lcom/google/android/gms/internal/zzag$zza;

    aget-object v2, v2, v1

    if-eqz v2, :cond_102

    const/16 v3, 0xb

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zztd;->zzc(ILcom/google/android/gms/internal/zztk;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_102
    add-int/lit8 v1, v1, 0x1

    goto :goto_f0

    :cond_105
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjv:Z

    if-eqz v1, :cond_112

    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzag$zza;->zzjv:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_112
    return v0
.end method
