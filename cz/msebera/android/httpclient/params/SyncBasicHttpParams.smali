.class public Lcz/msebera/android/httpclient/params/SyncBasicHttpParams;
.super Lcz/msebera/android/httpclient/params/BasicHttpParams;
.source "SyncBasicHttpParams.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 4

    .prologue
    .line 56
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/params/BasicHttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 61
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/params/BasicHttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcz/msebera/android/httpclient/params/BasicHttpParams;->clone()Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
