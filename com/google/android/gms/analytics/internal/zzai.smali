.class public Lcom/google/android/gms/analytics/internal/zzai;
.super Lcom/google/android/gms/analytics/internal/zzd;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:J

.field private c:J

.field private final d:Lcom/google/android/gms/analytics/internal/zzai$zza;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->c:J

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzai$zza;

    const-string/jumbo v3, "monitoring"

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->q()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->G()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/analytics/internal/zzai$zza;-><init>(Lcom/google/android/gms/analytics/internal/zzai;Ljava/lang/String;JLcom/google/android/gms/analytics/internal/zzai$1;)V

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zzai;->d:Lcom/google/android/gms/analytics/internal/zzai$zza;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/internal/zzai;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->o()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms.analytics.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->D()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string/jumbo v1, "installation_campaign"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_18
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "Failed to commit campaign data"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzai;->e(Ljava/lang/String;)V

    :cond_24
    return-void

    :cond_25
    const-string/jumbo v1, "installation_campaign"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_18
.end method

.method public b()J
    .registers 5

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->D()V

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "first_run"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_20

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->b:J

    :cond_1d
    :goto_1d
    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->b:J

    return-wide v0

    :cond_20
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->n()Lcom/google/android/gms/internal/zznl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznl;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzai;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "first_run"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_40

    const-string/jumbo v2, "Failed to commit first run time"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/analytics/internal/zzai;->e(Ljava/lang/String;)V

    :cond_40
    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->b:J

    goto :goto_1d
.end method

.method public c()Lcom/google/android/gms/analytics/internal/zzaj;
    .registers 5

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzaj;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->n()Lcom/google/android/gms/internal/zznl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->b()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/analytics/internal/zzaj;-><init>(Lcom/google/android/gms/internal/zznl;J)V

    return-object v0
.end method

.method public d()J
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->D()V

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "last_dispatch"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->c:J

    :cond_1b
    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->c:J

    return-wide v0
.end method

.method public e()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->n()Lcom/google/android/gms/internal/zznl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zznl;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzai;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "last_dispatch"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->c:J

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzai;->D()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzai;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "installation_campaign"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    :goto_16
    return-object v0

    :cond_17
    move-object v0, v1

    goto :goto_16
.end method

.method public g()Lcom/google/android/gms/analytics/internal/zzai$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzai;->d:Lcom/google/android/gms/analytics/internal/zzai$zza;

    return-object v0
.end method
