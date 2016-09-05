.class public Lcom/google/android/gms/analytics/internal/zzk;
.super Lcom/google/android/gms/analytics/internal/zzd;


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzqh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    new-instance v0, Lcom/google/android/gms/internal/zzqh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzk;->a:Lcom/google/android/gms/internal/zzqh;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->r()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzg;->a()Lcom/google/android/gms/internal/zzqh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzk;->a:Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqh;->a(Lcom/google/android/gms/internal/zzqh;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->b()V

    return-void
.end method

.method public b()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->v()Lcom/google/android/gms/analytics/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzk;->a:Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzqh;->a(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzan;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzk;->a:Lcom/google/android/gms/internal/zzqh;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqh;->b(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public c()Lcom/google/android/gms/internal/zzqh;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->D()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzk;->a:Lcom/google/android/gms/internal/zzqh;

    return-object v0
.end method
