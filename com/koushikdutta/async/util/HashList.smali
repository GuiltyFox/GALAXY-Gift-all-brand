.class public Lcom/koushikdutta/async/util/HashList;
.super Ljava/lang/Object;
.source "HashList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/util/TaggedList",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/util/HashList;->a:Ljava/util/Hashtable;

    .line 14
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 21
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/util/HashList;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/util/TaggedList;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    .line 22
    if-nez v0, :cond_e

    .line 23
    const/4 v0, 0x0

    .line 24
    :goto_c
    monitor-exit p0

    return-object v0

    :cond_e
    :try_start_e
    invoke-virtual {v0}, Lcom/koushikdutta/async/util/TaggedList;->a()Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_13

    move-result-object v0

    goto :goto_c

    .line 21
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/koushikdutta/async/util/HashList;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 28
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/util/HashList;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/util/TaggedList;

    .line 29
    if-nez v0, :cond_15

    .line 30
    new-instance v0, Lcom/koushikdutta/async/util/TaggedList;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/TaggedList;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/koushikdutta/async/util/HashList;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_15
    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/util/TaggedList;->a(Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 34
    monitor-exit p0

    return-void

    .line 28
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/util/HashList;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/HashList;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 55
    if-nez v0, :cond_11

    .line 56
    new-instance v0, Lcom/koushikdutta/async/util/TaggedList;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/TaggedList;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/koushikdutta/async/util/HashList;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_11
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 61
    monitor-exit p0

    return-void

    .line 54
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/util/HashList;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
