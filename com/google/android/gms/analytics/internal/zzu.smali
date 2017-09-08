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

.method public b()Lcom/google/android/gms/internal/zzmx;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzu;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzu;->r()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzi;->b()Lcom/google/android/gms/internal/zzmx;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzu;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzu;->b()Lcom/google/android/gms/internal/zzmx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmx;->b()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmx;->c()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
