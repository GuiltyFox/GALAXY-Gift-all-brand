.class Landroid/support/design/widget/SnackbarManager;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# static fields
.field private static final LONG_DURATION_MS:I = 0xabe

.field static final MSG_TIMEOUT:I = 0x0

.field private static final SHORT_DURATION_MS:I = 0x5dc

.field private static sSnackbarManager:Landroid/support/design/widget/SnackbarManager;


# instance fields
.field private mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/SnackbarManager$1;

    invoke-direct {v2, p0}, Landroid/support/design/widget/SnackbarManager$1;-><init>(Landroid/support/design/widget/SnackbarManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method private cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z
    .registers 5

    .prologue
    .line 198
    iget-object v0, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/SnackbarManager$Callback;

    .line 199
    if-eqz v0, :cond_14

    .line 201
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 202
    invoke-interface {v0, p2}, Landroid/support/design/widget/SnackbarManager$Callback;->dismiss(I)V

    .line 203
    const/4 v0, 0x1

    .line 205
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static getInstance()Landroid/support/design/widget/SnackbarManager;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Landroid/support/design/widget/SnackbarManager;->sSnackbarManager:Landroid/support/design/widget/SnackbarManager;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Landroid/support/design/widget/SnackbarManager;

    invoke-direct {v0}, Landroid/support/design/widget/SnackbarManager;-><init>()V

    sput-object v0, Landroid/support/design/widget/SnackbarManager;->sSnackbarManager:Landroid/support/design/widget/SnackbarManager;

    .line 41
    :cond_b
    sget-object v0, Landroid/support/design/widget/SnackbarManager;->sSnackbarManager:Landroid/support/design/widget/SnackbarManager;

    return-object v0
.end method

.method private isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .registers 3

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->isSnackbar(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->isSnackbar(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V
    .registers 8

    .prologue
    .line 217
    iget v0, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    .line 230
    :goto_5
    return-void

    .line 222
    :cond_6
    const/16 v0, 0xabe

    .line 223
    iget v1, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    if-lez v1, :cond_21

    .line 224
    iget v0, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    .line 228
    :cond_e
    :goto_e
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 229
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 225
    :cond_21
    iget v1, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    .line 226
    const/16 v0, 0x5dc

    goto :goto_e
.end method

.method private showNextSnackbarLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_1a

    .line 184
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 185
    iput-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 187
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iget-object v0, v0, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/SnackbarManager$Callback;

    .line 188
    if-eqz v0, :cond_1b

    .line 189
    invoke-interface {v0}, Landroid/support/design/widget/SnackbarManager$Callback;->show()V

    .line 195
    :cond_1a
    :goto_1a
    return-void

    .line 192
    :cond_1b
    iput-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    goto :goto_1a
.end method


# virtual methods
.method public cancelTimeout(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .registers 5

    .prologue
    .line 141
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 143
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 145
    :cond_10
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public dismiss(Landroid/support/design/widget/SnackbarManager$Callback;I)V
    .registers 5

    .prologue
    .line 103
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 105
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v0, p2}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    .line 109
    :cond_e
    :goto_e
    monitor-exit v1

    .line 110
    return-void

    .line 106
    :cond_10
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 107
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v0, p2}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    goto :goto_e

    .line 109
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method handleTimeout(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V
    .registers 4

    .prologue
    .line 233
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_3
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eq v0, p1, :cond_b

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-ne v0, p1, :cond_f

    .line 235
    :cond_b
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    .line 237
    :cond_f
    monitor-exit v1

    .line 238
    return-void

    .line 237
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public isCurrent(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .registers 4

    .prologue
    .line 157
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 159
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public isCurrentOrNext(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .registers 4

    .prologue
    .line 163
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_f
    const/4 v0, 0x1

    :goto_10
    monitor-exit v1

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    .line 165
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public onDismissed(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .registers 4

    .prologue
    .line 117
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 121
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_13

    .line 122
    invoke-direct {p0}, Landroid/support/design/widget/SnackbarManager;->showNextSnackbarLocked()V

    .line 125
    :cond_13
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public onShown(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .registers 4

    .prologue
    .line 133
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 135
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v0}, Landroid/support/design/widget/SnackbarManager;->scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 137
    :cond_e
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public restoreTimeout(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .registers 4

    .prologue
    .line 149
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_3
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 151
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v0}, Landroid/support/design/widget/SnackbarManager;->scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 153
    :cond_e
    monitor-exit v1

    .line 154
    return-void

    .line 153
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public show(ILandroid/support/design/widget/SnackbarManager$Callback;)V
    .registers 6

    .prologue
    .line 71
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_3
    invoke-direct {p0, p2}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 74
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iput p1, v0, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    .line 78
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v0}, Landroid/support/design/widget/SnackbarManager;->scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 80
    monitor-exit v1

    .line 100
    :goto_1a
    return-void

    .line 81
    :cond_1b
    invoke-direct {p0, p2}, Landroid/support/design/widget/SnackbarManager;->isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 83
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iput p1, v0, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    .line 89
    :goto_25
    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 92
    monitor-exit v1

    goto :goto_1a

    .line 99
    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v0

    .line 86
    :cond_37
    :try_start_37
    new-instance v0, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {v0, p1, p2}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;-><init>(ILandroid/support/design/widget/SnackbarManager$Callback;)V

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    goto :goto_25

    .line 95
    :cond_3f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 97
    invoke-direct {p0}, Landroid/support/design/widget/SnackbarManager;->showNextSnackbarLocked()V

    .line 99
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_37 .. :try_end_46} :catchall_34

    goto :goto_1a
.end method
