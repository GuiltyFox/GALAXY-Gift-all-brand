.class public Lcom/google/android/gms/analytics/internal/zzg;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzg;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzg;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzg;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzu;
    .registers 3

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/internal/zzu;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-object v0
.end method

.method protected a(Landroid/content/Context;)Lcom/google/android/gms/analytics/zzi;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/analytics/zzi;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzg;->b:Landroid/content/Context;

    return-object v0
.end method

.method protected b(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzk;
    .registers 3

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/internal/zzk;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-object v0
.end method

.method protected c(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zza;
    .registers 3

    new-instance v0, Lcom/google/android/gms/analytics/internal/zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/internal/zza;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-object v0
.end method

.method protected d(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzn;
    .registers 3

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/internal/zzn;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-object v0
.end method

.method protected e(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzap;
    .registers 3

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzap;

    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/internal/zzap;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-object v0
.end method

.method protected f(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzaf;
    .registers 3

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzaf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/internal/zzaf;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-object v0
.end method

.method protected g(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzr;
    .registers 3

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/internal/zzr;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-object v0
.end method

.method protected h(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/common/util/zze;
    .registers 3

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->c()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    return-object v0
.end method

.method protected i(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/GoogleAnalytics;
    .registers 3

    new-instance v0, Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-object v0
.end method

.method j(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzl;
    .registers 3

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzl;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/analytics/internal/zzl;-><init>(Lcom/google/android/gms/analytics/internal/zzf;Lcom/google/android/gms/analytics/internal/zzg;)V

    return-object v0
.end method

.method k(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzag;
    .registers 3

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzag;

    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/internal/zzag;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-object v0
.end method

.method protected l(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzb;
    .registers 3

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzb;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/analytics/internal/zzb;-><init>(Lcom/google/android/gms/analytics/internal/zzf;Lcom/google/android/gms/analytics/internal/zzg;)V

    return-object v0
.end method

.method public m(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzj;
    .registers 3

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/internal/zzj;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-object v0
.end method

.method public n(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzah;
    .registers 3

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzah;

    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/internal/zzah;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-object v0
.end method

.method public o(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzi;
    .registers 3

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/internal/zzi;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-object v0
.end method

.method public p(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzv;
    .registers 3

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/internal/zzv;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-object v0
.end method

.method public q(Lcom/google/android/gms/analytics/internal/zzf;)Lcom/google/android/gms/analytics/internal/zzai;
    .registers 3

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzai;

    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/internal/zzai;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-object v0
.end method
