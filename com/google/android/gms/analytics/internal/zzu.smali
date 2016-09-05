.class public Lcom/google/android/gms/analytics/internal/zzu;
.super Lcom/google/android/gms/analytics/internal/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    return-void
.end method

.method public b()Lcom/google/android/gms/internal/zzqj;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzu;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzu;->r()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzg;->b()Lcom/google/android/gms/internal/zzqj;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzu;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzu;->b()Lcom/google/android/gms/internal/zzqj;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqj;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqj;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
