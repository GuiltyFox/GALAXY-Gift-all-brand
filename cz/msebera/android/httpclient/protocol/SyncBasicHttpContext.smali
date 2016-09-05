.class public Lcz/msebera/android/httpclient/protocol/SyncBasicHttpContext;
.super Lcz/msebera/android/httpclient/protocol/BasicHttpContext;
.source "SyncBasicHttpContext.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    .line 42
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 53
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;
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

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
