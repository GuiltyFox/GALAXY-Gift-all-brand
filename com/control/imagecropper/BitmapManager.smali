.class public Lcom/control/imagecropper/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/control/imagecropper/BitmapManager$State;,
        Lcom/control/imagecropper/BitmapManager$ThreadSet;,
        Lcom/control/imagecropper/BitmapManager$ThreadStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapManager"

.field private static sManager:Lcom/control/imagecropper/BitmapManager;


# instance fields
.field private final mThreadStatus:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/control/imagecropper/BitmapManager$ThreadStatus;",
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

    sput-object v0, Lcom/control/imagecropper/BitmapManager;->sManager:Lcom/control/imagecropper/BitmapManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/control/imagecropper/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    .line 97
    return-void
.end method

.method private declared-synchronized getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/control/imagecropper/BitmapManager$ThreadStatus;
    .registers 4
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 104
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/control/imagecropper/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/control/imagecropper/BitmapManager$ThreadStatus;

    .line 105
    .local v0, "status":Lcom/control/imagecropper/BitmapManager$ThreadStatus;
    if-nez v0, :cond_16

    .line 106
    new-instance v0, Lcom/control/imagecropper/BitmapManager$ThreadStatus;

    .end local v0    # "status":Lcom/control/imagecropper/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/control/imagecropper/BitmapManager$ThreadStatus;-><init>(Lcom/control/imagecropper/BitmapManager$ThreadStatus;)V

    .line 107
    .restart local v0    # "status":Lcom/control/imagecropper/BitmapManager$ThreadStatus;
    iget-object v1, p0, Lcom/control/imagecropper/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 109
    :cond_16
    monitor-exit p0

    return-object v0

    .line 104
    .end local v0    # "status":Lcom/control/imagecropper/BitmapManager$ThreadStatus;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized instance()Lcom/control/imagecropper/BitmapManager;
    .registers 2

    .prologue
    .line 202
    const-class v1, Lcom/control/imagecropper/BitmapManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/control/imagecropper/BitmapManager;->sManager:Lcom/control/imagecropper/BitmapManager;

    if-nez v0, :cond_e

    .line 203
    new-instance v0, Lcom/control/imagecropper/BitmapManager;

    invoke-direct {v0}, Lcom/control/imagecropper/BitmapManager;-><init>()V

    sput-object v0, Lcom/control/imagecropper/BitmapManager;->sManager:Lcom/control/imagecropper/BitmapManager;

    .line 205
    :cond_e
    sget-object v0, Lcom/control/imagecropper/BitmapManager;->sManager:Lcom/control/imagecropper/BitmapManager;
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

