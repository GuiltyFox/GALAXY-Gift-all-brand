.class Lcom/google/android/gms/internal/zzrd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzk$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrd;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzrd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrd$1;->a:Lcom/google/android/gms/internal/zzrd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrd$1;->a:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrd;->e()Z

    move-result v0

    return v0
.end method

.method public s()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
