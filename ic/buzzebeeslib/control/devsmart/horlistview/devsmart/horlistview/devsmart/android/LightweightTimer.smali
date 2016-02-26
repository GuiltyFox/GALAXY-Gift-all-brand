.class public Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;
.super Ljava/lang/Object;
.source "LightweightTimer.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInterval:J

.field private mOnTick:Ljava/lang/Runnable;

.field private mOnTickCallback:Ljava/lang/Runnable;

.field private mRunning:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .registers 6
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "millisec"    # J

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->mHandler:Landroid/os/Handler;

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->mOnTickCallback:Ljava/lang/Runnable;

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->mRunning:Z

    .line 41
    new-instance v0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer$1;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer$1;-><init>(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;)V

    iput-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->mOnTick:Ljava/lang/Runnable;

    .line 13
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->setOnTick(Ljava/lang/Runnable;)V

    .line 14
    invoke-virtual {p0, p2, p3}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->setInterval(J)V

    .line 15
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 8
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->mOnTickCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;)Z
    .registers 2

    .prologue
    .line 10
    iget-boolean v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->mRunning:Z

    return v0
.end method


# virtual methods
.method public setInterval(J)V
    .registers 6
    .param p1, "millisec"    # J

    .prologue
    .line 22
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_9

    .line 23
    iput-wide p1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->mInterval:J

    .line 27
    return-void

    .line 25
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "timer delay must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnTick(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 18
    iput-object p1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->mOnTickCallback:Ljava/lang/Runnable;

    .line 19
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 30
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->mOnTickCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    .line 31
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->mOnTick:Ljava/lang/Runnable;

    iget-wide v2, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->mInterval:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->mRunning:Z

    .line 34
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->mRunning:Z

    .line 38
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LightweightTimer;->mOnTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method
