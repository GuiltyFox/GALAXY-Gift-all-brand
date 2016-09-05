.class public Lcom/google/android/gms/analytics/CampaignTrackingService;
.super Landroid/app/Service;


# static fields
.field private static b:Ljava/lang/Boolean;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()V
    .registers 4

    :try_start_0
    sget-object v1, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_15

    :try_start_3
    sget-object v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->b:Lcom/google/android/gms/internal/zzse;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzse;->b()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzse;->a()V

    :cond_10
    monitor-exit v1

    :goto_11
    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    :try_start_14
    throw v0
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_15} :catch_15

    :catch_15
    move-exception v0

    goto :goto_11
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/analytics/CampaignTrackingService;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/android/gms/analytics/CampaignTrackingService;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const-class v0, Lcom/google/android/gms/analytics/CampaignTrackingService;

    invoke-static {p0, v0}, Lcom/google/android/gms/analytics/internal/zzam;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/analytics/CampaignTrackingService;->b:Ljava/lang/Boolean;

    goto :goto_d
.end method

.method private b()Landroid/os/Handler;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/CampaignTrackingService;->a:Landroid/os/Handler;

    if-nez v0, :cond_f

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/CampaignTrackingService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/CampaignTrackingService;->a:Landroid/os/Handler;

    :cond_f
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/analytics/internal/zzaf;Landroid/os/Handler;I)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/analytics/CampaignTrackingService$3;

    invoke-direct {v0, p0, p3, p1}, Lcom/google/android/gms/analytics/CampaignTrackingService$3;-><init>(Lcom/google/android/gms/analytics/CampaignTrackingService;ILcom/google/android/gms/analytics/internal/zzaf;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/google/android/gms/analytics/internal/zzf;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->f()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v1, "CampaignTrackingService is starting up"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/analytics/internal/zzf;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->f()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string/jumbo v1, "CampaignTrackingService is shutting down"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->b(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 13

    const/4 v8, 0x2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/CampaignTrackingService;->a()V

    invoke-static {p0}, Lcom/google/android/gms/analytics/internal/zzf;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzf;->f()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzf;->e()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzr;->a()Z

    move-result v3

    if-eqz v3, :cond_44

    const-string/jumbo v3, "Unexpected installation campaign (package side)"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/internal/zzaf;->f(Ljava/lang/String;)V

    :goto_1d
    invoke-direct {p0}, Lcom/google/android/gms/analytics/CampaignTrackingService;->b()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzf;->e()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->a()Z

    move-result v0

    if-nez v0, :cond_37

    const-string/jumbo v0, "No campaign found on com.android.vending.INSTALL_REFERRER \"referrer\" extra"

    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->e(Ljava/lang/String;)V

    :cond_37
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzf;->h()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/CampaignTrackingService$1;

    invoke-direct {v1, p0, v2, v3, p3}, Lcom/google/android/gms/analytics/CampaignTrackingService$1;-><init>(Lcom/google/android/gms/analytics/CampaignTrackingService;Lcom/google/android/gms/analytics/internal/zzaf;Landroid/os/Handler;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/zzg;->a(Ljava/lang/Runnable;)V

    :goto_43
    return v8

    :cond_44
    const-string/jumbo v0, "referrer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_4c
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzf;->e()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzr;->e()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v4, :cond_71

    :goto_5a
    const-string/jumbo v4, "CampaignTrackingService called. startId, campaign"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzf;->i()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/analytics/CampaignTrackingService$2;

    invoke-direct {v4, p0, v2, v3, p3}, Lcom/google/android/gms/analytics/CampaignTrackingService$2;-><init>(Lcom/google/android/gms/analytics/CampaignTrackingService;Lcom/google/android/gms/analytics/internal/zzaf;Landroid/os/Handler;I)V

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/analytics/internal/zzb;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_43

    :cond_71
    const-string/jumbo v5, "Campaign data exceed the maximum supported size and will be clipped. size, limit"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/google/android/gms/analytics/internal/zzaf;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5a
.end method
