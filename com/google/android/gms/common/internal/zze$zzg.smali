.class public final Lcom/google/android/gms/common/internal/zze$zzg;
.super Lcom/google/android/gms/common/internal/zzs$zza;


# instance fields
.field private a:Lcom/google/android/gms/common/internal/zze;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zze;I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzs$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze$zzg;->a:Lcom/google/android/gms/common/internal/zze;

    iput p2, p0, Lcom/google/android/gms/common/internal/zze$zzg;->b:I

    return-void
.end method

.method private a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzg;->a:Lcom/google/android/gms/common/internal/zze;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .registers 6

    const-string/jumbo v0, "GmsClient"

    const-string/jumbo v1, "received deprecated onAccountValidationComplete callback, ignoring"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzg;->a:Lcom/google/android/gms/common/internal/zze;

    const-string/jumbo v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzg;->a:Lcom/google/android/gms/common/internal/zze;

    iget v1, p0, Lcom/google/android/gms/common/internal/zze$zzg;->b:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/zze;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zze$zzg;->a()V

    return-void
.end method
