.class public final Lrx/subscriptions/CompositeSubscription;
.super Ljava/lang/Object;
.source "CompositeSubscription.java"

# interfaces
.implements Lrx/Subscription;


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static a(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    if-nez p0, :cond_3

    .line 159
    :goto_2
    return-void

    .line 147
    :cond_3
    const/4 v1, 0x0

    .line 148
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscription;

    .line 150
    :try_start_14
    invoke-interface {v0}, Lrx/Subscription;->b()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_8

    .line 151
    :catch_18
    move-exception v3

    .line 152
    if-nez v1, :cond_29

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    :goto_20
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_8

    .line 158
    :cond_25
    invoke-static {v1}, Lrx/exceptions/Exceptions;->a(Ljava/util/List;)V

    goto :goto_2

    :cond_29
    move-object v0, v1

    goto :goto_20
.end method


# virtual methods
.method public a(Lrx/Subscription;)V
    .registers 4

    .prologue
    .line 60
    invoke-interface {p1}, Lrx/Subscription;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 76
    :goto_6
    return-void

    .line 63
    :cond_7
    iget-boolean v0, p0, Lrx/subscriptions/CompositeSubscription;->b:Z

    if-nez v0, :cond_27

    .line 64
    monitor-enter p0

    .line 65
    :try_start_c
    iget-boolean v0, p0, Lrx/subscriptions/CompositeSubscription;->b:Z

    if-nez v0, :cond_26

    .line 66
    iget-object v0, p0, Lrx/subscriptions/CompositeSubscription;->a:Ljava/util/Set;

    if-nez v0, :cond_1c

    .line 67
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lrx/subscriptions/CompositeSubscription;->a:Ljava/util/Set;

    .line 69
    :cond_1c
    iget-object v0, p0, Lrx/subscriptions/CompositeSubscription;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    monitor-exit p0

    goto :goto_6

    .line 72
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_23

    throw v0

    :cond_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 75
    :cond_27
    invoke-interface {p1}, Lrx/Subscription;->b()V

    goto :goto_6
.end method

.method public b()V
    .registers 3

    .prologue
    .line 128
    iget-boolean v0, p0, Lrx/subscriptions/CompositeSubscription;->b:Z

    if-nez v0, :cond_a

    .line 130
    monitor-enter p0

    .line 131
    :try_start_5
    iget-boolean v0, p0, Lrx/subscriptions/CompositeSubscription;->b:Z

    if-eqz v0, :cond_b

    .line 132
    monitor-exit p0

    .line 141
    :cond_a
    :goto_a
    return-void

    .line 134
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subscriptions/CompositeSubscription;->b:Z

    .line 135
    iget-object v0, p0, Lrx/subscriptions/CompositeSubscription;->a:Ljava/util/Set;

    .line 136
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/subscriptions/CompositeSubscription;->a:Ljava/util/Set;

    .line 137
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    .line 139
    invoke-static {v0}, Lrx/subscriptions/CompositeSubscription;->a(Ljava/util/Collection;)V

    goto :goto_a

    .line 137
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public b(Lrx/Subscription;)V
    .registers 3

    .prologue
    .line 86
    iget-boolean v0, p0, Lrx/subscriptions/CompositeSubscription;->b:Z

    if-nez v0, :cond_e

    .line 88
    monitor-enter p0

    .line 89
    :try_start_5
    iget-boolean v0, p0, Lrx/subscriptions/CompositeSubscription;->b:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lrx/subscriptions/CompositeSubscription;->a:Ljava/util/Set;

    if-nez v0, :cond_f

    .line 90
    :cond_d
    monitor-exit p0

    .line 99
    :cond_e
    :goto_e
    return-void

    .line 92
    :cond_f
    iget-object v0, p0, Lrx/subscriptions/CompositeSubscription;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 93
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    .line 94
    if-eqz v0, :cond_e

    .line 96
    invoke-interface {p1}, Lrx/Subscription;->b()V

    goto :goto_e

    .line 93
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lrx/subscriptions/CompositeSubscription;->b:Z

    return v0
.end method
