.class public abstract Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.super Lcom/bzbs/marketplace/asynctask/http/AbstractCache;
.source "CallbackHttpAsyncTask.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/AbstractCache;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
.end method

.method public onProgress(JJ)V
    .registers 14
    .param p1, "bytesWritten"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 16
    const-string/jumbo v2, "onProgress"

    const-string/jumbo v3, "Progress %d from %d (%2.0f%%)"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v5, 0x2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_35

    long-to-double v0, p1

    const-wide/high16 v6, 0x3ff0000000000000L

    mul-double/2addr v0, v6

    long-to-double v6, p3

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x4059000000000000L

    mul-double/2addr v0, v6

    :goto_27
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void

    .line 16
    :cond_35
    const-wide/high16 v0, -0x4010000000000000L

    goto :goto_27
.end method

.method public abstract onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
.end method
