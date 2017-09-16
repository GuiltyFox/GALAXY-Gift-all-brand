.class Lcom/google/android/gms/location/internal/zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/internal/zzp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/internal/zzb;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/location/internal/zzp",
        "<",
        "Lcom/google/android/gms/location/internal/zzi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/internal/zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/zzb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzb$1;->a:Lcom/google/android/gms/location/internal/zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzb$1;->a:Lcom/google/android/gms/location/internal/zzb;

    invoke-static {v0}, Lcom/google/android/gms/location/internal/zzb;->a(Lcom/google/android/gms/location/internal/zzb;)V

    return-void
.end method

.method public b()Lcom/google/android/gms/location/internal/zzi;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzb$1;->a:Lcom/google/android/gms/location/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/zzb;->t()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzi;

    return-object v0
.end method

.method public synthetic c()Landroid/os/IInterface;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/zzb$1;->b()Lcom/google/android/gms/location/internal/zzi;

    move-result-object v0

    return-object v0
.end method
