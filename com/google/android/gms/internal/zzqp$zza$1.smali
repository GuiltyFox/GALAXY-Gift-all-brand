.class Lcom/google/android/gms/internal/zzqp$zza$1;
.super Lcom/google/android/gms/internal/zzrj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqp$zza;->run()V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/google/android/gms/internal/zzqp$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqp$zza;Landroid/app/Dialog;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqp$zza$1;->b:Lcom/google/android/gms/internal/zzqp$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqp$zza$1;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrj$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp$zza$1;->b:Lcom/google/android/gms/internal/zzqp$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqp$zza;->a:Lcom/google/android/gms/internal/zzqp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqp;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp$zza$1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqp$zza$1;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_14
    return-void
.end method
