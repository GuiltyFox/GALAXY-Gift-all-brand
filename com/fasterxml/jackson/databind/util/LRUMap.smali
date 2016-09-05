.class public Lcom/fasterxml/jackson/databind/util/LRUMap;
.super Ljava/util/LinkedHashMap;
.source "LRUMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient _jdkSerializeMaxEntries:I

.field protected final transient _maxEntries:I

.field protected final transient _readLock:Ljava/util/concurrent/locks/Lock;

.field protected final transient _writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .prologue
    .line 36
    const v0, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 37
    iput p2, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_readLock:Ljava/util/concurrent/locks/Lock;

    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_writeLock:Ljava/util/concurrent/locks/Lock;

    .line 41
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .prologue
    .line 99
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_jdkSerializeMaxEntries:I

    .line 100
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3

    .prologue
    .line 103
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_jdkSerializeMaxEntries:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 104
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 58
    :try_start_5
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_f
    move-exception v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 68
    :try_start_5
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_f
    move-exception v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 107
    new-instance v0, Lcom/fasterxml/jackson/databind/util/LRUMap;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_jdkSerializeMaxEntries:I

    iget v2, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_jdkSerializeMaxEntries:I

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 78
    :try_start_5
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_f
    move-exception v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->size()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
