.class Lcom/google/android/gms/common/internal/zze$zza;
.super Lcom/google/android/gms/common/internal/zze;


# instance fields
.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/internal/zze;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/internal/zze;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zze;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze$zza;->p:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/internal/zze;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze$zza;->p:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/common/internal/zze$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/internal/zze$zza;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public b(C)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zza;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zze;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zze;->b(C)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
