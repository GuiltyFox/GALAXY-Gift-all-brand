.class public Lcom/samsung/privilege/GalaxyGift;
.super Landroid/support/multidex/MultiDexApplication;
.source "GalaxyGift.java"


# static fields
.field public static application:Landroid/app/Application;

.field public static fontBold:Landroid/graphics/Typeface;

.field public static formatter:Ljava/text/DecimalFormat;

.field public static listActivity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static mCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field public static mTracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/privilege/GalaxyGift;->formatter:Ljava/text/DecimalFormat;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/privilege/GalaxyGift;->listActivity:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefaultTracker(Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;
    .registers 7
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 84
    const-class v3, Lcom/samsung/privilege/GalaxyGift;

    monitor-enter v3

    :try_start_4
    sget-object v2, Lcom/samsung/privilege/GalaxyGift;->mTracker:Lcom/google/android/gms/analytics/Tracker;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_3e

    if-nez v2, :cond_26

    .line 86
    :try_start_8
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 88
    .local v0, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "402705486466922"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 89
    sget-boolean v2, Lcom/bzbs/data/AppSetting;->IS_PRODUCTION:Z

    if-ne v2, v5, :cond_2a

    .line 90
    const v2, 0x7f070009

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v2

    sput-object v2, Lcom/samsung/privilege/GalaxyGift;->mTracker:Lcom/google/android/gms/analytics/Tracker;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_26} :catch_34
    .catchall {:try_start_8 .. :try_end_26} :catchall_3e

    .line 123
    .end local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    :cond_26
    :goto_26
    :try_start_26
    sget-object v2, Lcom/samsung/privilege/GalaxyGift;->mTracker:Lcom/google/android/gms/analytics/Tracker;
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_3e

    monitor-exit v3

    return-object v2

    .line 92
    .restart local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    :cond_2a
    const v2, 0x7f07000a

    :try_start_2d
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v2

    sput-object v2, Lcom/samsung/privilege/GalaxyGift;->mTracker:Lcom/google/android/gms/analytics/Tracker;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_33} :catch_34
    .catchall {:try_start_2d .. :try_end_33} :catchall_3e

    goto :goto_26

    .line 119
    .end local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    :catch_34
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    :try_start_35
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "init context not null"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_3e

    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_3e
    move-exception v2

    monitor-exit v3

    throw v2

    .line 94
    .restart local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    :cond_41
    :try_start_41
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "768830479847872"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 95
    sget-boolean v2, Lcom/bzbs/data/AppSetting;->IS_PRODUCTION:Z

    if-ne v2, v5, :cond_5c

    .line 96
    const v2, 0x7f070002

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v2

    sput-object v2, Lcom/samsung/privilege/GalaxyGift;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    goto :goto_26

    .line 98
    :cond_5c
    const v2, 0x7f070003

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v2

    sput-object v2, Lcom/samsung/privilege/GalaxyGift;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    goto :goto_26

    .line 100
    :cond_66
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "517155661760483"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 101
    sget-boolean v2, Lcom/bzbs/data/AppSetting;->IS_PRODUCTION:Z

    if-ne v2, v5, :cond_81

    .line 102
    const v2, 0x7f070004

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v2

    sput-object v2, Lcom/samsung/privilege/GalaxyGift;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    goto :goto_26

    .line 104
    :cond_81
    const v2, 0x7f070005

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v2

    sput-object v2, Lcom/samsung/privilege/GalaxyGift;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    goto :goto_26

    .line 106
    :cond_8b
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "1525635597652592"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 107
    sget-boolean v2, Lcom/bzbs/data/AppSetting;->IS_PRODUCTION:Z

    if-ne v2, v5, :cond_a5

    .line 108
    const/high16 v2, 0x7f070000

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v2

    sput-object v2, Lcom/samsung/privilege/GalaxyGift;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    goto :goto_26

    .line 110
    :cond_a5
    const v2, 0x7f070001

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v2

    sput-object v2, Lcom/samsung/privilege/GalaxyGift;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    goto/16 :goto_26

    .line 113
    :cond_b0
    sget-boolean v2, Lcom/bzbs/data/AppSetting;->IS_PRODUCTION:Z

    if-ne v2, v5, :cond_bf

    .line 114
    const v2, 0x7f070009

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v2

    sput-object v2, Lcom/samsung/privilege/GalaxyGift;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    goto/16 :goto_26

    .line 116
    :cond_bf
    const v2, 0x7f07000a

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v2

    sput-object v2, Lcom/samsung/privilege/GalaxyGift;->mTracker:Lcom/google/android/gms/analytics/Tracker;
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_c8} :catch_34
    .catchall {:try_start_41 .. :try_end_c8} :catchall_3e

    goto/16 :goto_26
.end method

.method public static getDualCache()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/samsung/privilege/GalaxyGift;->mCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    return-object v0
.end method

.method public static declared-synchronized getGoogleAnalyticsTracker()Lcom/google/android/gms/analytics/Tracker;
    .registers 3

    .prologue
    .line 79
    const-class v2, Lcom/samsung/privilege/GalaxyGift;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/samsung/privilege/service/AnalyticsTrackers;->getInstance()Lcom/samsung/privilege/service/AnalyticsTrackers;

    move-result-object v0

    .line 80
    .local v0, "analyticsTrackers":Lcom/samsung/privilege/service/AnalyticsTrackers;
    sget-object v1, Lcom/samsung/privilege/service/AnalyticsTrackers$Target;->APP:Lcom/samsung/privilege/service/AnalyticsTrackers$Target;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/service/AnalyticsTrackers;->get(Lcom/samsung/privilege/service/AnalyticsTrackers$Target;)Lcom/google/android/gms/analytics/Tracker;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_f

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 79
    :catchall_f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private initCache()V
    .registers 4

    .prologue
    const v2, 0x61a8000

    .line 69
    new-instance v0, Lcom/bzbs/marketplace/util/CacheLibs;

    const v1, 0x7f090384

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/GalaxyGift;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lcom/bzbs/marketplace/util/CacheLibs;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, p0}, Lcom/bzbs/marketplace/util/CacheLibs;->initDualCache(Landroid/app/Application;)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/GalaxyGift;->mCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    .line 70
    return-void
