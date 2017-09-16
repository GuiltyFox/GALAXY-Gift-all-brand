.class final Lcom/google/android/gms/internal/zzqq$zzb;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzqq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzqq;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqq$zzb;->a:Lcom/google/android/gms/internal/zzqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzqq;Lcom/google/android/gms/internal/zzqq$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqq$zzb;-><init>(Lcom/google/android/gms/internal/zzqq;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqq$zzb;->a:Lcom/google/android/gms/internal/zzqq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqq;->a(Lcom/google/android/gms/internal/zzqq;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqq;->c(Lcom/google/android/gms/common/api/Result;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
