.class public Lcom/facebook/internal/AttributionIdentifiers;
.super Ljava/lang/Object;
.source "AttributionIdentifiers.java"


# static fields
.field private static final ANDROID_ID_COLUMN_NAME:Ljava/lang/String; = "androidid"

.field private static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field private static final ATTRIBUTION_ID_CONTENT_PROVIDER:Ljava/lang/String; = "com.facebook.katana.provider.AttributionIdProvider"

.field private static final ATTRIBUTION_ID_CONTENT_PROVIDER_WAKIZASHI:Ljava/lang/String; = "com.facebook.wakizashi.provider.AttributionIdProvider"

.field private static final CONNECTION_RESULT_SUCCESS:I = 0x0

.field private static final IDENTIFIER_REFRESH_INTERVAL_MILLIS:J = 0x36ee80L

.field private static final LIMIT_TRACKING_COLUMN_NAME:Ljava/lang/String; = "limit_tracking"

.field private static final TAG:Ljava/lang/String;

.field private static recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;


# instance fields
.field private androidAdvertiserId:Ljava/lang/String;

.field private androidInstallerPackage:Ljava/lang/String;

.field private attributionId:Ljava/lang/String;

.field private fetchTime:J

.field private limitTracking:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-class v0, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/AttributionIdentifiers;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 3

    .prologue
    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->fetchTime:J

    .line 225
    sput-object p0, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    .line 226
    return-object p0
.end method

