.class Lcom/google/android/gms/internal/zzqv$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqv;->a(Lcom/google/android/gms/internal/zzqq;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzqq;

.field final synthetic b:Lcom/google/android/gms/internal/zzqv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqv;Lcom/google/android/gms/internal/zzqq;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqv$1;->b:Lcom/google/android/gms/internal/zzqv;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqv$1;->a:Lcom/google/android/gms/internal/zzqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqv$1;->b:Lcom/google/android/gms/internal/zzqv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqv;->a(Lcom/google/android/gms/internal/zzqv;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqv$1;->a:Lcom/google/android/gms/internal/zzqq;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
