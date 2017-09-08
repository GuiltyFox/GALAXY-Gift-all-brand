.class public Lcom/samsung/privilege/GalaxyGift;
.super Landroid/support/multidex/MultiDexApplication;
.source "GalaxyGift.java"


# static fields
.field public static a:Landroid/app/Application;

.field public static b:Landroid/graphics/Typeface;

.field public static c:Ljava/text/DecimalFormat;

.field public static d:Lcom/google/android/gms/analytics/Tracker;

.field public static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/privilege/GalaxyGift;->c:Ljava/text/DecimalFormat;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/privilege/GalaxyGift;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 88
    const-class v1, Lcom/samsung/privilege/GalaxyGift;

    monitor-enter v1

    :try_start_4
    sget-object v0, Lcom/samsung/privilege/GalaxyGift;->d:Lcom/google/android/gms/analytics/Tracker;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_3d

    if-nez v0, :cond_25

    .line 90
    :try_start_8
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 92
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bzbs/data/AppSetting;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 93
    sget-boolean v2, Lcom/bzbs/data/AppSetting;->q:Z

    if-ne v2, v4, :cond_29

    .line 94
    const v2, 0x7f070007

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/GalaxyGift;->d:Lcom/google/android/gms/analytics/Tracker;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_25} :catch_33
    .catchall {:try_start_8 .. :try_end_25} :catchall_3d

    .line 127
    :cond_25
    :goto_25
    :try_start_25
    sget-object v0, Lcom/samsung/privilege/GalaxyGift;->d:Lcom/google/android/gms/analytics/Tracker;
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_3d

    monitor-exit v1

    return-object v0

    .line 96
    :cond_29
    const v2, 0x7f070008

    :try_start_2c
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/GalaxyGift;->d:Lcom/google/android/gms/analytics/Tracker;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_32} :catch_33
    .catchall {:try_start_2c .. :try_end_32} :catchall_3d

    goto :goto_25

    .line 123
    :catch_33
    move-exception v0

    .line 124
    :try_start_34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "init context not null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3d

    .line 88
    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 98
    :cond_40
    :try_start_40
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bzbs/data/AppSetting;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 99
    sget-boolean v2, Lcom/bzbs/data/AppSetting;->q:Z

    if-ne v2, v4, :cond_5a

    .line 100
    const v2, 0x7f070002

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/GalaxyGift;->d:Lcom/google/android/gms/analytics/Tracker;

    goto :goto_25

    .line 102
    :cond_5a
    const v2, 0x7f070003

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/GalaxyGift;->d:Lcom/google/android/gms/analytics/Tracker;

    goto :goto_25

    .line 104
    :cond_64
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bzbs/data/AppSetting;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 105
    sget-boolean v2, Lcom/bzbs/data/AppSetting;->q:Z

    if-ne v2, v4, :cond_7e

    .line 106
    const v2, 0x7f070004

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/GalaxyGift;->d:Lcom/google/android/gms/analytics/Tracker;

    goto :goto_25

    .line 108
    :cond_7e
    const v2, 0x7f070005

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/GalaxyGift;->d:Lcom/google/android/gms/analytics/Tracker;

    goto :goto_25

    .line 110
    :cond_88
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bzbs/data/AppSetting;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 111
    sget-boolean v2, Lcom/bzbs/data/AppSetting;->q:Z

    if-ne v2, v4, :cond_a1

    .line 112
    const/high16 v2, 0x7f070000

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/GalaxyGift;->d:Lcom/google/android/gms/analytics/Tracker;

    goto :goto_25

    .line 114
    :cond_a1
    const v2, 0x7f070001

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/GalaxyGift;->d:Lcom/google/android/gms/analytics/Tracker;

    goto/16 :goto_25

    .line 117
    :cond_ac
    sget-boolean v2, Lcom/bzbs/data/AppSetting;->q:Z

    if-ne v2, v4, :cond_bb

    .line 118
    const v2, 0x7f070007

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/GalaxyGift;->d:Lcom/google/android/gms/analytics/Tracker;

    goto/16 :goto_25

    .line 120
    :cond_bb
    const v2, 0x7f070008

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/GalaxyGift;->d:Lcom/google/android/gms/analytics/Tracker;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_c4} :catch_33
    .catchall {:try_start_40 .. :try_end_c4} :catchall_3d

    goto/16 :goto_25
.end method

