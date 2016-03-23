.class final Lcom/google/android/gms/tagmanager/zzdb$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation


# instance fields
.field private final zzBv:J

.field private final zzaLk:J

.field private final zzbgq:Ljava/lang/String;

.field private final zzbgr:Ljava/lang/String;

.field private final zzbgs:J

.field private zzbgt:J

.field final synthetic zzbgu:Lcom/google/android/gms/tagmanager/zzdb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzdb;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 10

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgu:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgq:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgr:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzaLk:J

    iput-wide p6, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzBv:J

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_27

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgt:J

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_27

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgu:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdb;->zza(Lcom/google/android/gms/tagmanager/zzdb;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgr:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_26
    :goto_26
    return-void

    :cond_27
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgt:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgt:J

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzcC()Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgu:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzdb;->zzb(Lcom/google/android/gms/tagmanager/zzdb;)Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    const/16 v3, 0x10

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "event"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgq:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "gtm.timerInterval"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzaLk:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "gtm.timerLimit"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgs:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "gtm.timerStartTime"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzBv:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "gtm.timerCurrentTime"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "gtm.timerElapsedTime"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzBv:J

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/16 v0, 0xc

    const-string/jumbo v1, "gtm.timerEventNumber"

    aput-object v1, v3, v0

    const/16 v0, 0xd

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgt:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/16 v0, 0xe

    const-string/jumbo v1, "gtm.triggers"

    aput-object v1, v3, v0

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgr:Ljava/lang/String;

    aput-object v1, v3, v0

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    :cond_c0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgu:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdb;->zzc(Lcom/google/android/gms/tagmanager/zzdb;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzaLk:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_26
.end method

.method protected zzcC()Z
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgu:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdb;->zzd(Lcom/google/android/gms/tagmanager/zzdb;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgu:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdb;->zze(Lcom/google/android/gms/tagmanager/zzdb;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgu:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdb;->zzf(Lcom/google/android/gms/tagmanager/zzdb;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgu:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdb;->zzf(Lcom/google/android/gms/tagmanager/zzdb;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzbgu:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzdb;->zzf(Lcom/google/android/gms/tagmanager/zzdb;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v5, :cond_44

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v0, v4, :cond_44

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    goto :goto_e

    :cond_6c
    const/4 v0, 0x0

    goto :goto_e
.end method
