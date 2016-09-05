.class public final Lrx/subjects/PublishSubject;
.super Lrx/subjects/Subject;
.source "PublishSubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/subjects/Subject",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lrx/subjects/SubjectSubscriptionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;",
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 74
    invoke-static {}, Lrx/internal/operators/NotificationLite;->a()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/PublishSubject;->c:Lrx/internal/operators/NotificationLite;

    .line 78
    iput-object p2, p0, Lrx/subjects/PublishSubject;->b:Lrx/subjects/SubjectSubscriptionManager;

    .line 79
    return-void
.end method

.method public static c()Lrx/subjects/PublishSubject;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/PublishSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {v0}, Lrx/subjects/SubjectSubscriptionManager;-><init>()V

    .line 62
    new-instance v1, Lrx/subjects/PublishSubject$1;

    invoke-direct {v1, v0}, Lrx/subjects/PublishSubject$1;-><init>(Lrx/subjects/SubjectSubscriptionManager;)V

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->e:Lrx/functions/Action1;

    .line 70
    new-instance v1, Lrx/subjects/PublishSubject;

    invoke-direct {v1, v0, v0}, Lrx/subjects/PublishSubject;-><init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;)V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 9

    .prologue
    .line 94
    iget-object v0, p0, Lrx/subjects/PublishSubject;->b:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v0, v0, Lrx/subjects/SubjectSubscriptionManager;->b:Z

    if-eqz v0, :cond_35

    .line 95
    iget-object v0, p0, Lrx/subjects/PublishSubject;->c:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    .line 96
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lrx/subjects/PublishSubject;->b:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0, v3}, Lrx/subjects/SubjectSubscriptionManager;->c(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_17
    if-ge v2, v5, :cond_32

    aget-object v1, v4, v2

    .line 99
    :try_start_1b
    iget-object v6, p0, Lrx/subjects/PublishSubject;->b:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v6, v6, Lrx/subjects/SubjectSubscriptionManager;->f:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v3, v6}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->a(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_22} :catch_26

    .line 97
    :goto_22
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_17

    .line 100
    :catch_26
    move-exception v1

    .line 101
    if-nez v0, :cond_2e

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    :cond_2e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 107
    :cond_32
    invoke-static {v0}, Lrx/exceptions/Exceptions;->a(Ljava/util/List;)V

    .line 109
    :cond_35
    return-void
.end method

.method public a_(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lrx/subjects/PublishSubject;->b:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->b()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_12

    aget-object v3, v1, v0

    .line 114
    invoke-virtual {v3, p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->a_(Ljava/lang/Object;)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 116
    :cond_12
    return-void
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lrx/subjects/PublishSubject;->b:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->a()Ljava/lang/Object;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_12

    iget-object v1, p0, Lrx/subjects/PublishSubject;->c:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public i_()V
    .registers 7

    .prologue
    .line 83
    iget-object v0, p0, Lrx/subjects/PublishSubject;->b:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v0, v0, Lrx/subjects/SubjectSubscriptionManager;->b:Z

    if-eqz v0, :cond_22

    .line 84
    iget-object v0, p0, Lrx/subjects/PublishSubject;->c:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0}, Lrx/internal/operators/NotificationLite;->b()Ljava/lang/Object;

    move-result-object v1

    .line 85
    iget-object v0, p0, Lrx/subjects/PublishSubject;->b:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0, v1}, Lrx/subjects/SubjectSubscriptionManager;->c(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v3, :cond_22

    aget-object v4, v2, v0

    .line 86
    iget-object v5, p0, Lrx/subjects/PublishSubject;->b:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v5, v5, Lrx/subjects/SubjectSubscriptionManager;->f:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v1, v5}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->a(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 90
    :cond_22
    return-void
.end method
