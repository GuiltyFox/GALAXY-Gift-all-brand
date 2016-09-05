.class public final Lrx/internal/util/SubscriptionList;
.super Ljava/lang/Object;
.source "SubscriptionList.java"

# interfaces
.implements Lrx/Subscription;


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
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
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lrx/Subscription;)V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/util/SubscriptionList;->a:Ljava/util/LinkedList;

    .line 42
    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public varargs constructor <init>([Lrx/Subscription;)V
    .registers 4

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lrx/internal/util/SubscriptionList;->a:Ljava/util/LinkedList;

    .line 38
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
    .line 118
    if-nez p0, :cond_3

    .line 133
    :goto_2
    return-void

    .line 121
    :cond_3
    const/4 v1, 0x0

    .line 122
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscription;

    .line 124
    :try_start_14
    invoke-interface {v0}, Lrx/Subscription;->b()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_8

    .line 125
    :catch_18
    move-exception v3

    .line 126
    if-nez v1, :cond_29

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    :goto_20
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_8

    .line 132
    :cond_25
    invoke-static {v1}, Lrx/exceptions/Exceptions;->a(Ljava/util/List;)V

    goto :goto_2

    :cond_29
    move-object v0, v1

    goto :goto_20
.end method


# virtual methods
.method public a(Lrx/Subscription;)V
    .registers 3

    .prologue
    .line 59
    invoke-interface {p1}, Lrx/Subscription;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 77
    :goto_6
    return-void

    .line 62
    :cond_7
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->b:Z

    if-nez v0, :cond_24

    .line 63
    monitor-enter p0

    .line 64
    :try_start_c
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->b:Z

    if-nez v0, :cond_23

    .line 65
    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->a:Ljava/util/LinkedList;

    .line 66
    if-nez v0, :cond_1b

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 68
    iput-object v0, p0, Lrx/internal/util/SubscriptionList;->a:Ljava/util/LinkedList;

    .line 70
    :cond_1b
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 71
    monitor-exit p0

    goto :goto_6

    .line 73
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_20

    throw v0

    :cond_23
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_20

    .line 76
    :cond_24
    invoke-interface {p1}, Lrx/Subscription;->b()V

    goto :goto_6
.end method

.method public b()V
    .registers 3

    .prologue
    .line 102
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->b:Z

    if-nez v0, :cond_a

    .line 104
    monitor-enter p0

    .line 105
    :try_start_5
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->b:Z

    if-eqz v0, :cond_b

    .line 106
    monitor-exit p0

    .line 115
    :cond_a
    :goto_a
    return-void

    .line 108
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/SubscriptionList;->b:Z

    .line 109
    iget-object v0, p0, Lrx/internal/util/SubscriptionList;->a:Ljava/util/LinkedList;

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/util/SubscriptionList;->a:Ljava/util/LinkedList;

    .line 111
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    .line 113
    invoke-static {v0}, Lrx/internal/util/SubscriptionList;->a(Ljava/util/Collection;)V

    goto :goto_a

    .line 111
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lrx/internal/util/SubscriptionList;->b:Z

    return v0
.end method
