.class public Lcom/bzbs/lib/survey/util/AnalyticsSurveyUtils;
.super Ljava/lang/Object;
.source "AnalyticsSurveyUtils.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 80
    const-string/jumbo v0, "%s|%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez p0, :cond_c

    const-string/jumbo p0, ""

    :cond_c
    aput-object p0, v1, v2

    const/4 v2, 0x1

    if-nez p1, :cond_14

    const-string/jumbo p1, ""

    :cond_14
    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 46
    const-string/jumbo v0, "sendAnalyticsScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendAnalyticsScreen() called with: screenName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {p0}, Lcom/bzbs/lib/survey/util/AnalyticsSurveyUtils;->b(Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 29
    sput-object p0, Lcom/bzbs/lib/survey/util/AnalyticsSurveyUtils;->a:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 61
    const-string/jumbo v0, "sendAnalyticsEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendAnalyticsEvent() called with: category = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], action = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], label = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v0, Lcom/bzbs/lib/survey/util/AnalyticsSurveyUtils;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/lib/survey/util/AnalyticsSurveyUtils;->b(Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 63
    invoke-virtual {v1, p0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 64
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->b(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 65
    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->c(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->a()Ljava/util/Map;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->a(Ljava/util/Map;)V

    .line 67
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;
    .registers 4

    .prologue
    .line 33
    const-class v1, Lcom/bzbs/lib/survey/util/AnalyticsSurveyUtils;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bzbs/lib/survey/util/AnalyticsSurveyUtils;->b:Lcom/google/android/gms/analytics/Tracker;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_21

    if-nez v0, :cond_13

    .line 35
    :try_start_7
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 37
    sget v2, Lcom/bzbs/lib/survey/R$xml;->app_tracker_rewards_production:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->a(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/util/AnalyticsSurveyUtils;->b:Lcom/google/android/gms/analytics/Tracker;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_17
    .catchall {:try_start_7 .. :try_end_13} :catchall_21

    .line 42
    :cond_13
    :try_start_13
    sget-object v0, Lcom/bzbs/lib/survey/util/AnalyticsSurveyUtils;->b:Lcom/google/android/gms/analytics/Tracker;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_21

    monitor-exit v1

    return-object v0

    .line 38
    :catch_17
    move-exception v0

    .line 39
    :try_start_18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "init context not null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_21

    .line 33
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method