.method private declared-synchronized setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/control/imagecropper/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/control/imagecropper/BitmapManager$ThreadStatus;

    move-result-object v0

    iput-object p2, v0, Lcom/control/imagecropper/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 120
    monitor-exit p0

    return-void

    .line 119
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized allowThreadDecoding(Lcom/control/imagecropper/BitmapManager$ThreadSet;)V
    .registers 5
    .param p1, "threads"    # Lcom/control/imagecropper/BitmapManager$ThreadSet;

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/control/imagecropper/BitmapManager$ThreadSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_17

    move-result v2

    if-nez v2, :cond_d

    .line 143
    monitor-exit p0

    return-void

    .line 140
    :cond_d
    :try_start_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 141
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Lcom/control/imagecropper/BitmapManager;->allowThreadDecoding(Ljava/lang/Thread;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_17

    goto :goto_5

    .line 140
    .end local v0    # "t":Ljava/lang/Thread;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized allowThreadDecoding(Ljava/lang/Thread;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 169
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/control/imagecropper/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/control/imagecropper/BitmapManager$ThreadStatus;

    move-result-object v0

    sget-object v1, Lcom/control/imagecropper/BitmapManager$State;->ALLOW:Lcom/control/imagecropper/BitmapManager$State;

    iput-object v1, v0, Lcom/control/imagecropper/BitmapManager$ThreadStatus;->mState:Lcom/control/imagecropper/BitmapManager$State;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 170
    monitor-exit p0

    return-void

    .line 169
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canThreadDecoding(Ljava/lang/Thread;)Z
    .registers 6
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    const/4 v1, 0x1

    .line 158
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/control/imagecropper/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/control/imagecropper/BitmapManager$ThreadStatus;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_16

    .line 159
    .local v0, "status":Lcom/control/imagecropper/BitmapManager$ThreadStatus;
    if-nez v0, :cond_e

    .line 164
    :cond_c
    :goto_c
    monitor-exit p0

    return v1

    :cond_e
    :try_start_e
    iget-object v2, v0, Lcom/control/imagecropper/BitmapManager$ThreadStatus;->mState:Lcom/control/imagecropper/BitmapManager$State;

    sget-object v3, Lcom/control/imagecropper/BitmapManager$State;->CANCEL:Lcom/control/imagecropper/BitmapManager$State;
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_16

    if-ne v2, v3, :cond_c

    const/4 v1, 0x0

    goto :goto_c

    .line 158
    .end local v0    # "status":Lcom/control/imagecropper/BitmapManager$ThreadStatus;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized cancelThreadDecoding(Lcom/control/imagecropper/BitmapManager$ThreadSet;)V
    .registers 5
    .param p1, "threads"    # Lcom/control/imagecropper/BitmapManager$ThreadSet;

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/control/imagecropper/BitmapManager$ThreadSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_17

    move-result v2

    if-nez v2, :cond_d

    .line 150
    monitor-exit p0

    return-void

    .line 147
    :cond_d
    :try_start_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 148
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Lcom/control/imagecropper/BitmapManager;->cancelThreadDecoding(Ljava/lang/Thread;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_17

    goto :goto_5

    .line 147
    .end local v0    # "t":Ljava/lang/Thread;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized cancelThreadDecoding(Ljava/lang/Thread;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 174
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/control/imagecropper/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/control/imagecropper/BitmapManager$ThreadStatus;

    move-result-object v0

    .line 175
    .local v0, "status":Lcom/control/imagecropper/BitmapManager$ThreadStatus;
    sget-object v1, Lcom/control/imagecropper/BitmapManager$State;->CANCEL:Lcom/control/imagecropper/BitmapManager$State;

    iput-object v1, v0, Lcom/control/imagecropper/BitmapManager$ThreadStatus;->mState:Lcom/control/imagecropper/BitmapManager$State;

    .line 176
    iget-object v1, v0, Lcom/control/imagecropper/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_12

    .line 177
    iget-object v1, v0, Lcom/control/imagecropper/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 181
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 182
    monitor-exit p0

    return-void

    .line 174
    .end local v0    # "status":Lcom/control/imagecropper/BitmapManager$ThreadStatus;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v0, 0x0

    .line 214
    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v2, :cond_6

    .line 228
    :cond_5
    :goto_5
    return-object v0

    .line 218
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 219
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {p0, v1}, Lcom/control/imagecropper/BitmapManager;->canThreadDecoding(Ljava/lang/Thread;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 224
    invoke-direct {p0, v1, p2}, Lcom/control/imagecropper/BitmapManager;->setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V

    .line 225
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 227
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v1}, Lcom/control/imagecropper/BitmapManager;->removeDecodingOptions(Ljava/lang/Thread;)V

    goto :goto_5
.end method

.method public declared-synchronized dump()V
    .registers 8

    .prologue
    .line 190
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/control/imagecropper/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 192
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Thread;Lcom/control/imagecropper/BitmapManager$ThreadStatus;>;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_54

    move-result v2

    if-nez v2, :cond_13

    .line 198
    monitor-exit p0

    return-void

    .line 193
    :cond_13
    :try_start_13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 194
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;Lcom/control/imagecropper/BitmapManager$ThreadStatus;>;"
    const-string v3, "BitmapManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[Dump] Thread "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 196
    const-string v4, ")\'s status is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_13 .. :try_end_53} :catchall_54

    goto :goto_b

    .line 190
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;Lcom/control/imagecropper/BitmapManager$ThreadStatus;>;"
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Thread;Lcom/control/imagecropper/BitmapManager$ThreadStatus;>;>;"
    :catchall_54
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getDecodingOptions(Ljava/lang/Thread;)Landroid/graphics/BitmapFactory$Options;
    .registers 4
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 124
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/control/imagecropper/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/control/imagecropper/BitmapManager$ThreadStatus;

    .line 125
    .local v0, "status":Lcom/control/imagecropper/BitmapManager$ThreadStatus;
    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/control/imagecropper/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    :goto_d
    monitor-exit p0

    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_d

    .line 124
    .end local v0    # "status":Lcom/control/imagecropper/BitmapManager$ThreadStatus;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized removeDecodingOptions(Ljava/lang/Thread;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/control/imagecropper/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/control/imagecropper/BitmapManager$ThreadStatus;

    .line 131
    .local v0, "status":Lcom/control/imagecropper/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/control/imagecropper/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 132
    monitor-exit p0

    return-void

    .line 130
    .end local v0    # "status":Lcom/control/imagecropper/BitmapManager$ThreadStatus;
    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1
.end method