.method private static getAndroidId(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 2

    .prologue
    .line 75
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidIdViaReflection(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    .line 76
    if-nez v0, :cond_11

    .line 77
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidIdViaService(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    .line 78
    if-nez v0, :cond_11

    .line 79
    new-instance v0, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-direct {v0}, Lcom/facebook/internal/AttributionIdentifiers;-><init>()V

    .line 82
    :cond_11
    return-object v0
.end method

.method private static getAndroidIdViaReflection(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 89
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1d

    .line 90
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "getAndroidId cannot be called on the main thread."

    invoke-direct {v0, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_14

    .line 138
    :catch_14
    move-exception v0

    .line 139
    const-string/jumbo v2, "android_id"

    invoke-static {v2, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    .line 141
    :goto_1c
    return-object v0

    .line 92
    :cond_1d
    :try_start_1d
    const-string/jumbo v0, "com.google.android.gms.common.GooglePlayServicesUtil"

    const-string/jumbo v2, "isGooglePlayServicesAvailable"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 98
    if-nez v0, :cond_33

    move-object v0, v1

    .line 99
    goto :goto_1c

    .line 102
    :cond_33
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v0, v3}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_4a

    check-cast v0, Ljava/lang/Integer;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4c

    :cond_4a
    move-object v0, v1

    .line 106
    goto :goto_1c

    .line 109
    :cond_4c
    const-string/jumbo v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string/jumbo v2, "getAdvertisingIdInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 114
    if-nez v0, :cond_62

    move-object v0, v1

    .line 115
    goto :goto_1c

    .line 117
    :cond_62
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v0, v3}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 119
    if-nez v3, :cond_71

    move-object v0, v1

    .line 120
    goto :goto_1c

    .line 123
    :cond_71
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "getId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 125
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v4, "isLimitAdTrackingEnabled"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    .line 124
    invoke-static {v2, v4, v5}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 127
    if-eqz v0, :cond_91

    if-nez v4, :cond_93

    :cond_91
    move-object v0, v1

    .line 128
    goto :goto_1c

    .line 131
    :cond_93
    new-instance v2, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-direct {v2}, Lcom/facebook/internal/AttributionIdentifiers;-><init>()V

    .line 132
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 133
    invoke-static {v3, v0, v5}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v0}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_b2} :catch_14

    move-object v0, v2

    .line 137
    goto/16 :goto_1c
.end method

.method private static getAndroidIdViaService(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 145
    new-instance v2, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;

    invoke-direct {v2, v1}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;-><init>(Lcom/facebook/internal/AttributionIdentifiers$1;)V

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    const-string/jumbo v3, "com.google.android.gms"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 150
    :try_start_1b
    new-instance v3, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;

    invoke-virtual {v2}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;-><init>(Landroid/os/IBinder;)V

    .line 151
    new-instance v0, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-direct {v0}, Lcom/facebook/internal/AttributionIdentifiers;-><init>()V

    .line 152
    invoke-virtual {v3}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;->getAdvertiserId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    .line 153
    invoke-virtual {v3}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;->isTrackingLimited()Z

    move-result v3

    iput-boolean v3, v0, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_35} :catch_39
    .catchall {:try_start_1b .. :try_end_35} :catchall_45

    .line 158
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 161
    :goto_38
    return-object v0

    .line 155
    :catch_39
    move-exception v0

    .line 156
    :try_start_3a
    const-string/jumbo v3, "android_id"

    invoke-static {v3, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_45

    .line 158
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_43
    move-object v0, v1

    .line 161
    goto :goto_38

    .line 158
    :catchall_45
    move-exception v0

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method public static getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 165
    sget-object v0, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    if-eqz v0, :cond_18

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    iget-wide v2, v2, Lcom/facebook/internal/AttributionIdentifiers;->fetchTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_18

    .line 168
    sget-object v0, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    .line 219
    :cond_17
    :goto_17
    return-object v0

    .line 171
    :cond_18
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidId(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v7

    .line 174
    const/4 v0, 0x3

    :try_start_1d
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "aid"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "androidid"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "limit_tracking"

    aput-object v1, v2, v0

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.facebook.katana.provider.AttributionIdProvider"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 181
    const-string/jumbo v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 186
    :goto_46
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_4e

    .line 188
    iput-object v0, v7, Lcom/facebook/internal/AttributionIdentifiers;->androidInstallerPackage:Ljava/lang/String;

    .line 190
    :cond_4e
    if-nez v1, :cond_70

    .line 191
    invoke-static {v7}, Lcom/facebook/internal/AttributionIdentifiers;->cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_53} :catch_cd
    .catchall {:try_start_1d .. :try_end_53} :catchall_f4

    move-result-object v0

    .line 215
    if-eqz v6, :cond_17

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_17

    .line 182
    :cond_5a
    :try_start_5a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.facebook.wakizashi.provider.AttributionIdProvider"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_100

    .line 184
    const-string/jumbo v0, "content://com.facebook.wakizashi.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_46

    .line 193
    :cond_70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_7a} :catch_cd
    .catchall {:try_start_5a .. :try_end_7a} :catchall_f4

    move-result-object v1

    .line 194
    if-eqz v1, :cond_83

    :try_start_7d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 195
    :cond_83
    invoke-static {v7}, Lcom/facebook/internal/AttributionIdentifiers;->cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_86} :catch_fe
    .catchall {:try_start_7d .. :try_end_86} :catchall_fc

    move-result-object v0

    .line 215
    if-eqz v1, :cond_17

    .line 216
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_17

    .line 197
    :cond_8d
    :try_start_8d
    const-string/jumbo v0, "aid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 198
    const-string/jumbo v2, "androidid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 199
    const-string/jumbo v3, "limit_tracking"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 201
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/internal/AttributionIdentifiers;->attributionId:Ljava/lang/String;

    .line 205
    if-lez v2, :cond_c2

    if-lez v3, :cond_c2

    .line 206
    invoke-virtual {v7}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c2

    .line 207
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    .line 209
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v7, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_c2} :catch_fe
    .catchall {:try_start_8d .. :try_end_c2} :catchall_fc

    .line 215
    :cond_c2
    if-eqz v1, :cond_c7

    .line 216
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_c7
    invoke-static {v7}, Lcom/facebook/internal/AttributionIdentifiers;->cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    goto/16 :goto_17

    .line 211
    :catch_cd
    move-exception v0

    move-object v1, v6

    .line 212
    :goto_cf
    :try_start_cf
    sget-object v2, Lcom/facebook/internal/AttributionIdentifiers;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Caught unexpected exception in getAttributionId(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ec
    .catchall {:try_start_cf .. :try_end_ec} :catchall_fc

    .line 215
    if-eqz v1, :cond_f1

    .line 216
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_f1
    move-object v0, v6

    goto/16 :goto_17

    .line 215
    :catchall_f4
    move-exception v0

    move-object v1, v6

    :goto_f6
    if-eqz v1, :cond_fb

    .line 216
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_fb
    throw v0

    .line 215
    :catchall_fc
    move-exception v0

    goto :goto_f6

    .line 211
    :catch_fe
    move-exception v0

    goto :goto_cf

    :cond_100
    move-object v1, v6

    goto/16 :goto_46
.end method

.method private static getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_f

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public getAndroidAdvertiserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidInstallerPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->androidInstallerPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->attributionId:Ljava/lang/String;

    return-object v0
.end method

.method public isTrackingLimited()Z
    .registers 2

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z

    return v0
.end method
