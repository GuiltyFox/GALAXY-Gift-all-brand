.class public Lrx/observers/SafeSubscriber;
.super Lrx/Subscriber;
.source "SafeSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/observers/SafeSubscriber;->a:Z

    .line 71
    iput-object p1, p0, Lrx/observers/SafeSubscriber;->b:Lrx/Subscriber;

    .line 72
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 117
    invoke-static {p1}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    .line 118
    iget-boolean v0, p0, Lrx/observers/SafeSubscriber;->a:Z

    if-nez v0, :cond_d

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observers/SafeSubscriber;->a:Z

    .line 120
    invoke-virtual {p0, p1}, Lrx/observers/SafeSubscriber;->b(Ljava/lang/Throwable;)V

    .line 122
    :cond_d
    return-void
.end method

.method public a_(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    iget-boolean v0, p0, Lrx/observers/SafeSubscriber;->a:Z

    if-nez v0, :cond_9

    .line 139
    iget-object v0, p0, Lrx/observers/SafeSubscriber;->b:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->a_(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 148
    :cond_9
    :goto_9
    return-void

    .line 141
    :catch_a
    move-exception v0

    .line 144
    invoke-static {v0}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    .line 146
    invoke-virtual {p0, v0}, Lrx/observers/SafeSubscriber;->a(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method protected b(Ljava/lang/Throwable;)V
    .registers 11

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 157
    invoke-static {p1}, Lrx/internal/util/RxJavaPluginUtils;->a(Ljava/lang/Throwable;)V

    .line 159
    :try_start_6
    iget-object v0, p0, Lrx/observers/SafeSubscriber;->b:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->a(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_f

    .line 199
    :try_start_b
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->b()V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_73

    .line 204
    return-void

    .line 160
    :catch_f
    move-exception v0

    .line 161
    instance-of v1, v0, Lrx/exceptions/OnErrorNotImplementedException;

    if-eqz v1, :cond_36

    .line 174
    :try_start_14
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->b()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_1a

    .line 179
    check-cast v0, Lrx/exceptions/OnErrorNotImplementedException;

    throw v0

    .line 175
    :catch_1a
    move-exception v0

    .line 176
    invoke-static {v0}, Lrx/internal/util/RxJavaPluginUtils;->a(Ljava/lang/Throwable;)V

    .line 177
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Observer.onError not implemented and error while unsubscribing."

    new-instance v3, Lrx/exceptions/CompositeException;

    new-array v4, v8, [Ljava/lang/Throwable;

    aput-object p1, v4, v6

    aput-object v0, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 186
    :cond_36
    invoke-static {v0}, Lrx/internal/util/RxJavaPluginUtils;->a(Ljava/lang/Throwable;)V

    .line 188
    :try_start_39
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->b()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3c} :catch_54

    .line 194
    new-instance v1, Lrx/exceptions/OnErrorFailedException;

    const-string/jumbo v2, "Error occurred when trying to propagate error to Observer.onError"

    new-instance v3, Lrx/exceptions/CompositeException;

    new-array v4, v8, [Ljava/lang/Throwable;

    aput-object p1, v4, v6

    aput-object v0, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 189
    :catch_54
    move-exception v1

    .line 190
    invoke-static {v1}, Lrx/internal/util/RxJavaPluginUtils;->a(Ljava/lang/Throwable;)V

    .line 191
    new-instance v2, Lrx/exceptions/OnErrorFailedException;

    const-string/jumbo v3, "Error occurred when trying to propagate error to Observer.onError and during unsubscription."

    new-instance v4, Lrx/exceptions/CompositeException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object p1, v5, v6

    aput-object v0, v5, v7

    aput-object v1, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3, v4}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 200
    :catch_73
    move-exception v0

    .line 201
    invoke-static {v0}, Lrx/internal/util/RxJavaPluginUtils;->a(Ljava/lang/Throwable;)V

    .line 202
    new-instance v1, Lrx/exceptions/OnErrorFailedException;

    invoke-direct {v1, v0}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public i_()V
    .registers 4

    .prologue
    .line 81
    iget-boolean v0, p0, Lrx/observers/SafeSubscriber;->a:Z

    if-nez v0, :cond_f

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observers/SafeSubscriber;->a:Z

    .line 84
    :try_start_7
    iget-object v0, p0, Lrx/observers/SafeSubscriber;->b:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->i_()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_1e
    .catchall {:try_start_7 .. :try_end_c} :catchall_2f

    .line 95
    :try_start_c
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->b()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_10

    .line 102
    :cond_f
    return-void

    .line 96
    :catch_10
    move-exception v0

    .line 97
    invoke-static {v0}, Lrx/internal/util/RxJavaPluginUtils;->a(Ljava/lang/Throwable;)V

    .line 98
    new-instance v1, Lrx/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 85
    :catch_1e
    move-exception v0

    .line 88
    :try_start_1f
    invoke-static {v0}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    .line 89
    invoke-static {v0}, Lrx/internal/util/RxJavaPluginUtils;->a(Ljava/lang/Throwable;)V

    .line 90
    new-instance v1, Lrx/exceptions/OnCompletedFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/OnCompletedFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2f

    .line 92
    :catchall_2f
    move-exception v0

    .line 95
    :try_start_30
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->b()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_34

    .line 98
    throw v0

    .line 96
    :catch_34
    move-exception v0

    .line 97
    invoke-static {v0}, Lrx/internal/util/RxJavaPluginUtils;->a(Ljava/lang/Throwable;)V

    .line 98
    new-instance v1, Lrx/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
