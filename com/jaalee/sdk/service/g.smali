.class final Lcom/jaalee/sdk/service/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/jaalee/sdk/service/BeaconService;


# direct methods
.method private constructor <init>(Lcom/jaalee/sdk/service/BeaconService;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/service/g;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaalee/sdk/service/BeaconService;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/jaalee/sdk/service/g;-><init>(Lcom/jaalee/sdk/service/BeaconService;)V

    return-void
.end method

.method private a()Ljava/util/List;
    .registers 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/jaalee/sdk/service/g;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->b(Lcom/jaalee/sdk/service/BeaconService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1e

    return-object v1

    :cond_1e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/Beacon;

    invoke-direct {p0, v0}, Lcom/jaalee/sdk/service/g;->a(Lcom/jaalee/sdk/Beacon;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_32
    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/service/k;

    invoke-virtual {v0, v2, v3}, Lcom/jaalee/sdk/service/k;->a(J)Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32
.end method

.method private a(Lcom/jaalee/sdk/Beacon;)Ljava/util/List;
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/jaalee/sdk/service/g;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->g(Lcom/jaalee/sdk/service/BeaconService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    return-object v1

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/service/k;

    iget-object v3, v0, Lcom/jaalee/sdk/service/k;->a:Lcom/jaalee/sdk/Region;

    invoke-static {p1, v3}, Lcom/jaalee/sdk/Utils;->a(Lcom/jaalee/sdk/Beacon;Lcom/jaalee/sdk/Region;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .registers 11

    const/4 v7, 0x6

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/jaalee/sdk/service/g;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->f(Lcom/jaalee/sdk/service/BeaconService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_71

    return-void

    :cond_27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/service/n;

    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_2f
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    new-instance v3, Lcom/jaalee/sdk/service/p;

    iget-object v4, v0, Lcom/jaalee/sdk/service/n;->a:Lcom/jaalee/sdk/Region;

    invoke-virtual {v0}, Lcom/jaalee/sdk/service/n;->a()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/jaalee/sdk/service/p;-><init>(Lcom/jaalee/sdk/Region;Ljava/util/Collection;)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, v0, Lcom/jaalee/sdk/service/n;->b:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_45} :catch_46

    goto :goto_c

    :catch_46
    move-exception v0

    const-string/jumbo v2, "Error while delivering responses"

    invoke-static {v2, v0}, Lcom/jaalee/sdk/utils/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_4e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/service/k;

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    new-instance v3, Lcom/jaalee/sdk/service/l;

    iget-object v4, v0, Lcom/jaalee/sdk/service/k;->a:Lcom/jaalee/sdk/Region;

    sget-object v5, Lcom/jaalee/sdk/e;->a:Lcom/jaalee/sdk/e;

    invoke-direct {v3, v4, v5}, Lcom/jaalee/sdk/service/l;-><init>(Lcom/jaalee/sdk/Region;Lcom/jaalee/sdk/e;)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_63
    iget-object v0, v0, Lcom/jaalee/sdk/service/k;->b:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_68} :catch_69

    goto :goto_16

    :catch_69
    move-exception v0

    const-string/jumbo v2, "Error while delivering responses"

    invoke-static {v2, v0}, Lcom/jaalee/sdk/utils/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/service/k;

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    new-instance v3, Lcom/jaalee/sdk/service/l;

    iget-object v4, v0, Lcom/jaalee/sdk/service/k;->a:Lcom/jaalee/sdk/Region;

    sget-object v5, Lcom/jaalee/sdk/e;->b:Lcom/jaalee/sdk/e;

    invoke-direct {v3, v4, v5}, Lcom/jaalee/sdk/service/l;-><init>(Lcom/jaalee/sdk/Region;Lcom/jaalee/sdk/e;)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_86
    iget-object v0, v0, Lcom/jaalee/sdk/service/k;->b:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_8b} :catch_8c

    goto :goto_20

    :catch_8c
    move-exception v0

    const-string/jumbo v2, "Error while delivering responses"

    invoke-static {v2, v0}, Lcom/jaalee/sdk/utils/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method private b()V
    .registers 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/jaalee/sdk/service/g;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->f(Lcom/jaalee/sdk/service/BeaconService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/service/n;

    iget-object v0, v0, Lcom/jaalee/sdk/service/n;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_25
    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v2, v6

    sget-wide v8, Lcom/jaalee/sdk/service/BeaconService;->a:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Not seen lately: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaalee/sdk/utils/L;->a(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_25
.end method

.method private c()Ljava/util/List;
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/jaalee/sdk/service/g;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->g(Lcom/jaalee/sdk/service/BeaconService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    return-object v1

    :cond_1a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/service/k;

    invoke-virtual {v0, v2, v3}, Lcom/jaalee/sdk/service/k;->b(J)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/jaalee/sdk/service/g;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->a(Lcom/jaalee/sdk/service/BeaconService;)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/g;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->h(Lcom/jaalee/sdk/service/BeaconService;)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/g;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->b(Lcom/jaalee/sdk/service/BeaconService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-direct {p0}, Lcom/jaalee/sdk/service/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/jaalee/sdk/service/g;->b()V

    invoke-direct {p0}, Lcom/jaalee/sdk/service/g;->c()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/jaalee/sdk/service/g;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v2}, Lcom/jaalee/sdk/service/BeaconService;->b(Lcom/jaalee/sdk/service/BeaconService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-direct {p0, v0, v1}, Lcom/jaalee/sdk/service/g;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/g;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->i(Lcom/jaalee/sdk/service/BeaconService;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a5

    iget-object v0, p0, Lcom/jaalee/sdk/service/g;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->j(Lcom/jaalee/sdk/service/BeaconService;)V

    :goto_46
    return-void

    :cond_47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jaalee/sdk/Beacon;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/jaalee/sdk/service/g;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v2}, Lcom/jaalee/sdk/service/BeaconService;->f(Lcom/jaalee/sdk/service/BeaconService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_62
    :goto_62
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_93

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jaalee/sdk/service/n;

    iget-object v2, v1, Lcom/jaalee/sdk/service/n;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/jaalee/sdk/service/n;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jaalee/sdk/Beacon;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    :cond_93
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jaalee/sdk/service/n;

    iget-object v6, v2, Lcom/jaalee/sdk/service/n;->a:Lcom/jaalee/sdk/Region;

    invoke-static {v1, v6}, Lcom/jaalee/sdk/Utils;->a(Lcom/jaalee/sdk/Beacon;Lcom/jaalee/sdk/Region;)Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_a5
    iget-object v0, p0, Lcom/jaalee/sdk/service/g;->a:Lcom/jaalee/sdk/service/BeaconService;

    iget-object v1, p0, Lcom/jaalee/sdk/service/g;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v1}, Lcom/jaalee/sdk/service/BeaconService;->k(Lcom/jaalee/sdk/service/BeaconService;)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/jaalee/sdk/service/g;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v2}, Lcom/jaalee/sdk/service/BeaconService;->i(Lcom/jaalee/sdk/service/BeaconService;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/jaalee/sdk/service/BeaconService;->a(Lcom/jaalee/sdk/service/BeaconService;Landroid/app/PendingIntent;J)V

    goto :goto_46
.end method
