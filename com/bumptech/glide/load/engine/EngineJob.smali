.class Lcom/bumptech/glide/load/engine/EngineJob;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;


# static fields
.field private static final a:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

.field private static final b:Landroid/os/Handler;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/ResourceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

.field private final e:Lcom/bumptech/glide/load/engine/EngineJobListener;

.field private final f:Lcom/bumptech/glide/load/Key;

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Ljava/util/concurrent/ExecutorService;

.field private final i:Z

.field private j:Z

.field private k:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Ljava/lang/Exception;

.field private n:Z

.field private o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/request/ResourceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/bumptech/glide/load/engine/EngineRunnable;

.field private q:Lcom/bumptech/glide/load/engine/EngineResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile r:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 23
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/EngineJob;->a:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;-><init>(Lcom/bumptech/glide/load/engine/EngineJob$1;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/load/engine/EngineJob;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/Key;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/EngineJobListener;)V
    .registers 13

    .prologue
    .line 53
    sget-object v6, Lcom/bumptech/glide/load/engine/EngineJob;->a:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/engine/EngineJob;-><init>(Lcom/bumptech/glide/load/Key;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/EngineJobListener;Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/Key;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/EngineJobListener;Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;)V
    .registers 8

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->c:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->f:Lcom/bumptech/glide/load/Key;

    .line 59
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->g:Ljava/util/concurrent/ExecutorService;

    .line 60
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->h:Ljava/util/concurrent/ExecutorService;

    .line 61
    iput-boolean p4, p0, Lcom/bumptech/glide/load/engine/EngineJob;->i:Z

    .line 62
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/EngineJob;->e:Lcom/bumptech/glide/load/engine/EngineJobListener;

    .line 63
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/EngineJob;->d:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/engine/EngineJob;)V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->b()V

    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->j:Z

    if-eqz v0, :cond_a

    .line 142
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->k:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->d()V

    .line 163
    :goto_9
    return-void

    .line 144
    :cond_a
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1b
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->d:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->k:Lcom/bumptech/glide/load/engine/Resource;

    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->i:Z

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;->a(Lcom/bumptech/glide/load/engine/Resource;Z)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->q:Lcom/bumptech/glide/load/engine/EngineResource;

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->l:Z

    .line 152
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->q:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineResource;->e()V

    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->e:Lcom/bumptech/glide/load/engine/EngineJobListener;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->f:Lcom/bumptech/glide/load/Key;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->q:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/load/engine/EngineJobListener;->a(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    .line 155
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3e
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/ResourceCallback;

    .line 156
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/EngineJob;->d(Lcom/bumptech/glide/request/ResourceCallback;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 157
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->q:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineResource;->e()V

    .line 158
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->q:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/ResourceCallback;->a(Lcom/bumptech/glide/load/engine/Resource;)V

    goto :goto_3e

    .line 162
    :cond_5b
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->q:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineResource;->f()V

    goto :goto_9
.end method

.method static synthetic b(Lcom/bumptech/glide/load/engine/EngineJob;)V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->c()V

    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->j:Z

    if-eqz v0, :cond_5

    .line 186
    :cond_4
    return-void

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->n:Z

    .line 179
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->e:Lcom/bumptech/glide/load/engine/EngineJobListener;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->f:Lcom/bumptech/glide/load/Key;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/load/engine/EngineJobListener;->a(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    .line 181
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/ResourceCallback;

    .line 182
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/EngineJob;->d(Lcom/bumptech/glide/request/ResourceCallback;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 183
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->m:Ljava/lang/Exception;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/ResourceCallback;->a(Ljava/lang/Exception;)V

    goto :goto_27
.end method

.method private c(Lcom/bumptech/glide/request/ResourceCallback;)V
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->o:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->o:Ljava/util/Set;

    .line 108
    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method private d(Lcom/bumptech/glide/request/ResourceCallback;)Z
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->o:Ljava/util/Set;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method a()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 117
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->n:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->l:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->j:Z

    if-eqz v0, :cond_e

    .line 127
    :cond_d
    :goto_d
    return-void

    .line 120
    :cond_e
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->p:Lcom/bumptech/glide/load/engine/EngineRunnable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineRunnable;->a()V

    .line 121
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->r:Ljava/util/concurrent/Future;

    .line 122
    if-eqz v0, :cond_1a

    .line 123
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 125
    :cond_1a
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->j:Z

    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->e:Lcom/bumptech/glide/load/engine/EngineJobListener;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->f:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/engine/EngineJobListener;->a(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;)V

    goto :goto_d
.end method

.method public a(Lcom/bumptech/glide/load/engine/EngineRunnable;)V
    .registers 3

    .prologue
    .line 67
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->p:Lcom/bumptech/glide/load/engine/EngineRunnable;

    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->r:Ljava/util/concurrent/Future;

    .line 69
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 136
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->k:Lcom/bumptech/glide/load/engine/Resource;

    .line 137
    sget-object v0, Lcom/bumptech/glide/load/engine/EngineJob;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 138
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/ResourceCallback;)V
    .registers 3

    .prologue
    .line 77
    invoke-static {}, Lcom/bumptech/glide/util/Util;->a()V

    .line 78
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->l:Z

    if-eqz v0, :cond_d

    .line 79
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->q:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/ResourceCallback;->a(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 85
    :goto_c
    return-void

    .line 80
    :cond_d
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->n:Z

    if-eqz v0, :cond_17

    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->m:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/ResourceCallback;->a(Ljava/lang/Exception;)V

    goto :goto_c

    .line 83
    :cond_17
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 167
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->m:Ljava/lang/Exception;

    .line 168
    sget-object v0, Lcom/bumptech/glide/load/engine/EngineJob;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 169
    return-void
.end method

.method public b(Lcom/bumptech/glide/load/engine/EngineRunnable;)V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->r:Ljava/util/concurrent/Future;

    .line 74
    return-void
.end method

.method public b(Lcom/bumptech/glide/request/ResourceCallback;)V
    .registers 3

    .prologue
    .line 88
    invoke-static {}, Lcom/bumptech/glide/util/Util;->a()V

    .line 89
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->l:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->n:Z

    if-eqz v0, :cond_f

    .line 90
    :cond_b
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/EngineJob;->c(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 97
    :cond_e
    :goto_e
    return-void

    .line 92
    :cond_f
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 94
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->a()V

    goto :goto_e
.end method
