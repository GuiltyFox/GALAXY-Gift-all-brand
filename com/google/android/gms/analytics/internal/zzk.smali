.class public Lcom/google/android/gms/analytics/internal/zzk;
.super Lcom/google/android/gms/analytics/internal/zzd;


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzms;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    new-instance v0, Lcom/google/android/gms/internal/zzms;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzms;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzk;->a:Lcom/google/android/gms/internal/zzms;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->r()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzi;->a()Lcom/google/android/gms/internal/zzms;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzk;->a:Lcom/google/android/gms/internal/zzms;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzms;->a(Lcom/google/android/gms/internal/zzms;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->b()V

    return-void
.end method

.method public b()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->v()Lcom/google/android/gms/analytics/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzap;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzk;->a:Lcom/google/android/gms/internal/zzms;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzms;->a(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzap;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzk;->a:Lcom/google/android/gms/internal/zzms;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzms;->b(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public c()Lcom/google/android/gms/internal/zzms;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->D()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzk;->a:Lcom/google/android/gms/internal/zzms;

    return-object v0
.end method
