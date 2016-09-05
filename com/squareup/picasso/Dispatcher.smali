.class Lcom/squareup/picasso/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field final a:Lcom/squareup/picasso/Dispatcher$DispatcherThread;

.field final b:Landroid/content/Context;

.field final c:Ljava/util/concurrent/ExecutorService;

.field final d:Lcom/squareup/picasso/Downloader;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/squareup/picasso/BitmapHunter;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final i:Landroid/os/Handler;

.field final j:Landroid/os/Handler;

.field final k:Lcom/squareup/picasso/Cache;

.field final l:Lcom/squareup/picasso/Stats;

.field final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/BitmapHunter;",
            ">;"
        }
    .end annotation
.end field

.field final n:Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;

.field final o:Z

.field p:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/squareup/picasso/Downloader;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;)V
    .registers 9

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/squareup/picasso/Dispatcher$DispatcherThread;

    invoke-direct {v0}, Lcom/squareup/picasso/Dispatcher$DispatcherThread;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->a:Lcom/squareup/picasso/Dispatcher$DispatcherThread;

    .line 102
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->a:Lcom/squareup/picasso/Dispatcher$DispatcherThread;

    invoke-virtual {v0}, Lcom/squareup/picasso/Dispatcher$DispatcherThread;->start()V

    .line 103
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->a:Lcom/squareup/picasso/Dispatcher$DispatcherThread;

    invoke-virtual {v0}, Lcom/squareup/picasso/Dispatcher$DispatcherThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Utils;->a(Landroid/os/Looper;)V

    .line 104
    iput-object p1, p0, Lcom/squareup/picasso/Dispatcher;->b:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/squareup/picasso/Dispatcher;->c:Ljava/util/concurrent/ExecutorService;

    .line 106
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->e:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->f:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->g:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->h:Ljava/util/Set;

    .line 110
    new-instance v0, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->a:Lcom/squareup/picasso/Dispatcher$DispatcherThread;

    invoke-virtual {v1}, Lcom/squareup/picasso/Dispatcher$DispatcherThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/squareup/picasso/Dispatcher$DispatcherHandler;-><init>(Landroid/os/Looper;Lcom/squareup/picasso/Dispatcher;)V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->i:Landroid/os/Handler;

    .line 111
    iput-object p4, p0, Lcom/squareup/picasso/Dispatcher;->d:Lcom/squareup/picasso/Downloader;

    .line 112
    iput-object p3, p0, Lcom/squareup/picasso/Dispatcher;->j:Landroid/os/Handler;

    .line 113
    iput-object p5, p0, Lcom/squareup/picasso/Dispatcher;->k:Lcom/squareup/picasso/Cache;

    .line 114
    iput-object p6, p0, Lcom/squareup/picasso/Dispatcher;->l:Lcom/squareup/picasso/Stats;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->m:Ljava/util/List;

    .line 116
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Utils;->d(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/picasso/Dispatcher;->p:Z

    .line 117
    const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/squareup/picasso/Utils;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/picasso/Dispatcher;->o:Z

    .line 118
    new-instance v0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;-><init>(Lcom/squareup/picasso/Dispatcher;)V

    iput-object v0, p0, Lcom/squareup/picasso/Dispatcher;->n:Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;

    .line 119
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->n:Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;

    invoke-virtual {v0}, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->a()V

    .line 120
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/BitmapHunter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 457
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 468
    :cond_8
    :goto_8
    return-void

    .line 458
    :cond_9
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/BitmapHunter;

    .line 459
    invoke-virtual {v0}, Lcom/squareup/picasso/BitmapHunter;->j()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 460
    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v0, :cond_8

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/BitmapHunter;

    .line 463
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_39

    const-string/jumbo v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_39
    invoke-static {v0}, Lcom/squareup/picasso/Utils;->a(Lcom/squareup/picasso/BitmapHunter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 466
    :cond_41
    const-string/jumbo v0, "Dispatcher"

    const-string/jumbo v2, "delivered"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private b()V
    .registers 6

    .prologue
    .line 410
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 411
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 412
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 413
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Action;

    .line 414
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 415
    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->j()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v2, :cond_3a

    .line 416
    const-string/jumbo v2, "Dispatcher"

    const-string/jumbo v3, "replaying"

    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->c()Lcom/squareup/picasso/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_3a
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/squareup/picasso/Dispatcher;->a(Lcom/squareup/picasso/Action;Z)V

    goto :goto_12

    .line 421
    :cond_3f
    return-void
.end method

.method private e(Lcom/squareup/picasso/Action;)V
    .registers 4

    .prologue
    .line 439
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->d()Ljava/lang/Object;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_e

    .line 441
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/squareup/picasso/Action;->k:Z

    .line 442
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->f:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_e
    return-void
.end method

.method private f(Lcom/squareup/picasso/BitmapHunter;)V
    .registers 6

    .prologue
    .line 424
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->i()Lcom/squareup/picasso/Action;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_9

    .line 426
    invoke-direct {p0, v0}, Lcom/squareup/picasso/Dispatcher;->e(Lcom/squareup/picasso/Action;)V

    .line 428
    :cond_9
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->k()Ljava/util/List;

    move-result-object v2

    .line 429
    if-eqz v2, :cond_24

    .line 431
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_15
    if-ge v1, v3, :cond_24

    .line 432
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Action;

    .line 433
    invoke-direct {p0, v0}, Lcom/squareup/picasso/Dispatcher;->e(Lcom/squareup/picasso/Action;)V

    .line 431
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    .line 436
    :cond_24
    return-void
.end method

.method private g(Lcom/squareup/picasso/BitmapHunter;)V
    .registers 6

    .prologue
    const/4 v1, 0x7

    .line 447
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 454
    :cond_7
    :goto_7
    return-void

    .line 450
    :cond_8
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 452
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->i:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7
.end method


# virtual methods
.method a()V
    .registers 5

    .prologue
    .line 380
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->m:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 381
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 382
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->j:Landroid/os/Handler;

    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher;->j:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    invoke-direct {p0, v0}, Lcom/squareup/picasso/Dispatcher;->a(Ljava/util/List;)V

    .line 384
    return-void
.end method

.method a(Landroid/net/NetworkInfo;)V
    .registers 5

    .prologue
    .line 166
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->i:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    return-void
.end method

.method a(Lcom/squareup/picasso/Action;)V
    .registers 5

    .prologue
    .line 138
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->i:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    return-void
.end method

.method a(Lcom/squareup/picasso/Action;Z)V
    .registers 8

    .prologue
    .line 179
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->h:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->l()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 180
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->j()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v0, :cond_4b

    .line 182
    const-string/jumbo v0, "Dispatcher"

    const-string/jumbo v1, "paused"

    iget-object v2, p1, Lcom/squareup/picasso/Action;->b:Lcom/squareup/picasso/Request;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "because tag \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 183
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->l()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' is paused"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-static {v0, v1, v2, v3}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_4b
    :goto_4b
    return-void

    .line 188
    :cond_4c
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/BitmapHunter;

    .line 189
    if-eqz v0, :cond_5e

    .line 190
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/BitmapHunter;->a(Lcom/squareup/picasso/Action;)V

    goto :goto_4b

    .line 194
    :cond_5e
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 195
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->j()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v0, :cond_4b

    .line 196
    const-string/jumbo v0, "Dispatcher"

    const-string/jumbo v1, "ignored"

    iget-object v2, p1, Lcom/squareup/picasso/Action;->b:Lcom/squareup/picasso/Request;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "because shut down"

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 201
    :cond_81
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->j()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->k:Lcom/squareup/picasso/Cache;

    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher;->l:Lcom/squareup/picasso/Stats;

    invoke-static {v0, p0, v1, v2, p1}, Lcom/squareup/picasso/BitmapHunter;->a(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)Lcom/squareup/picasso/BitmapHunter;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/picasso/BitmapHunter;->n:Ljava/util/concurrent/Future;

    .line 203
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    if-eqz p2, :cond_a9

    .line 205
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_a9
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->j()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v0, :cond_4b

    .line 209
    const-string/jumbo v0, "Dispatcher"

    const-string/jumbo v1, "enqueued"

    iget-object v2, p1, Lcom/squareup/picasso/Action;->b:Lcom/squareup/picasso/Request;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method

.method a(Lcom/squareup/picasso/BitmapHunter;)V
    .registers 5

    .prologue
    .line 154
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->i:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    return-void
.end method

.method a(Lcom/squareup/picasso/BitmapHunter;Z)V
    .registers 8

    .prologue
    .line 387
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->j()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v0, :cond_2e

    .line 388
    const-string/jumbo v1, "Dispatcher"

    const-string/jumbo v2, "batched"

    invoke-static {p1}, Lcom/squareup/picasso/Utils;->a(Lcom/squareup/picasso/BitmapHunter;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "for error"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_3b

    const-string/jumbo v0, " (will replay)"

    :goto_23
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_2e
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Dispatcher;->g(Lcom/squareup/picasso/BitmapHunter;)V

    .line 393
    return-void

    .line 388
    :cond_3b
    const-string/jumbo v0, ""

    goto :goto_23
.end method

.method a(Ljava/lang/Object;)V
    .registers 12

    .prologue
    .line 242
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 295
    :cond_8
    return-void

    .line 248
    :cond_9
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 249
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/BitmapHunter;

    .line 250
    invoke-virtual {v0}, Lcom/squareup/picasso/BitmapHunter;->j()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-boolean v4, v1, Lcom/squareup/picasso/Picasso;->l:Z

    .line 252
    invoke-virtual {v0}, Lcom/squareup/picasso/BitmapHunter;->i()Lcom/squareup/picasso/Action;

    move-result-object v2

    .line 253
    invoke-virtual {v0}, Lcom/squareup/picasso/BitmapHunter;->k()Ljava/util/List;

    move-result-object v5

    .line 254
    if-eqz v5, :cond_9d

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9d

    const/4 v1, 0x1

    .line 257
    :goto_36
    if-nez v2, :cond_3a

    if-eqz v1, :cond_13

    .line 261
    :cond_3a
    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Lcom/squareup/picasso/Action;->l()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 262
    invoke-virtual {v0, v2}, Lcom/squareup/picasso/BitmapHunter;->b(Lcom/squareup/picasso/Action;)V

    .line 263
    iget-object v6, p0, Lcom/squareup/picasso/Dispatcher;->g:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/squareup/picasso/Action;->d()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    if-eqz v4, :cond_7e

    .line 265
    const-string/jumbo v6, "Dispatcher"

    const-string/jumbo v7, "paused"

    iget-object v2, v2, Lcom/squareup/picasso/Action;->b:Lcom/squareup/picasso/Request;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "because tag \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' was paused"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v2, v8}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_7e
    if-eqz v1, :cond_d8

    .line 271
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_87
    if-ltz v2, :cond_d8

    .line 272
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/picasso/Action;

    .line 273
    invoke-virtual {v1}, Lcom/squareup/picasso/Action;->l()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9f

    .line 271
    :cond_99
    :goto_99
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_87

    .line 254
    :cond_9d
    const/4 v1, 0x0

    goto :goto_36

    .line 277
    :cond_9f
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/BitmapHunter;->b(Lcom/squareup/picasso/Action;)V

    .line 278
    iget-object v6, p0, Lcom/squareup/picasso/Dispatcher;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/squareup/picasso/Action;->d()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    if-eqz v4, :cond_99

    .line 280
    const-string/jumbo v6, "Dispatcher"

    const-string/jumbo v7, "paused"

    iget-object v1, v1, Lcom/squareup/picasso/Action;->b:Lcom/squareup/picasso/Request;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "because tag \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' was paused"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v1, v8}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    .line 288
    :cond_d8
    invoke-virtual {v0}, Lcom/squareup/picasso/BitmapHunter;->b()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 289
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 290
    if-eqz v4, :cond_13

    .line 291
    const-string/jumbo v1, "Dispatcher"

    const-string/jumbo v2, "canceled"

    invoke-static {v0}, Lcom/squareup/picasso/Utils;->a(Lcom/squareup/picasso/BitmapHunter;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "all actions paused"

    invoke-static {v1, v2, v0, v4}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13
.end method

.method a(Z)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher;->i:Landroid/os/Handler;

    iget-object v3, p0, Lcom/squareup/picasso/Dispatcher;->i:Landroid/os/Handler;

    const/16 v4, 0xa

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    return-void

    :cond_12
    move v0, v1

    .line 170
    goto :goto_a
.end method

.method b(Landroid/net/NetworkInfo;)V
    .registers 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->c:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Lcom/squareup/picasso/PicassoExecutorService;

    if-eqz v0, :cond_d

    .line 401
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->c:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Lcom/squareup/picasso/PicassoExecutorService;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/PicassoExecutorService;->a(Landroid/net/NetworkInfo;)V

    .line 404
    :cond_d
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 405
    invoke-direct {p0}, Lcom/squareup/picasso/Dispatcher;->b()V

    .line 407
    :cond_18
    return-void
.end method

.method b(Lcom/squareup/picasso/Action;)V
    .registers 5

    .prologue
    .line 142
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->i:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    return-void
.end method

.method b(Lcom/squareup/picasso/BitmapHunter;)V
    .registers 6

    .prologue
    .line 158
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->i:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 159
    return-void
.end method

.method b(Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 299
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 318
    :cond_8
    :goto_8
    return-void

    .line 303
    :cond_9
    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 305
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Action;

    .line 306
    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->l()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 307
    if-nez v1, :cond_31

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    :cond_31
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_14

    .line 315
    :cond_38
    if-eqz v1, :cond_8

    .line 316
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->j:Landroid/os/Handler;

    iget-object v2, p0, Lcom/squareup/picasso/Dispatcher;->j:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8
.end method

.method b(Z)V
    .registers 2

    .prologue
    .line 396
    iput-boolean p1, p0, Lcom/squareup/picasso/Dispatcher;->p:Z

    .line 397
    return-void
.end method

.method c(Lcom/squareup/picasso/Action;)V
    .registers 3

    .prologue
    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/squareup/picasso/Dispatcher;->a(Lcom/squareup/picasso/Action;Z)V

    .line 176
    return-void
.end method

.method c(Lcom/squareup/picasso/BitmapHunter;)V
    .registers 5

    .prologue
    .line 162
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher;->i:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    return-void
.end method

.method d(Lcom/squareup/picasso/Action;)V
    .registers 6

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->e()Ljava/lang/String;

    move-result-object v1

    .line 215
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/BitmapHunter;

    .line 216
    if-eqz v0, :cond_35

    .line 217
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/BitmapHunter;->b(Lcom/squareup/picasso/Action;)V

    .line 218
    invoke-virtual {v0}, Lcom/squareup/picasso/BitmapHunter;->b()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 219
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->j()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v0, :cond_35

    .line 221
    const-string/jumbo v0, "Dispatcher"

    const-string/jumbo v1, "canceled"

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->c()Lcom/squareup/picasso/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_35
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->h:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->l()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 227
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->j()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v0, :cond_66

    .line 229
    const-string/jumbo v0, "Dispatcher"

    const-string/jumbo v1, "canceled"

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->c()Lcom/squareup/picasso/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "because paused request got canceled"

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_66
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Action;

    .line 235
    if-eqz v0, :cond_90

    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->j()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v1, :cond_90

    .line 236
    const-string/jumbo v1, "Dispatcher"

    const-string/jumbo v2, "canceled"

    invoke-virtual {v0}, Lcom/squareup/picasso/Action;->c()Lcom/squareup/picasso/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/Request;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "from replaying"

    invoke-static {v1, v2, v0, v3}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_90
    return-void
.end method

.method d(Lcom/squareup/picasso/BitmapHunter;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 366
    :cond_8
    :goto_8
    return-void

    .line 323
    :cond_9
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 324
    invoke-virtual {p0, p1, v2}, Lcom/squareup/picasso/Dispatcher;->a(Lcom/squareup/picasso/BitmapHunter;Z)V

    goto :goto_8

    .line 328
    :cond_15
    const/4 v0, 0x0

    .line 329
    iget-boolean v3, p0, Lcom/squareup/picasso/Dispatcher;->o:Z

    if-eqz v3, :cond_91

    .line 330
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->b:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-static {v0, v3}, Lcom/squareup/picasso/Utils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 331
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    move-object v3, v0

    .line 334
    :goto_2a
    if-eqz v3, :cond_4e

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4e

    move v0, v1

    .line 335
    :goto_33
    iget-boolean v4, p0, Lcom/squareup/picasso/Dispatcher;->p:Z

    invoke-virtual {p1, v4, v3}, Lcom/squareup/picasso/BitmapHunter;->a(ZLandroid/net/NetworkInfo;)Z

    move-result v3

    .line 336
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->d()Z

    move-result v4

    .line 338
    if-nez v3, :cond_52

    .line 340
    iget-boolean v0, p0, Lcom/squareup/picasso/Dispatcher;->o:Z

    if-eqz v0, :cond_50

    if-eqz v4, :cond_50

    .line 341
    :goto_45
    invoke-virtual {p0, p1, v1}, Lcom/squareup/picasso/Dispatcher;->a(Lcom/squareup/picasso/BitmapHunter;Z)V

    .line 342
    if-eqz v1, :cond_8

    .line 343
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Dispatcher;->f(Lcom/squareup/picasso/BitmapHunter;)V

    goto :goto_8

    :cond_4e
    move v0, v2

    .line 334
    goto :goto_33

    :cond_50
    move v1, v2

    .line 340
    goto :goto_45

    .line 349
    :cond_52
    iget-boolean v1, p0, Lcom/squareup/picasso/Dispatcher;->o:Z

    if-eqz v1, :cond_58

    if-eqz v0, :cond_87

    .line 350
    :cond_58
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->j()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v0, :cond_6d

    .line 351
    const-string/jumbo v0, "Dispatcher"

    const-string/jumbo v1, "retrying"

    invoke-static {p1}, Lcom/squareup/picasso/Utils;->a(Lcom/squareup/picasso/BitmapHunter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_6d
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->l()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException;

    if-eqz v0, :cond_7e

    .line 355
    iget v0, p1, Lcom/squareup/picasso/BitmapHunter;->i:I

    sget-object v1, Lcom/squareup/picasso/NetworkPolicy;->a:Lcom/squareup/picasso/NetworkPolicy;

    iget v1, v1, Lcom/squareup/picasso/NetworkPolicy;->d:I

    or-int/2addr v0, v1

    iput v0, p1, Lcom/squareup/picasso/BitmapHunter;->i:I

    .line 357
    :cond_7e
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Lcom/squareup/picasso/BitmapHunter;->n:Ljava/util/concurrent/Future;

    goto :goto_8

    .line 361
    :cond_87
    invoke-virtual {p0, p1, v4}, Lcom/squareup/picasso/Dispatcher;->a(Lcom/squareup/picasso/BitmapHunter;Z)V

    .line 363
    if-eqz v4, :cond_8

    .line 364
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Dispatcher;->f(Lcom/squareup/picasso/BitmapHunter;)V

    goto/16 :goto_8

    :cond_91
    move-object v3, v0

    goto :goto_2a
.end method

.method e(Lcom/squareup/picasso/BitmapHunter;)V
    .registers 6

    .prologue
    .line 369
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->g()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/picasso/MemoryPolicy;->b(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 370
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->k:Lcom/squareup/picasso/Cache;

    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->e()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/squareup/picasso/Cache;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 372
    :cond_17
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-direct {p0, p1}, Lcom/squareup/picasso/Dispatcher;->g(Lcom/squareup/picasso/BitmapHunter;)V

    .line 374
    invoke-virtual {p1}, Lcom/squareup/picasso/BitmapHunter;->j()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->l:Z

    if-eqz v0, :cond_3b

    .line 375
    const-string/jumbo v0, "Dispatcher"

    const-string/jumbo v1, "batched"

    invoke-static {p1}, Lcom/squareup/picasso/Utils;->a(Lcom/squareup/picasso/BitmapHunter;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "for completion"

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/picasso/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_3b
    return-void
.end method
