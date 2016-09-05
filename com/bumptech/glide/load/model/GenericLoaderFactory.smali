.class public Lcom/bumptech/glide/load/model/GenericLoaderFactory;
.super Ljava/lang/Object;
.source "GenericLoaderFactory.java"


# static fields
.field private static final c:Lcom/bumptech/glide/load/model/ModelLoader;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/bumptech/glide/load/model/ModelLoader;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lcom/bumptech/glide/load/model/GenericLoaderFactory$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/GenericLoaderFactory$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->c:Lcom/bumptech/glide/load/model/ModelLoader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->a:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->b:Ljava/util/Map;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->d:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 155
    if-nez v0, :cond_14

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    iget-object v1, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_14
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method

.method private b(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    sget-object v0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->c:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 151
    return-void
.end method

.method private c(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 164
    const/4 v1, 0x0

    .line 165
    if-eqz v0, :cond_12

    .line 166
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoader;

    .line 169
    :goto_11
    return-object v0

    :cond_12
    move-object v0, v1

    goto :goto_11
.end method

.method private d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 174
    const/4 v1, 0x0

    .line 175
    if-eqz v0, :cond_48

    .line 176
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    .line 179
    :goto_11
    if-nez v0, :cond_42

    .line 180
    iget-object v1, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 187
    iget-object v3, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 189
    if-eqz v0, :cond_43

    .line 190
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    .line 191
    if-eqz v0, :cond_44

    .line 199
    :cond_42
    :goto_42
    return-object v0

    :cond_43
    move-object v0, v1

    :cond_44
    move-object v1, v0

    .line 196
    goto :goto_1e

    :cond_46
    move-object v0, v1

    goto :goto_42

    :cond_48
    move-object v0, v1

    goto :goto_11
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->c(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_12

    .line 131
    sget-object v1, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->c:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_22

    move-result v1

    if-eqz v1, :cond_10

    .line 132
    const/4 v0, 0x0

    .line 146
    :cond_10
    :goto_10
    monitor-exit p0

    return-object v0

    .line 138
    :cond_12
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_25

    .line 140
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->d:Landroid/content/Context;

    invoke-interface {v1, v0, p0}, Lcom/bumptech/glide/load/model/ModelLoaderFactory;->a(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    .line 141
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_22

    goto :goto_10

    .line 126
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    .line 144
    :cond_25
    :try_start_25
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->b(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    goto :goto_10
.end method

.method public declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 75
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 76
    if-nez v0, :cond_1a

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1a
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    .line 83
    if-eqz v0, :cond_3f

    .line 86
    iget-object v1, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 87
    invoke-interface {v1, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_41

    move-result v1

    if-eqz v1, :cond_2c

    .line 88
    const/4 v0, 0x0

    .line 94
    :cond_3f
    monitor-exit p0

    return-object v0

    .line 73
    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method
