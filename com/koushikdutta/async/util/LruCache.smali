.class public Lcom/koushikdutta/async/util/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(J)V
    .registers 8

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_12
    iput-wide p1, p0, Lcom/koushikdutta/async/util/LruCache;->c:J

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/koushikdutta/async/util/LruCache;->a:Ljava/util/LinkedHashMap;

    .line 53
    return-void
.end method

.method private b(J)V
    .registers 12

    .prologue
    const-wide/16 v6, 0x0

    .line 146
    :goto_2
    monitor-enter p0

    .line 147
    :try_start_3
    iget-wide v0, p0, Lcom/koushikdutta/async/util/LruCache;->b:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_17

    iget-object v0, p0, Lcom/koushikdutta/async/util/LruCache;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-wide v0, p0, Lcom/koushikdutta/async/util/LruCache;->b:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3c

    .line 148
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v0

    .line 152
    :cond_3c
    :try_start_3c
    iget-wide v0, p0, Lcom/koushikdutta/async/util/LruCache;->b:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_4a

    iget-object v0, p0, Lcom/koushikdutta/async/util/LruCache;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 153
    :cond_4a
    monitor-exit p0

    .line 166
    return-void

    .line 156
    :cond_4c
    iget-object v0, p0, Lcom/koushikdutta/async/util/LruCache;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 159
    iget-object v2, p0, Lcom/koushikdutta/async/util/LruCache;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-wide v2, p0, Lcom/koushikdutta/async/util/LruCache;->b:J

    invoke-direct {p0, v1, v0}, Lcom/koushikdutta/async/util/LruCache;->c(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/koushikdutta/async/util/LruCache;->b:J

    .line 161
    iget v2, p0, Lcom/koushikdutta/async/util/LruCache;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/koushikdutta/async/util/LruCache;->f:I

    .line 162
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_3c .. :try_end_79} :catchall_39

    .line 164
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v0, v3}, Lcom/koushikdutta/async/util/LruCache;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Object;)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)J"
        }
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/util/LruCache;->a(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0

    .line 231
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2f

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_2f
    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized a()J
    .registers 3

    .prologue
    .line 274
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/async/util/LruCache;->c:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)J"
        }
    .end annotation

    .prologue
    .line 245
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 62
    if-nez p1, :cond_b

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_b
    monitor-enter p0

    .line 68
    :try_start_c
    iget-object v0, p0, Lcom/koushikdutta/async/util/LruCache;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_1c

    .line 70
    iget v1, p0, Lcom/koushikdutta/async/util/LruCache;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/koushikdutta/async/util/LruCache;->g:I

    .line 71
    monitor-exit p0

    .line 105
    :goto_1b
    return-object v0

    .line 73
    :cond_1c
    iget v0, p0, Lcom/koushikdutta/async/util/LruCache;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/util/LruCache;->h:I

    .line 74
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 83
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/LruCache;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 84
    if-nez v1, :cond_2e

    .line 85
    const/4 v0, 0x0

    goto :goto_1b

    .line 74
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0

    .line 88
    :cond_2e
    monitor-enter p0

    .line 89
    :try_start_2f
    iget v0, p0, Lcom/koushikdutta/async/util/LruCache;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/util/LruCache;->e:I

    .line 90
    iget-object v0, p0, Lcom/koushikdutta/async/util/LruCache;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_4a

    .line 94
    iget-object v2, p0, Lcom/koushikdutta/async/util/LruCache;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :goto_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_2f .. :try_end_43} :catchall_54

    .line 100
    if-eqz v0, :cond_57

    .line 101
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/koushikdutta/async/util/LruCache;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b

    .line 96
    :cond_4a
    :try_start_4a
    iget-wide v2, p0, Lcom/koushikdutta/async/util/LruCache;->b:J

    invoke-direct {p0, p1, v1}, Lcom/koushikdutta/async/util/LruCache;->c(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/koushikdutta/async/util/LruCache;->b:J

    goto :goto_42

    .line 98
    :catchall_54
    move-exception v0

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_4a .. :try_end_56} :catchall_54

    throw v0

    .line 104
    :cond_57
    iget-wide v2, p0, Lcom/koushikdutta/async/util/LruCache;->c:J

    invoke-direct {p0, v2, v3}, Lcom/koushikdutta/async/util/LruCache;->b(J)V

    move-object v0, v1

    .line 105
    goto :goto_1b
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 265
    iput-wide p1, p0, Lcom/koushikdutta/async/util/LruCache;->c:J

    .line 266
    return-void
.end method

.method protected a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 208
    return-void
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 174
    if-nez p1, :cond_b

    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_b
    monitor-enter p0

    .line 180
    :try_start_c
    iget-object v0, p0, Lcom/koushikdutta/async/util/LruCache;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_1d

    .line 182
    iget-wide v2, p0, Lcom/koushikdutta/async/util/LruCache;->b:J

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/util/LruCache;->c(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/koushikdutta/async/util/LruCache;->b:J

    .line 184
    :cond_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_26

    .line 186
    if-eqz v0, :cond_25

    .line 187
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/koushikdutta/async/util/LruCache;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    :cond_25
    return-object v0

    .line 184
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 116
    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    .line 117
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_d
    monitor-enter p0

    .line 122
    :try_start_e
    iget v0, p0, Lcom/koushikdutta/async/util/LruCache;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/util/LruCache;->d:I

    .line 123
    iget-wide v0, p0, Lcom/koushikdutta/async/util/LruCache;->b:J

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/util/LruCache;->c(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/koushikdutta/async/util/LruCache;->b:J

    .line 124
    iget-object v0, p0, Lcom/koushikdutta/async/util/LruCache;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_2e

    .line 126
    iget-wide v2, p0, Lcom/koushikdutta/async/util/LruCache;->b:J

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/util/LruCache;->c(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/koushikdutta/async/util/LruCache;->b:J

    .line 128
    :cond_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_3b

    .line 130
    if-eqz v0, :cond_35

    .line 131
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/koushikdutta/async/util/LruCache;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    :cond_35
    iget-wide v2, p0, Lcom/koushikdutta/async/util/LruCache;->c:J

    invoke-direct {p0, v2, v3}, Lcom/koushikdutta/async/util/LruCache;->b(J)V

    .line 135
    return-object v0

    .line 128
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method protected c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 322
    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/koushikdutta/async/util/LruCache;->g:I

    iget v2, p0, Lcom/koushikdutta/async/util/LruCache;->h:I

    add-int/2addr v1, v2

    .line 323
    if-eqz v1, :cond_e

    iget v0, p0, Lcom/koushikdutta/async/util/LruCache;->g:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    .line 324
    :cond_e
    const-string/jumbo v1, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/koushikdutta/async/util/LruCache;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/koushikdutta/async/util/LruCache;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/koushikdutta/async/util/LruCache;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_2 .. :try_end_39} :catchall_3c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 322
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