.method public static a()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
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
    .line 77
    sget-object v0, Lcom/samsung/privilege/GalaxyGift;->f:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 211
    :try_start_0
    sget-object v0, Lcom/samsung/privilege/GalaxyGift;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/lang/String;)V

    .line 213
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/util/Map;)V

    .line 215
    const-string/jumbo v0, "GAAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    .line 219
    :goto_2f
    return-void

    .line 216
    :catch_30
    move-exception v0

    .line 217
    const-string/jumbo v1, "GAAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "):screen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 198
    :try_start_0
    sget-object v0, Lcom/samsung/privilege/GalaxyGift;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 199
    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 200
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->b(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->a()Ljava/util/Map;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/util/Map;)V

    .line 203
    const-string/jumbo v0, "GAAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    .line 207
    :goto_3f
    return-void

    .line 204
    :catch_40
    move-exception v0

    .line 205
    const-string/jumbo v1, "GAAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "):category="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|action="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 184
    :try_start_0
    sget-object v0, Lcom/samsung/privilege/GalaxyGift;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 185
    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 186
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->b(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 187
    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->c(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->a()Ljava/util/Map;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/util/Map;)V

    .line 190
    const-string/jumbo v0, "GAAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    .line 194
    :goto_4e
    return-void

    .line 191
    :catch_4f
    move-exception v0

    .line 192
    const-string/jumbo v1, "GAAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "):category="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|action="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|label="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    .prologue
    .line 223
    :try_start_0
    sget-object v0, Lcom/samsung/privilege/GalaxyGift;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;-><init>()V

    .line 224
    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->b(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v1

    .line 225
    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->a(J)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v1

    .line 226
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v1

    .line 227
    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->c(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->a()Ljava/util/Map;

    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/util/Map;)V

    .line 230
    const-string/jumbo v0, "GAAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Timing:category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|spent_time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5d} :catch_5e

    .line 234
    :goto_5d
    return-void

    .line 231
    :catch_5e
    move-exception v0

    .line 232
    const-string/jumbo v1, "GAAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "):Timing:category="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|label="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|spent_time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 8

    .prologue
    .line 169
    :try_start_0
    sget-object v0, Lcom/samsung/privilege/GalaxyGift;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 170
    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 171
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->b(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 172
    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->c(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 173
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->a(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->a()Ljava/util/Map;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/util/Map;)V

    .line 176
    const-string/jumbo v0, "GAAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_62

    .line 180
    :goto_61
    return-void

    .line 177
    :catch_62
    move-exception v0

    .line 178
    const-string/jumbo v1, "GAAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "):category="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|action="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|label="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61
.end method

.method private b()V
    .registers 4

    .prologue
    const v2, 0x61a8000

    .line 73
    new-instance v0, Lcom/bzbs/marketplace/util/CacheLibs;

    const v1, 0x7f090257

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/GalaxyGift;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lcom/bzbs/marketplace/util/CacheLibs;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, p0}, Lcom/bzbs/marketplace/util/CacheLibs;->a(Landroid/app/Application;)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/GalaxyGift;->f:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    .line 74
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    .prologue
    .line 45
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 46
    sput-object p0, Lcom/samsung/privilege/GalaxyGift;->a:Landroid/app/Application;

    .line 50
    :try_start_5
    invoke-virtual {p0}, Lcom/samsung/privilege/GalaxyGift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_3e

    .line 56
    :goto_c
    new-instance v0, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    invoke-direct {v0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;-><init>()V

    const-string/jumbo v1, "fonts/kit55p.ttf"

    .line 57
    invoke-virtual {v0, v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->a(Ljava/lang/String;)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    move-result-object v0

    const v1, 0x7f010037

    .line 58
    invoke-virtual {v0, v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->a(I)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->a()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v0

    .line 56
    invoke-static {v0}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->a(Luk/co/chrisjenx/calligraphy/CalligraphyConfig;)V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/privilege/GalaxyGift;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/kit55p.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/GalaxyGift;->b:Landroid/graphics/Typeface;

    .line 64
    invoke-direct {p0}, Lcom/samsung/privilege/GalaxyGift;->b()V

    .line 67
    sput-object p0, Lcom/samsung/privilege/GalaxyGift;->g:Landroid/content/Context;

    .line 68
    sget-object v0, Lcom/samsung/privilege/GalaxyGift;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    .line 70
    return-void

    .line 51
    :catch_3e
    move-exception v0

    goto :goto_c
.end method
