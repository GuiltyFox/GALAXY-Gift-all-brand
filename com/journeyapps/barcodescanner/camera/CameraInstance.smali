.class public Lcom/journeyapps/barcodescanner/camera/CameraInstance;
.super Ljava/lang/Object;
.source "CameraInstance.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/journeyapps/barcodescanner/camera/CameraThread;

.field private c:Lcom/journeyapps/barcodescanner/camera/CameraSurface;

.field private d:Lcom/journeyapps/barcodescanner/camera/CameraManager;

.field private e:Landroid/os/Handler;

.field private f:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

.field private g:Z

.field private h:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    .line 27
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->h:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 160
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->i:Ljava/lang/Runnable;

    .line 173
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->j:Ljava/lang/Runnable;

    .line 189
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$5;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$5;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->k:Ljava/lang/Runnable;

    .line 203
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$6;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$6;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->l:Ljava/lang/Runnable;

    .line 30
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->a()V

    .line 32
    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->a()Lcom/journeyapps/barcodescanner/camera/CameraThread;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->b:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 33
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;

    invoke-direct {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->d:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 34
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->d:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->h:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->a(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraManager;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->d:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    return-object v0
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Ljava/lang/Exception;)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->e:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 220
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->e:Landroid/os/Handler;

    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_camera_error:I

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 222
    :cond_f
    return-void
.end method

.method static synthetic b(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/Size;
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->h()Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraSurface;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c:Lcom/journeyapps/barcodescanner/camera/CameraSurface;

    return-object v0
.end method

.method static synthetic e(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraThread;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->b:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Ljava/lang/String;

    return-object v0
.end method

.method private h()Lcom/journeyapps/barcodescanner/Size;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->d:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->h()Lcom/journeyapps/barcodescanner/Size;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .registers 3

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    if-nez v0, :cond_d

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "CameraInstance is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_d
    return-void
.end method


# virtual methods
.method public a()Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    return-object v0
.end method

.method public a(Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->e:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .registers 3

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    if-nez v0, :cond_b

    .line 70
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->h:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 71
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->d:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->a(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    .line 73
    :cond_b
    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/camera/CameraSurface;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c:Lcom/journeyapps/barcodescanner/camera/CameraSurface;

    .line 56
    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;)V
    .registers 3

    .prologue
    .line 38
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    .line 39
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->d:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->a(Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;)V

    .line 40
    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .registers 4

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->i()V

    .line 145
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->b:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    new-instance v1, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;

    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->a(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public a(Z)V
    .registers 4

    .prologue
    .line 116
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->a()V

    .line 118
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    if-eqz v0, :cond_11

    .line 119
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->b:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    new-instance v1, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;

    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Z)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->a(Ljava/lang/Runnable;)V

    .line 126
    :cond_11
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 94
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->a()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    .line 98
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->b:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->b(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 102
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->a()V

    .line 103
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->i()V

    .line 105
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->b:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->a(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 109
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->a()V

    .line 110
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->i()V

    .line 112
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->b:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->a(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 129
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->a()V

    .line 131
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    if-eqz v0, :cond_e

    .line 132
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->b:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->a(Ljava/lang/Runnable;)V

    .line 135
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    .line 136
    return-void
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    return v0
.end method
