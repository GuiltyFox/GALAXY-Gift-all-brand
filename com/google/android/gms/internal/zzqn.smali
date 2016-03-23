.class public final Lcom/google/android/gms/internal/zzqn;
.super Lcom/google/android/gms/measurement/zze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/measurement/zze",
        "<",
        "Lcom/google/android/gms/internal/zzqn;",
        ">;"
    }
.end annotation


# instance fields
.field private zzaRS:Ljava/lang/String;

.field private zzaRT:I

.field private zzaRU:I

.field private zzaRV:Ljava/lang/String;

.field private zzaRW:Ljava/lang/String;

.field private zzaRX:Z

.field private zzaRY:Z

.field private zzaRZ:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzqn;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/zzqn;->zzAl()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzqn;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/measurement/zze;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzbX(I)I

    iput p2, p0, Lcom/google/android/gms/internal/zzqn;->zzaRT:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzqn;->zzaRY:Z

    return-void
.end method

.method static zzAl()I
    .registers 6

    const-wide/32 v4, 0x7fffffff

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    and-long/2addr v2, v4

    long-to-int v0, v2

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    and-long/2addr v0, v4

    long-to-int v0, v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "GAv4"

    const-string/jumbo v1, "UUID.randomUUID() returned 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    goto :goto_f
.end method

.method private zzAp()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqn;->zzaRZ:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScreenViewInfo is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method


# virtual methods
.method public setScreenName(Ljava/lang/String;)V
    .registers 2
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzAp()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqn;->zzaRS:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "screenName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqn;->zzaRS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "interstitial"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzqn;->zzaRX:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "automatic"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzqn;->zzaRY:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "screenId"

    iget v2, p0, Lcom/google/android/gms/internal/zzqn;->zzaRT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "referrerScreenId"

    iget v2, p0, Lcom/google/android/gms/internal/zzqn;->zzaRU:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "referrerScreenName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqn;->zzaRV:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "referrerUri"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqn;->zzaRW:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqn;->zzE(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzAm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->zzaRS:Ljava/lang/String;

    return-object v0
.end method

.method public zzAn()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzqn;->zzaRT:I

    return v0
.end method

.method public zzAo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->zzaRW:Ljava/lang/String;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzqn;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->zzaRS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->zzaRS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqn;->setScreenName(Ljava/lang/String;)V

    :cond_d
    iget v0, p0, Lcom/google/android/gms/internal/zzqn;->zzaRT:I

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/google/android/gms/internal/zzqn;->zzaRT:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqn;->zzit(I)V

    :cond_16
    iget v0, p0, Lcom/google/android/gms/internal/zzqn;->zzaRU:I

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/google/android/gms/internal/zzqn;->zzaRU:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqn;->zziu(I)V

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->zzaRV:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->zzaRV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqn;->zzeq(Ljava/lang/String;)V

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->zzaRW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqn;->zzaRW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqn;->zzer(Ljava/lang/String;)V

    :cond_39
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqn;->zzaRX:Z

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqn;->zzaRX:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqn;->zzan(Z)V

    :cond_42
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqn;->zzaRY:Z

    if-eqz v0, :cond_4b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzqn;->zzaRY:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqn;->zzam(Z)V

    :cond_4b
    return-void
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/measurement/zze;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/zzqn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqn;->zza(Lcom/google/android/gms/internal/zzqn;)V

    return-void
.end method

.method public zzam(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzAp()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzqn;->zzaRY:Z

    return-void
.end method

.method public zzan(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzAp()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzqn;->zzaRX:Z

    return-void
.end method

.method public zzeq(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzAp()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqn;->zzaRV:Ljava/lang/String;

    return-void
.end method

.method public zzer(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzAp()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqn;->zzaRW:Ljava/lang/String;

    :goto_c
    return-void

    :cond_d
    iput-object p1, p0, Lcom/google/android/gms/internal/zzqn;->zzaRW:Ljava/lang/String;

    goto :goto_c
.end method

.method public zzit(I)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzAp()V

    iput p1, p0, Lcom/google/android/gms/internal/zzqn;->zzaRT:I

    return-void
.end method

.method public zziu(I)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqn;->zzAp()V

    iput p1, p0, Lcom/google/android/gms/internal/zzqn;->zzaRU:I

    return-void
.end method
