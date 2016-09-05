.class public Lcom/squareup/picasso/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"

# interfaces
.implements Lcom/squareup/picasso/Cache;


# instance fields
.field final b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(I)V
    .registers 6

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-gtz p1, :cond_e

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Max size must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_e
    iput p1, p0, Lcom/squareup/picasso/LruCache;->c:I

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/squareup/picasso/LruCache;->b:Ljava/util/LinkedHashMap;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 39
    invoke-static {p1}, Lcom/squareup/picasso/Utils;->c(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/squareup/picasso/LruCache;-><init>(I)V

    .line 40
    return-void
.end method

.method private a(I)V
    .registers 5

    .prologue
    .line 91
    :goto_0
    monitor-enter p0

    .line 92
    :try_start_1
    iget v0, p0, Lcom/squareup/picasso/LruCache;->d:I

    if-ltz v0, :cond_11

    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    iget v0, p0, Lcom/squareup/picasso/LruCache;->d:I

    if-eqz v0, :cond_36

    .line 93
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
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

    .line 107
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v0

    .line 97
    :cond_36
    :try_start_36
    iget v0, p0, Lcom/squareup/picasso/LruCache;->d:I

    if-le v0, p1, :cond_42

    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 98
    :cond_42
    monitor-exit p0

    .line 109
    return-void

    .line 101
    :cond_44
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 104
    iget-object v2, p0, Lcom/squareup/picasso/LruCache;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget v1, p0, Lcom/squareup/picasso/LruCache;->d:I

    invoke-static {v0}, Lcom/squareup/picasso/Utils;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/squareup/picasso/LruCache;->d:I

    .line 106
    iget v0, p0, Lcom/squareup/picasso/LruCache;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/picasso/LruCache;->f:I

    .line 107
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_36 .. :try_end_76} :catchall_33

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()I
    .registers 2

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/squareup/picasso/LruCache;->d:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 52
    if-nez p1, :cond_b

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_b
    monitor-enter p0

    .line 58
    :try_start_c
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 59
    if-eqz v0, :cond_1e

    .line 60
    iget v1, p0, Lcom/squareup/picasso/LruCache;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/picasso/LruCache;->g:I

    .line 61
    monitor-exit p0

    .line 66
    :goto_1d
    return-object v0

    .line 63
    :cond_1e
    iget v0, p0, Lcom/squareup/picasso/LruCache;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/picasso/LruCache;->h:I

    .line 64
    monitor-exit p0

    .line 66
    const/4 v0, 0x0

    goto :goto_1d

    .line 64
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_27

    throw v0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 70
    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    .line 71
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key == null || bitmap == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_d
    monitor-enter p0

    .line 76
    :try_start_e
    iget v0, p0, Lcom/squareup/picasso/LruCache;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/picasso/LruCache;->e:I

    .line 77
    iget v0, p0, Lcom/squareup/picasso/LruCache;->d:I

    invoke-static {p2}, Lcom/squareup/picasso/Utils;->a(Landroid/graphics/Bitmap;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/picasso/LruCache;->d:I

    .line 78
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 79
    if-eqz v0, :cond_31

    .line 80
    iget v1, p0, Lcom/squareup/picasso/LruCache;->d:I

    invoke-static {v0}, Lcom/squareup/picasso/Utils;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/squareup/picasso/LruCache;->d:I

    .line 82
    :cond_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_38

    .line 84
    iget v0, p0, Lcom/squareup/picasso/LruCache;->c:I

    invoke-direct {p0, v0}, Lcom/squareup/picasso/LruCache;->a(I)V

    .line 85
    return-void

    .line 82
    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public final declared-synchronized b()I
    .registers 2

    .prologue
    .line 121
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/squareup/picasso/LruCache;->c:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
