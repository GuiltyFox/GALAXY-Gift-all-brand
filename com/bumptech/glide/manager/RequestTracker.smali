.class public Lcom/bumptech/glide/manager/RequestTracker;
.super Ljava/lang/Object;
.source "RequestTracker.java"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/request/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/Request;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->a:Ljava/util/Set;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->c:Z

    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/Request;

    .line 69
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->f()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 70
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->e()V

    .line 71
    iget-object v2, p0, Lcom/bumptech/glide/manager/RequestTracker;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 74
    :cond_28
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/Request;)V
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->c:Z

    if-nez v0, :cond_d

    .line 37
    invoke-interface {p1}, Lcom/bumptech/glide/request/Request;->b()V

    .line 41
    :goto_c
    return-void

    .line 39
    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method public b()V
    .registers 4

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->c:Z

    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/Request;

    .line 82
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->g()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->i()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->f()Z

    move-result v2

    if-nez v2, :cond_d

    .line 83
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->b()V

    goto :goto_d

    .line 86
    :cond_2f
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    return-void
.end method

.method public b(Lcom/bumptech/glide/request/Request;)V
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/Request;

    .line 94
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->d()V

    goto :goto_a

    .line 96
    :cond_1a
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    return-void
.end method

.method public d()V
    .registers 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/Request;

    .line 104
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->g()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->i()Z

    move-result v2

    if-nez v2, :cond_a

    .line 106
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->e()V

    .line 107
    iget-boolean v2, p0, Lcom/bumptech/glide/manager/RequestTracker;->c:Z

    if-nez v2, :cond_2d

    .line 108
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->b()V

    goto :goto_a

    .line 110
    :cond_2d
    iget-object v2, p0, Lcom/bumptech/glide/manager/RequestTracker;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 114
    :cond_33
    return-void
.end method
