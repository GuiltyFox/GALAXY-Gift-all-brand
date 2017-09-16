.class Lcom/google/android/gms/internal/zzrh$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zze$zzf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzrh;

.field private final b:Lcom/google/android/gms/common/api/Api$zze;

.field private final c:Lcom/google/android/gms/internal/zzql;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzql",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzrh;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/internal/zzql;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Lcom/google/android/gms/internal/zzql",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrh$zzb;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrh$zzb;->b:Lcom/google/android/gms/common/api/Api$zze;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzrh$zzb;->c:Lcom/google/android/gms/internal/zzql;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zzb;->b:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zzb;->b:Lcom/google/android/gms/common/api/Api$zze;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/Api$zze;->a(Lcom/google/android/gms/common/internal/zzp;Ljava/util/Set;)V

    goto :goto_e

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrh$zzb;->a:Lcom/google/android/gms/internal/zzrh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrh;->j(Lcom/google/android/gms/internal/zzrh;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrh$zzb;->c:Lcom/google/android/gms/internal/zzql;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzrh$zza;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_e
.end method
