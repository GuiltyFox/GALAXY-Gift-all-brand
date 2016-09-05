.class public final Lcom/google/android/gms/common/GooglePlayServicesUtil;
.super Ljava/lang/Object;


# static fields
.field public static final a:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static b:Z

.field public static c:Z

.field static final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static e:I

.field private static final f:Ljava/lang/Object;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/Integer;

.field private static final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->a()I

    move-result v0

    sput v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->a:I

    sput-boolean v1, Lcom/google/android/gms/common/GooglePlayServicesUtil;->b:Z

    sput-boolean v1, Lcom/google/android/gms/common/GooglePlayServicesUtil;->c:Z

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->e:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->f:Ljava/lang/Object;

    sput-object v2, Lcom/google/android/gms/common/GooglePlayServicesUtil;->g:Ljava/lang/String;

    sput-object v2, Lcom/google/android/gms/common/GooglePlayServicesUtil;->h:Ljava/lang/Integer;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private static a()I
    .registers 1

    const v0, 0x7e9e10

    return v0
.end method

.method public static a(Landroid/content/Context;)I
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x1

    const/16 v0, 0x9

    const/4 v1, 0x0

    sget-boolean v3, Lcom/google/android/gms/common/internal/zzd;->a:Z

    if-eqz v3, :cond_a

    move v0, v1

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_17} :catch_4c

    :goto_17
    const-string/jumbo v4, "com.google.android.gms"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->d(Landroid/content/Context;)V

    :cond_27
    :try_start_27
    const-string/jumbo v4, "com.google.android.gms"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_2f} :catch_57

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/common/zzd;->a()Lcom/google/android/gms/common/zzd;

    move-result-object v5

    invoke-static {p0}, Lcom/google/android/gms/internal/zznj;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_63

    sget-object v6, Lcom/google/android/gms/common/zzc$zzcg;->a:[Lcom/google/android/gms/common/zzc$zza;

    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/common/zzd;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzc$zza;)Lcom/google/android/gms/common/zzc$zza;

    move-result-object v5

    if-nez v5, :cond_a0

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play services signature invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_4c
    move-exception v4

    const-string/jumbo v4, "GooglePlayServicesUtil"

    const-string/jumbo v5, "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :catch_57
    move-exception v0

    const-string/jumbo v0, "GooglePlayServicesUtil"

    const-string/jumbo v1, "Google Play services is missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_9

    :cond_63
    :try_start_63
    const-string/jumbo v6, "com.android.vending"

    const/16 v7, 0x2040

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/common/zzc$zzcg;->a:[Lcom/google/android/gms/common/zzc$zza;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/common/zzd;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzc$zza;)Lcom/google/android/gms/common/zzc$zza;

    move-result-object v6

    if-nez v6, :cond_89

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play Store signature invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_63 .. :try_end_7d} :catch_7e

    goto :goto_9

    :catch_7e
    move-exception v1

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play Store is neither installed nor updating."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_89
    const/4 v7, 0x1

    :try_start_8a
    new-array v7, v7, [Lcom/google/android/gms/common/zzc$zza;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-virtual {v5, v4, v7}, Lcom/google/android/gms/common/zzd;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzc$zza;)Lcom/google/android/gms/common/zzc$zza;

    move-result-object v5

    if-nez v5, :cond_a0

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v2, "Google Play services signature invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8a .. :try_end_9e} :catch_7e

    goto/16 :goto_9

    :cond_a0
    sget v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->a:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zznj;->a(I)I

    move-result v0

    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Lcom/google/android/gms/internal/zznj;->a(I)I

    move-result v5

    if-ge v5, v0, :cond_da

    const-string/jumbo v0, "GooglePlayServicesUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Google Play services out of date.  Requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/google/android/gms/common/GooglePlayServicesUtil;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    goto/16 :goto_9

    :cond_da
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_e6

    :try_start_de
    const-string/jumbo v0, "com.google.android.gms"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_e5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_de .. :try_end_e5} :catch_ed

    move-result-object v0

    :cond_e6
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_fa

    const/4 v0, 0x3

    goto/16 :goto_9

    :catch_ed
    move-exception v0

    const-string/jumbo v1, "GooglePlayServicesUtil"

    const-string/jumbo v3, "Google Play services missing when getting application info."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto/16 :goto_9

    :cond_fa
    move v0, v1

    goto/16 :goto_9
.end method

.method public static a(Landroid/content/Context;I)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x12

    if-ne p1, v1, :cond_6

    :goto_5
    return v0

    :cond_6
    if-ne p1, v0, :cond_10

    const-string/jumbo v0, "com.google.android.gms"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zznx;->d()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_2e
    return v0

    :cond_2f
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v1

    goto :goto_2e

    :cond_37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x2000

    :try_start_3d
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d .. :try_end_43} :catch_44

    goto :goto_2e

    :catch_44
    move-exception v0

    move v0, v1

    goto :goto_2e
.end method

.method public static b(Landroid/content/Context;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->a()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->a()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    const-string/jumbo v2, "e"

    invoke-virtual {v1, p0, v0, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "GooglePlayServicesUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GooglePlayServices not available due to error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_37

    new-instance v1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw v1

    :cond_37
    new-instance v2, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

    const-string/jumbo v3, "Google Play Services not available"

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    throw v2

    :cond_40
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/zznx;->b()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2b

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "restricted_profile"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method private static d(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    sget-object v1, Lcom/google/android/gms/common/GooglePlayServicesUtil;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    sget-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->g:Ljava/lang/String;

    if-nez v0, :cond_55

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->g:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_52

    :try_start_16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_43

    const-string/jumbo v2, "com.google.android.gms.version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->h:Ljava/lang/Integer;
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_35} :catch_47
    .catchall {:try_start_16 .. :try_end_35} :catchall_52

    :cond_35
    :goto_35
    :try_start_35
    sget-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->h:Ljava/lang/Integer;

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_52

    if-nez v0, :cond_93

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "A required meta-data tag in your app\'s AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    const/4 v0, 0x0

    :try_start_44
    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->h:Ljava/lang/Integer;
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_44 .. :try_end_46} :catch_47
    .catchall {:try_start_44 .. :try_end_46} :catchall_52

    goto :goto_35

    :catch_47
    move-exception v0

    :try_start_48
    const-string/jumbo v2, "GooglePlayServicesUtil"

    const-string/jumbo v3, "This should never happen."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    :catchall_52
    move-exception v0

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_52

    throw v0

    :cond_55
    :try_start_55
    sget-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtil;->g:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isGooglePlayServicesAvailable should only be called with Context from your application\'s package. A previous call used package \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/common/GooglePlayServicesUtil;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' and this call used package \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_93
    .catchall {:try_start_55 .. :try_end_93} :catchall_52

    :cond_93
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/google/android/gms/common/GooglePlayServicesUtil;->a:I

    if-eq v1, v2, :cond_8

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The meta-data tag in your app\'s AndroidManifest.xml does not have the right value.  Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/google/android/gms/common/GooglePlayServicesUtil;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".  You must have the"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " following declaration within the <application> element: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "    <meta-data android:name=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "com.google.android.gms.version"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\" android:value=\"@integer/google_play_services_version\" />"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
