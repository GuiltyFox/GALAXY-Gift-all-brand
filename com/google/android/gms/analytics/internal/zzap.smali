.class public Lcom/google/android/gms/analytics/internal/zzap;
.super Lcom/google/android/gms/analytics/internal/zzd;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:Z

.field protected e:I

.field protected f:Z

.field protected g:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "verbose"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    const-string/jumbo v1, "info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_e

    :cond_1a
    const-string/jumbo v1, "warning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x2

    goto :goto_e

    :cond_25
    const-string/jumbo v1, "error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x3

    goto :goto_e

    :cond_30
    const/4 v0, -0x1

    goto :goto_e
.end method


# virtual methods
.method protected a()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->j()V

    return-void
.end method

.method a(Lcom/google/android/gms/analytics/internal/zzaa;)V
    .registers 5

    const/4 v2, 0x1

    const-string/jumbo v0, "Loading global XML config values"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzap;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->b:Ljava/lang/String;

    const-string/jumbo v1, "XML config - app name"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzap;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->c()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->a:Ljava/lang/String;

    const-string/jumbo v1, "XML config - app version"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzap;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2b
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->e()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzap;->a(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_47

    iput v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->c:I

    const-string/jumbo v1, "XML config - log level"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzap;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_47
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->g()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->h()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->e:I

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/internal/zzap;->d:Z

    const-string/jumbo v1, "XML config - dispatch period (sec)"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzap;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5f
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->i()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->g:Z

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/internal/zzap;->f:Z

    const-string/jumbo v1, "XML config - dry run"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzap;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_77
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->D()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->D()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->D()V

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->D()V

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->c:I

    return v0
.end method

.method public f()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->D()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->d:Z

    return v0
.end method

.method public g()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->D()V

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->e:I

    return v0
.end method

.method public h()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->D()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->f:Z

    return v0
.end method

.method public i()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->D()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzap;->g:Z

    return v0
.end method

.method protected j()V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->o()Landroid/content/Context;

    move-result-object v0

    :try_start_5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x81

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_12} :catch_1c

    move-result-object v0

    :goto_13
    if-nez v0, :cond_25

    const-string/jumbo v0, "Couldn\'t get ApplicationInfo to load global config"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzap;->e(Ljava/lang/String;)V

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    const-string/jumbo v2, "PackageManager doesn\'t know about the app package"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzap;->d(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_13

    :cond_25
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1b

    const-string/jumbo v1, "com.google.android.gms.analytics.globalConfigResource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1b

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzz;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzap;->k()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/analytics/internal/zzz;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzz;->a(I)Lcom/google/android/gms/analytics/internal/zzp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzaa;

    if-eqz v0, :cond_1b

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzap;->a(Lcom/google/android/gms/analytics/internal/zzaa;)V

    goto :goto_1b
.end method
