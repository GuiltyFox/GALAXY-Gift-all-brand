.class public Lcom/google/android/gms/internal/zzqw;
.super Lcom/google/android/gms/internal/zzqp;


# instance fields
.field private final e:Lcom/google/android/gms/common/util/zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/util/zza",
            "<",
            "Lcom/google/android/gms/internal/zzql",
            "<*>;>;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/internal/zzrh;


# virtual methods
.method public a()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzqp;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqw;->e:Lcom/google/android/gms/common/util/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/zza;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqw;->f:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzrh;->a(Lcom/google/android/gms/internal/zzqw;)V

    :cond_10
    return-void
.end method

.method protected a(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqw;->f:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzrh;->b(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method public b()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzqp;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqw;->f:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzrh;->b(Lcom/google/android/gms/internal/zzqw;)V

    return-void
.end method

.method protected c()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqw;->f:Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh;->c()V

    return-void
.end method

.method e()Lcom/google/android/gms/common/util/zza;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/util/zza",
            "<",
            "Lcom/google/android/gms/internal/zzql",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqw;->e:Lcom/google/android/gms/common/util/zza;

    return-object v0
.end method
