.class Lcom/google/android/gms/internal/zzra$2;
.super Lcom/google/android/gms/internal/zzrf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzra;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzra;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzra;Lcom/google/android/gms/internal/zzre;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzra$2;->a:Lcom/google/android/gms/internal/zzra;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzrf$zza;-><init>(Lcom/google/android/gms/internal/zzre;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzra$2;->a:Lcom/google/android/gms/internal/zzra;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzra;->a(Lcom/google/android/gms/internal/zzra;)Lcom/google/android/gms/internal/zzrf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrf;->h:Lcom/google/android/gms/internal/zzrm$zza;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzrm$zza;->a(Landroid/os/Bundle;)V

    return-void
.end method
