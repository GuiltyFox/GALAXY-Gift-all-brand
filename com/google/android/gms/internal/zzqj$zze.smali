.class public final Lcom/google/android/gms/internal/zzqj$zze;
.super Lcom/google/android/gms/internal/zzqj$zza;


# instance fields
.field public final c:Lcom/google/android/gms/internal/zzrr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzrr$zzb",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzrr$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzrr$zzb",
            "<*>;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzqj$zza;-><init>(ILcom/google/android/gms/tasks/TaskCompletionSource;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqj$zze;->c:Lcom/google/android/gms/internal/zzrr$zzb;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/gms/common/api/Status;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzqj$zza;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/gms/internal/zzqv;Z)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/zzqj$zza;->a(Lcom/google/android/gms/internal/zzqv;Z)V

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/zzrh$zza;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzrh$zza",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrh$zza;->d()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqj$zze;->c:Lcom/google/android/gms/internal/zzrr$zzb;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrx;

    if-eqz v0, :cond_1f

    iget-object v1, v0, Lcom/google/android/gms/internal/zzrx;->b:Lcom/google/android/gms/internal/zzsh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrh$zza;->c()Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqj$zze;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzsh;->a(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrx;->a:Lcom/google/android/gms/internal/zzrw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->a()V

    :goto_1e
    return-void

    :cond_1f
    const-string/jumbo v0, "UnregisterListenerTask"

    const-string/jumbo v1, "Received call to unregister a listener without a matching registration call."

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqj$zze;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/common/api/zza;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/zza;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Exception;)Z

    goto :goto_1e
.end method
