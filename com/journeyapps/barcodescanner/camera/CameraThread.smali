.class Lcom/journeyapps/barcodescanner/camera/CameraThread;
.super Ljava/lang/Object;
.source "CameraThread.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/journeyapps/barcodescanner/camera/CameraThread;


# instance fields
.field private c:Landroid/os/Handler;

.field private d:Landroid/os/HandlerThread;

.field private e:I

.field private final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->e:I

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->f:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public static a()Lcom/journeyapps/barcodescanner/camera/CameraThread;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->b:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    if-nez v0, :cond_b

    .line 18
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraThread;-><init>()V

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->b:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 20
    :cond_b
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->b:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 60
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->d:Landroid/os/HandlerThread;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->c:Landroid/os/Handler;

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method


# virtual methods
.method protected a(Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 43
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->c:Landroid/os/Handler;

    if-nez v0, :cond_33

    .line 45
    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->e:I

    if-gtz v0, :cond_17

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "CameraThread is not open"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0

    .line 48
    :cond_17
    :try_start_17
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "CameraThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->d:Landroid/os/HandlerThread;

    .line 49
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->d:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->c:Landroid/os/Handler;

    .line 52
    :cond_33
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_17 .. :try_end_39} :catchall_14

    .line 54
    return-void
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_3
    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->e:I

    .line 73
    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->e:I

    if-nez v0, :cond_10

    .line 74
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->c()V

    .line 76
    :cond_10
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method protected b(Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 85
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_3
    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->e:I

    .line 87
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->a(Ljava/lang/Runnable;)V

    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method
