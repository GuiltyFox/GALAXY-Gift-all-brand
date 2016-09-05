.class public Lcom/samsung/privilege/control/imagecropper/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# static fields
.field private static b:Lcom/samsung/privilege/control/imagecropper/BitmapManager;


# instance fields
.field private final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager;->b:Lcom/samsung/privilege/control/imagecropper/BitmapManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/BitmapManager;->a:Ljava/util/WeakHashMap;

    .line 97
    return-void
.end method

.method public static declared-synchronized a()Lcom/samsung/privilege/control/imagecropper/BitmapManager;
    .registers 2

    .prologue
    .line 202
    const-class v1, Lcom/samsung/privilege/control/imagecropper/BitmapManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager;->b:Lcom/samsung/privilege/control/imagecropper/BitmapManager;

    if-nez v0, :cond_e

    .line 203
    new-instance v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager;

    invoke-direct {v0}, Lcom/samsung/privilege/control/imagecropper/BitmapManager;-><init>()V

    sput-object v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager;->b:Lcom/samsung/privilege/control/imagecropper/BitmapManager;

    .line 205
    :cond_e
    sget-object v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager;->b:Lcom/samsung/privilege/control/imagecropper/BitmapManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 202
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/Thread;)Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;
    .registers 4

    .prologue
    .line 104
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/BitmapManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;

    .line 105
    if-nez v0, :cond_16

    .line 106
    new-instance v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;-><init>(Lcom/samsung/privilege/control/imagecropper/BitmapManager$1;)V

    .line 107
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/BitmapManager;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 109
    :cond_16
    monitor-exit p0

    return-object v0

    .line 104
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadSet;)V
    .registers 4

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 148
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/control/imagecropper/BitmapManager;->a(Ljava/lang/Thread;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_15

    goto :goto_5

    .line 147
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    .line 150
    :cond_18
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Thread;)V
    .registers 4

    .prologue
    .line 174
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/imagecropper/BitmapManager;->b(Ljava/lang/Thread;)Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;

    move-result-object v0

    .line 175
    sget-object v1, Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;->a:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    iput-object v1, v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;->a:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    .line 176
    iget-object v1, v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;->b:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_12

    .line 177
    iget-object v0, v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 181
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 182
    monitor-exit p0

    return-void

    .line 174
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method