.end method

.method public static sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 194
    :try_start_0
    sget-object v1, Lcom/samsung/privilege/GalaxyGift;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/privilege/GalaxyGift;->getDefaultTracker(Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 195
    invoke-virtual {v2, p0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 196
    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 197
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 194
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 199
    const-string/jumbo v1, "GAAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    .line 203
    :goto_3f
    return-void

    .line 200
    :catch_40
    move-exception v0

    .line 201
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "GAAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "):category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f
.end method

.method public static sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 180
    :try_start_0
    sget-object v1, Lcom/samsung/privilege/GalaxyGift;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/privilege/GalaxyGift;->getDefaultTracker(Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 181
    invoke-virtual {v2, p0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 182
    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 183
    invoke-virtual {v2, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 184
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 180
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 186
    const-string/jumbo v1, "GAAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|label="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    .line 190
    :goto_4e
    return-void

    .line 187
    :catch_4f
    move-exception v0

    .line 188
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "GAAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "):category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|label="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e
.end method

.method public static sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 10
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Long;

    .prologue
    .line 165
    :try_start_0
    sget-object v1, Lcom/samsung/privilege/GalaxyGift;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/privilege/GalaxyGift;->getDefaultTracker(Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 166
    invoke-virtual {v2, p0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 167
    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 168
    invoke-virtual {v2, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 169
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 165
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 172
    const-string/jumbo v1, "GAAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|label="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_62

    .line 176
    :goto_61
    return-void

    .line 173
    :catch_62
    move-exception v0

    .line 174
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "GAAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "):category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|label="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61
.end method

.method public static sendAnalyticsScreen(Ljava/lang/String;)V
    .registers 6
    .param p0, "screen"    # Ljava/lang/String;

    .prologue
    .line 207
    :try_start_0
    sget-object v2, Lcom/samsung/privilege/GalaxyGift;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/privilege/GalaxyGift;->getDefaultTracker(Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 208
    .local v1, "t":Lcom/google/android/gms/analytics/Tracker;
    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 209
    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 211
    const-string/jumbo v2, "GAAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    .line 215
    .end local v1    # "t":Lcom/google/android/gms/analytics/Tracker;
    :goto_2f
    return-void

    .line 212
    :catch_30
    move-exception v0

    .line 213
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "GAAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ERROR("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "):screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f
.end method

.method public static sendAnalyticsTiming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "spent_time"    # J

    .prologue
    .line 219
    :try_start_0
    sget-object v1, Lcom/samsung/privilege/GalaxyGift;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/privilege/GalaxyGift;->getDefaultTracker(Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;-><init>()V

    .line 220
    invoke-virtual {v2, p0}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    .line 221
    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    .line 222
    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setVariable(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    .line 223
    invoke-virtual {v2, p2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    .line 224
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 219
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 226
    const-string/jumbo v1, "GAAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Timing:category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|label="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|spent_time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5d} :catch_5e

    .line 230
    :goto_5d
    return-void

    .line 227
    :catch_5e
    move-exception v0

    .line 228
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "GAAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "):Timing:category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|label="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|spent_time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    .prologue
    .line 45
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 46
    sput-object p0, Lcom/samsung/privilege/GalaxyGift;->application:Landroid/app/Application;

    .line 49
    invoke-virtual {p0}, Lcom/samsung/privilege/GalaxyGift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 52
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    invoke-direct {v0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;-><init>()V

    const-string/jumbo v1, "fonts/kit55p.ttf"

    .line 53
    invoke-virtual {v0, v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->setDefaultFontPath(Ljava/lang/String;)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    move-result-object v0

    const v1, 0x7f010037

    .line 54
    invoke-virtual {v0, v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->setFontAttrId(I)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->build()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v0

    .line 52
    invoke-static {v0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->initDefault(Luk/co/chrisjenx/calligraphy/CalligraphyConfig;)V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/privilege/GalaxyGift;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/kit55p.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/GalaxyGift;->fontBold:Landroid/graphics/Typeface;

    .line 60
    invoke-direct {p0}, Lcom/samsung/privilege/GalaxyGift;->initCache()V

    .line 63
    sput-object p0, Lcom/samsung/privilege/GalaxyGift;->mContext:Landroid/content/Context;

    .line 64
    sget-object v0, Lcom/samsung/privilege/GalaxyGift;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->getDefaultTracker(Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    .line 66
    return-void
.end method

.method public trackException(Ljava/lang/Exception;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 142
    if-eqz p1, :cond_2d

    .line 143
    invoke-static {}, Lcom/samsung/privilege/GalaxyGift;->getGoogleAnalyticsTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 145
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;-><init>()V

    new-instance v2, Lcom/google/android/gms/analytics/StandardExceptionParser;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/analytics/StandardExceptionParser;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    .line 148
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/analytics/StandardExceptionParser;->getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 149
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setFatal(Z)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 153
    .end local v0    # "t":Lcom/google/android/gms/analytics/Tracker;
    :cond_2d
    return-void
.end method
