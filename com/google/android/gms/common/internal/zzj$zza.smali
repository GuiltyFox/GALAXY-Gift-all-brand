.class abstract Lcom/google/android/gms/common/internal/zzj$zza;
.super Lcom/google/android/gms/common/internal/zzj$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<TT;>.zzc<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final statusCode:I

.field public final zzajT:Landroid/os/Bundle;

.field final synthetic zzajU:Lcom/google/android/gms/common/internal/zzj;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/Bundle;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj$zza;->zzajU:Lcom/google/android/gms/common/internal/zzj;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/zzj$zzc;-><init>(Lcom/google/android/gms/common/internal/zzj;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/common/internal/zzj$zza;->statusCode:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zzj$zza;->zzajT:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected zzc(Ljava/lang/Boolean;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj$zza;->zzajU:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/IInterface;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget v1, p0, Lcom/google/android/gms/common/internal/zzj$zza;->statusCode:I

    sparse-switch v1, :sswitch_data_52

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj$zza;->zzajU:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/IInterface;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj$zza;->zzajT:Landroid/os/Bundle;

    if-eqz v1, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj$zza;->zzajT:Landroid/os/Bundle;

    const-string/jumbo v1, "pendingIntent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_23
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    iget v2, p0, Lcom/google/android/gms/common/internal/zzj$zza;->statusCode:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/zzj$zza;->zzk(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_9

    :sswitch_2e
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj$zza;->zzqv()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj$zza;->zzajU:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/IInterface;)V

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/zzj$zza;->zzk(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_9

    :sswitch_44
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj$zza;->zzajU:Lcom/google/android/gms/common/internal/zzj;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/IInterface;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "A fatal developer error has occurred. Check the logs for further information."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_2e
        0xa -> :sswitch_44
    .end sparse-switch
.end method

.method protected abstract zzk(Lcom/google/android/gms/common/ConnectionResult;)V
.end method

.method protected abstract zzqv()Z
.end method

.method protected zzqw()V
    .registers 1

    return-void
.end method

.method protected synthetic zzv(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzj$zza;->zzc(Ljava/lang/Boolean;)V

    return-void
.end method
