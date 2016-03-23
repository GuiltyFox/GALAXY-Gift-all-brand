.class public Lcom/google/android/gms/analytics/internal/zzi$zza;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/internal/zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzPr:Lcom/google/android/gms/analytics/internal/zzi;

.field private volatile zzPs:Lcom/google/android/gms/analytics/internal/zzac;

.field private volatile zzPt:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzi;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    const-string/jumbo v0, "AnalyticsServiceConnection.onServiceConnected"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcx(Ljava/lang/String;)V

    monitor-enter p0

    if-nez p2, :cond_16

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    const-string/jumbo v1, "Service connected with null binder"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzi;->zzbe(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_60

    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_4a

    :goto_15
    return-void

    :cond_16
    const/4 v0, 0x0

    :try_start_17
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-static {p2}, Lcom/google/android/gms/analytics/internal/zzac$zza;->zzaf(Landroid/os/IBinder;)Lcom/google/android/gms/analytics/internal/zzac;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    const-string/jumbo v2, "Bound to IAnalyticsService interface"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/internal/zzi;->zzba(Ljava/lang/String;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_30} :catch_56
    .catchall {:try_start_17 .. :try_end_30} :catchall_60

    :goto_30
    if-nez v0, :cond_65

    :try_start_32
    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzrz()Lcom/google/android/gms/common/stats/zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzi;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-static {v2}, Lcom/google/android/gms/analytics/internal/zzi;->zza(Lcom/google/android/gms/analytics/internal/zzi;)Lcom/google/android/gms/analytics/internal/zzi$zza;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_45} :catch_83
    .catchall {:try_start_32 .. :try_end_45} :catchall_60

    :goto_45
    :try_start_45
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_15

    :catchall_4a
    move-exception v0

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4a

    throw v0

    :cond_4d
    :try_start_4d
    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    const-string/jumbo v3, "Got binder with a wrong descriptor"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/analytics/internal/zzi;->zze(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_55} :catch_56
    .catchall {:try_start_4d .. :try_end_55} :catchall_60

    goto :goto_30

    :catch_56
    move-exception v1

    :try_start_57
    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    const-string/jumbo v2, "Service connect failed to get IAnalyticsService"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/internal/zzi;->zzbe(Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_60

    goto :goto_30

    :catchall_60
    move-exception v0

    :try_start_61
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_4a

    :cond_65
    :try_start_65
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPt:Z

    if-nez v1, :cond_80

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    const-string/jumbo v2, "onServiceConnected received after the timeout limit"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/internal/zzi;->zzbd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzi;->zziW()Lcom/google/android/gms/measurement/zzg;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/internal/zzi$zza$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/analytics/internal/zzi$zza$1;-><init>(Lcom/google/android/gms/analytics/internal/zzi$zza;Lcom/google/android/gms/analytics/internal/zzac;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/zzg;->zzf(Ljava/lang/Runnable;)V

    goto :goto_45

    :cond_80
    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPs:Lcom/google/android/gms/analytics/internal/zzac;
    :try_end_82
    .catchall {:try_start_65 .. :try_end_82} :catchall_60

    goto :goto_45

    :catch_83
    move-exception v0

    goto :goto_45
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const-string/jumbo v0, "AnalyticsServiceConnection.onServiceDisconnected"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcx(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->zziW()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzi$zza$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/analytics/internal/zzi$zza$2;-><init>(Lcom/google/android/gms/analytics/internal/zzi$zza;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/zzg;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzjt()Lcom/google/android/gms/analytics/internal/zzac;
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzi;->zziS()V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.gms.analytics.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.google.android.gms"

    const-string/jumbo v4, "com.google.android.gms.analytics.service.AnalyticsService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzi;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "app_package_name"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzrz()Lcom/google/android/gms/common/stats/zzb;

    move-result-object v3

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_32
    iput-object v4, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPs:Lcom/google/android/gms/analytics/internal/zzac;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPt:Z

    iget-object v4, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-static {v4}, Lcom/google/android/gms/analytics/internal/zzi;->zza(Lcom/google/android/gms/analytics/internal/zzi;)Lcom/google/android/gms/analytics/internal/zzi$zza;

    move-result-object v4

    const/16 v5, 0x81

    invoke-virtual {v3, v2, v1, v4, v5}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    const-string/jumbo v3, "Bind to service requested"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/analytics/internal/zzi;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_56

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPt:Z

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_32 .. :try_end_55} :catchall_77

    :goto_55
    return-object v0

    :cond_56
    :try_start_56
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzi;->zziV()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzkw()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_63
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_63} :catch_7a
    .catchall {:try_start_56 .. :try_end_63} :catchall_77

    :goto_63
    const/4 v0, 0x0

    :try_start_64
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPt:Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPs:Lcom/google/android/gms/analytics/internal/zzac;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPs:Lcom/google/android/gms/analytics/internal/zzac;

    if-nez v0, :cond_75

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    const-string/jumbo v2, "Successfully bound to service but never got onServiceConnected callback"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/internal/zzi;->zzbe(Ljava/lang/String;)V

    :cond_75
    monitor-exit p0

    goto :goto_55

    :catchall_77
    move-exception v0

    monitor-exit p0
    :try_end_79
    .catchall {:try_start_64 .. :try_end_79} :catchall_77

    throw v0

    :catch_7a
    move-exception v0

    :try_start_7b
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzi$zza;->zzPr:Lcom/google/android/gms/analytics/internal/zzi;

    const-string/jumbo v1, "Wait for service connect was interrupted"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzi;->zzbd(Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_77

    goto :goto_63
.end method
