.class public final Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;
.super Ljava/lang/Object;
.source "AutoFocusManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private c:Z

.field private final d:Z

.field private final e:Landroid/hardware/Camera;

.field private f:Landroid/os/Handler;

.field private g:I

.field private final i:Landroid/os/Handler$Callback;

.field private final j:Landroid/hardware/Camera$AutoFocusCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    const-class v0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->a:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->h:Ljava/util/Collection;

    .line 49
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->h:Ljava/util/Collection;

    const-string/jumbo v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->h:Ljava/util/Collection;

    const-string/jumbo v1, "macro"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->g:I

    .line 53
    new-instance v1, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$1;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$1;-><init>(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->i:Landroid/os/Handler$Callback;

    .line 64
    new-instance v1, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;-><init>(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->j:Landroid/hardware/Camera$AutoFocusCallback;

    .line 78
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->i:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->f:Landroid/os/Handler;

    .line 79
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->e:Landroid/hardware/Camera;

    .line 80
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {p2}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->f()Z

    move-result v2

    if-eqz v2, :cond_61

    sget-object v2, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->h:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    :goto_35
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->d:Z

    .line 82
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Current focus mode \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'; use auto focus? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->a()V

    .line 84
    return-void

    .line 81
    :cond_61
    const/4 v0, 0x0

    goto :goto_35
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->g:I

    return v0
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;Z)Z
    .registers 2

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->d()V

    return-void
.end method

.method private declared-synchronized c()V
    .registers 5

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->b:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->f:Landroid/os/Handler;

    iget v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->g:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 89
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->f:Landroid/os/Handler;

    iget v2, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->g:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 91
    :cond_1e
    monitor-exit p0

    return-void

    .line 88
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->c()V

    return-void
.end method

.method static synthetic d(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .registers 4

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->d:Z

    if-eqz v0, :cond_16

    .line 103
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->b:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->c:Z

    if-nez v0, :cond_16

    .line 105
    :try_start_c
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->e:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->j:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->c:Z
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_16} :catch_17

    .line 115
    :cond_16
    :goto_16
    return-void

    .line 107
    :catch_17
    move-exception v0

    .line 109
    sget-object v1, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->a:Ljava/lang/String;

    const-string/jumbo v2, "Unexpected exception while focusing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->c()V

    goto :goto_16
.end method

.method private e()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->f:Landroid/os/Handler;

    iget v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->g:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->b:Z

    .line 98
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->d()V

    .line 99
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->b:Z

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->c:Z

    .line 127
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->e()V

    .line 128
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->d:Z

    if-eqz v0, :cond_12

    .line 131
    :try_start_d
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_12} :catch_13

    .line 137
    :cond_12
    :goto_12
    return-void

    .line 132
    :catch_13
    move-exception v0

    .line 134
    sget-object v1, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->a:Ljava/lang/String;

    const-string/jumbo v2, "Unexpected exception while cancelling focusing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method
