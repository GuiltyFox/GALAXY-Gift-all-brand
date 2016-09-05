.class Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
.super Ljava/lang/Object;
.source "ActivityFragmentLifecycle.java"

# interfaces
.implements Lcom/bumptech/glide/manager/Lifecycle;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/manager/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->b:Z

    .line 49
    iget-object v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/LifecycleListener;

    .line 50
    invoke-interface {v0}, Lcom/bumptech/glide/manager/LifecycleListener;->d()V

    goto :goto_d

    .line 52
    :cond_1d
    return-void
.end method

.method public a(Lcom/bumptech/glide/manager/LifecycleListener;)V
    .registers 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->c:Z

    if-eqz v0, :cond_d

    .line 39
    invoke-interface {p1}, Lcom/bumptech/glide/manager/LifecycleListener;->f()V

    .line 45
    :goto_c
    return-void

    .line 40
    :cond_d
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->b:Z

    if-eqz v0, :cond_15

    .line 41
    invoke-interface {p1}, Lcom/bumptech/glide/manager/LifecycleListener;->d()V

    goto :goto_c

    .line 43
    :cond_15
    invoke-interface {p1}, Lcom/bumptech/glide/manager/LifecycleListener;->e()V

    goto :goto_c
.end method

.method b()V
    .registers 3

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->b:Z

    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/LifecycleListener;

    .line 57
    invoke-interface {v0}, Lcom/bumptech/glide/manager/LifecycleListener;->e()V

    goto :goto_d

    .line 59
    :cond_1d
    return-void
.end method

.method c()V
    .registers 3

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->c:Z

    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/LifecycleListener;

    .line 64
    invoke-interface {v0}, Lcom/bumptech/glide/manager/LifecycleListener;->f()V

    goto :goto_d

    .line 66
    :cond_1d
    return-void
.end method
