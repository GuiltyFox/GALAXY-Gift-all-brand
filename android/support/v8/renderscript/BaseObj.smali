.class public Landroid/support/v8/renderscript/BaseObj;
.super Ljava/lang/Object;
.source "BaseObj.java"


# instance fields
.field private mDestroyed:Z

.field private mID:I

.field mRS:Landroid/support/v8/renderscript/RenderScript;


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p2}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 31
    iput-object p2, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 32
    iput p1, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z

    .line 34
    return-void
.end method

.method private helpDestroy()V
    .registers 5

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "shouldDestroy":Z
    monitor-enter p0

    .line 83
    :try_start_2
    iget-boolean v2, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z

    if-nez v2, :cond_a

    .line 84
    const/4 v1, 0x1

    .line 85
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z

    .line 87
    :cond_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_31

    .line 89
    if-eqz v1, :cond_30

    .line 91
    iget-object v2, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, v2, Landroid/support/v8/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 92
    .local v0, "rlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 93
    iget-object v2, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/RenderScript;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 94
    iget-object v2, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget v3, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/RenderScript;->nObjDestroy(I)V

    .line 96
    :cond_27
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 97
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 98
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I

    .line 100
    .end local v0    # "rlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    :cond_30
    return-void

    .line 87
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2
.end method


# virtual methods
.method checkValid()V
    .registers 3

    .prologue
    .line 71
    iget v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/support/v8/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;

    move-result-object v0

    if-nez v0, :cond_13

    .line 72
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string/jumbo v1, "Invalid object."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_13
    return-void
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 114
    iget-boolean v0, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z

    if-eqz v0, :cond_d

    .line 115
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "Object already destroyed."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_d
    invoke-direct {p0}, Landroid/support/v8/renderscript/BaseObj;->helpDestroy()V

    .line 118
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    if-ne p0, p1, :cond_5

    .line 156
    :cond_4
    :goto_4
    return v1

    .line 143
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 144
    goto :goto_4

    .line 147
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 148
    goto :goto_4

    .line 151
    :cond_15
    iget-object v3, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    sget-boolean v3, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v3, :cond_24

    .line 152
    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;

    invoke-virtual {v1, p0, p1}, Landroid/support/v8/renderscript/RenderScriptThunker;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    :cond_24
    move-object v0, p1

    .line 155
    check-cast v0, Landroid/support/v8/renderscript/BaseObj;

    .line 156
    .local v0, "b":Landroid/support/v8/renderscript/BaseObj;
    iget v3, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I

    iget v4, v0, Landroid/support/v8/renderscript/BaseObj;->mID:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/support/v8/renderscript/BaseObj;->helpDestroy()V

    .line 105
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 106
    return-void
.end method

.method getID(Landroid/support/v8/renderscript/RenderScript;)I
    .registers 4
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 54
    iget-boolean v0, p0, Landroid/support/v8/renderscript/BaseObj;->mDestroyed:Z

    if-eqz v0, :cond_12

    .line 55
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "using a destroyed object."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_12
    iget v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I

    if-nez v0, :cond_1f

    .line 58
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Internal error: Object id 0."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1f
    if-eqz p1, :cond_2e

    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    if-eq p1, v0, :cond_2e

    .line 61
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "using object with mismatched context."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2e
    iget v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I

    return v0
.end method

.method getNObj()Landroid/renderscript/BaseObj;
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I

    return v0
.end method

.method setID(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 37
    iget v0, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I

    if-eqz v0, :cond_d

    .line 38
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Internal Error, reset of object ID."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_d
    iput p1, p0, Landroid/support/v8/renderscript/BaseObj;->mID:I

    .line 41
    return-void
.end method
