.class public final Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field b:Z

.field c:Z

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field e:Z


# direct methods
.method public constructor <init>(Lrx/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->b:Z

    .line 219
    iput-object p1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->a:Lrx/Observer;

    .line 220
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 240
    iget-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->e:Z

    if-nez v0, :cond_22

    .line 241
    monitor-enter p0

    .line 242
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->b:Z

    .line 243
    iget-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->c:Z

    if-eqz v0, :cond_1e

    .line 244
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->d:Ljava/util/List;

    if-nez v0, :cond_17

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->d:Ljava/util/List;

    .line 247
    :cond_17
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    monitor-exit p0

    .line 254
    :goto_1d
    return-void

    .line 250
    :cond_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_28

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->e:Z

    .line 253
    :cond_22
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->a:Lrx/Observer;

    invoke-virtual {p2, v0, p1}, Lrx/internal/operators/NotificationLite;->a(Lrx/Observer;Ljava/lang/Object;)Z

    goto :goto_1d

    .line 250
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 227
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->a:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->a(Ljava/lang/Throwable;)V

    .line 228
    return-void
.end method

.method protected a(Ljava/util/List;Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 280
    move v0, v1

    .line 284
    :goto_3
    if-eqz p1, :cond_20

    .line 285
    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 286
    invoke-virtual {p0, v4, p3}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->c(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    goto :goto_9

    .line 304
    :catchall_17
    move-exception v0

    :goto_18
    if-nez v2, :cond_1f

    .line 305
    monitor-enter p0

    .line 306
    const/4 v1, 0x0

    :try_start_1c
    iput-boolean v1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->c:Z

    .line 307
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_3c

    :cond_1f
    throw v0

    .line 289
    :cond_20
    if-eqz v0, :cond_26

    .line 291
    :try_start_22
    invoke-virtual {p0, p2, p3}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->c(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V

    move v0, v2

    .line 293
    :cond_26
    monitor-enter p0
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_17

    .line 294
    :try_start_27
    iget-object p1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->d:Ljava/util/List;

    .line 295
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->d:Ljava/util/List;

    .line 296
    if-nez p1, :cond_33

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->c:Z
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_35

    .line 299
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_3f

    .line 310
    return-void

    .line 301
    :cond_33
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_35

    goto :goto_3

    :catchall_35
    move-exception v0

    move v1, v2

    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_3f

    :try_start_38
    throw v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    .line 304
    :catchall_39
    move-exception v0

    move v2, v1

    goto :goto_18

    .line 307
    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0

    .line 301
    :catchall_3f
    move-exception v0

    goto :goto_37
.end method

.method public a_(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->a:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->a_(Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method protected b(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 262
    monitor-enter p0

    .line 263
    :try_start_2
    iget-boolean v1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->b:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->c:Z

    if-eqz v1, :cond_c

    .line 264
    :cond_a
    monitor-exit p0

    .line 272
    :cond_b
    :goto_b
    return-void

    .line 266
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->b:Z

    .line 267
    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :cond_12
    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->c:Z

    .line 268
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_1c

    .line 269
    if-eqz p1, :cond_b

    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->a(Ljava/util/List;Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V

    goto :goto_b

    .line 268
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method protected c(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 317
    if-eqz p1, :cond_7

    .line 318
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->a:Lrx/Observer;

    invoke-virtual {p2, v0, p1}, Lrx/internal/operators/NotificationLite;->a(Lrx/Observer;Ljava/lang/Object;)Z

    .line 320
    :cond_7
    return-void
.end method

.method public m_()V
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->a:Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->m_()V

    .line 232
    return-void
.end method
