.class public Lcom/google/android/gms/analytics/CampaignTrackingReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field static a:Ljava/lang/Object;

.field static b:Lcom/google/android/gms/internal/zzse;

.field static c:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const-class v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzam;->a(Landroid/content/Context;Ljava/lang/Class;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->c:Ljava/lang/Boolean;

    goto :goto_d
.end method


# virtual methods
.method protected a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/analytics/CampaignTrackingService;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/analytics/CampaignTrackingService;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-static {p1}, Lcom/google/android/gms/analytics/internal/zzf;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->f()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    const-string/jumbo v2, "referrer"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "CampaignTrackingReceiver received"

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/analytics/internal/zzaf;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v4, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    :cond_28
    const-string/jumbo v0, "CampaignTrackingReceiver received unexpected intent without referrer extra"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->e(Ljava/lang/String;)V

    :goto_2e
    return-void

    :cond_2f
    invoke-static {p1}, Lcom/google/android/gms/analytics/CampaignTrackingService;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string/jumbo v4, "CampaignTrackingService not registered or disabled. Installation tracking not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {v1, v4}, Lcom/google/android/gms/analytics/internal/zzaf;->e(Ljava/lang/String;)V

    :cond_3b
    invoke-virtual {p0, v2}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->e()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->a()Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string/jumbo v0, "Received unexpected installation campaign on package side"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->f(Ljava/lang/String;)V

    goto :goto_2e

    :cond_4f
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "referrer"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_64
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-nez v3, :cond_6e

    monitor-exit v2

    goto :goto_2e

    :catchall_6b
    move-exception v0

    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_6b

    throw v0

    :cond_6e
    :try_start_6e
    sget-object v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->b:Lcom/google/android/gms/internal/zzse;

    if-nez v0, :cond_83

    new-instance v0, Lcom/google/android/gms/internal/zzse;

    const/4 v3, 0x1

    const-string/jumbo v4, "Analytics campaign WakeLock"

    invoke-direct {v0, p1, v3, v4}, Lcom/google/android/gms/internal/zzse;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->b:Lcom/google/android/gms/internal/zzse;

    sget-object v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->b:Lcom/google/android/gms/internal/zzse;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzse;->a(Z)V

    :cond_83
    sget-object v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->b:Lcom/google/android/gms/internal/zzse;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzse;->a(J)V
    :try_end_8a
    .catch Ljava/lang/SecurityException; {:try_start_6e .. :try_end_8a} :catch_8c
    .catchall {:try_start_6e .. :try_end_8a} :catchall_6b

    :goto_8a
    :try_start_8a
    monitor-exit v2

    goto :goto_2e

    :catch_8c
    move-exception v0

    const-string/jumbo v0, "CampaignTrackingService service at risk of not starting. For more reliable installation campaign reports, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->e(Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_6b

    goto :goto_8a
.end method
