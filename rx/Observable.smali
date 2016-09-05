.class public Lrx/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final b:Lrx/plugins/RxJavaObservableExecutionHook;


# instance fields
.field final a:Lrx/Observable$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->a()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->c()Lrx/plugins/RxJavaObservableExecutionHook;

    move-result-object v0

    sput-object v0, Lrx/Observable;->b:Lrx/plugins/RxJavaObservableExecutionHook;

    return-void
.end method

.method protected constructor <init>(Lrx/Observable$OnSubscribe;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/Observable;->a:Lrx/Observable$OnSubscribe;

    .line 61
    return-void
.end method

.method public static final a()Lrx/Observable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1096
    sget-object v0, Lrx/Observable$EmptyHolder;->a:Lrx/Observable;

    return-object v0
.end method

.method public static final a(Ljava/lang/Iterable;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1226
    new-instance v0, Lrx/internal/operators/OnSubscribeFromIterable;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeFromIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/Observable;->a(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Ljava/lang/Object;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1402
    invoke-static {p0}, Lrx/internal/util/ScalarSynchronousObservable;->b(Ljava/lang/Object;)Lrx/internal/util/ScalarSynchronousObservable;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Lrx/Observable$OnSubscribe;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lrx/Observable;

    sget-object v1, Lrx/Observable;->b:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v1, p0}, Lrx/plugins/RxJavaObservableExecutionHook;->a(Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public static final a(Lrx/Observable;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 805
    invoke-static {}, Lrx/internal/operators/OperatorConcat;->a()Lrx/internal/operators/OperatorConcat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->a(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1823
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->a(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->b(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lrx/Subscriber;Lrx/Observable;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 8163
    if-nez p0, :cond_b

    .line 8164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "observer can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8166
    :cond_b
    iget-object v0, p1, Lrx/Observable;->a:Lrx/Observable$OnSubscribe;

    if-nez v0, :cond_18

    .line 8167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onSubscribe function can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8175
    :cond_18
    invoke-virtual {p0}, Lrx/Subscriber;->d()V

    .line 8182
    instance-of v0, p0, Lrx/observers/SafeSubscriber;

    if-nez v0, :cond_25

    .line 8184
    new-instance v0, Lrx/observers/SafeSubscriber;

    invoke-direct {v0, p0}, Lrx/observers/SafeSubscriber;-><init>(Lrx/Subscriber;)V

    move-object p0, v0

    .line 8191
    :cond_25
    :try_start_25
    sget-object v0, Lrx/Observable;->b:Lrx/plugins/RxJavaObservableExecutionHook;

    iget-object v1, p1, Lrx/Observable;->a:Lrx/Observable$OnSubscribe;

    invoke-virtual {v0, p1, v1}, Lrx/plugins/RxJavaObservableExecutionHook;->a(Lrx/Observable;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-interface {v0, p0}, Lrx/Observable$OnSubscribe;->a(Ljava/lang/Object;)V

    .line 8192
    sget-object v0, Lrx/Observable;->b:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v0, p0}, Lrx/plugins/RxJavaObservableExecutionHook;->a(Lrx/Subscription;)Lrx/Subscription;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_35} :catch_37

    move-result-object v0

    .line 8209
    :goto_36
    return-object v0

    .line 8193
    :catch_37
    move-exception v0

    .line 8195
    invoke-static {v0}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    .line 8198
    :try_start_3b
    sget-object v1, Lrx/Observable;->b:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaObservableExecutionHook;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/Subscriber;->a(Ljava/lang/Throwable;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_44} :catch_49

    .line 8209
    invoke-static {}, Lrx/subscriptions/Subscriptions;->b()Lrx/Subscription;

    move-result-object v0

    goto :goto_36

    .line 8199
    :catch_49
    move-exception v1

    .line 8200
    invoke-static {v1}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    .line 8203
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8205
    sget-object v0, Lrx/Observable;->b:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v0, v2}, Lrx/plugins/RxJavaObservableExecutionHook;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8207
    throw v2
.end method

.method public static final b(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1763
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/internal/util/ScalarSynchronousObservable;

    if-ne v0, v1, :cond_13

    .line 1764
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->a()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/util/ScalarSynchronousObservable;->c(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 1766
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/internal/operators/OperatorMerge;->a(Z)Lrx/internal/operators/OperatorMerge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->a(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    goto :goto_12
.end method

.method static synthetic b()Lrx/plugins/RxJavaObservableExecutionHook;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lrx/Observable;->b:Lrx/plugins/RxJavaObservableExecutionHook;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3302
    invoke-virtual {p0, p1, p1}, Lrx/Observable;->a(II)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3328
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize;-><init>(II)V

    invoke-virtual {p0, v0}, Lrx/Observable;->a(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/Observable$Operator;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$Operator",
            "<+TR;-TT;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lrx/Observable;

    new-instance v1, Lrx/Observable$2;

    invoke-direct {v1, p0, p1}, Lrx/Observable$2;-><init>(Lrx/Observable;Lrx/Observable$Operator;)V

    invoke-direct {v0, v1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public final a(Lrx/functions/Func1;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/internal/util/ScalarSynchronousObservable;

    if-ne v0, v1, :cond_f

    .line 5199
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable;->c(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 5201
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0, p1}, Lrx/Observable;->b(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->b(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    goto :goto_e
.end method

.method public final a(Lrx/Subscriber;)Lrx/Subscription;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 8096
    :try_start_0
    invoke-virtual {p1}, Lrx/Subscriber;->d()V

    .line 8098
    sget-object v0, Lrx/Observable;->b:Lrx/plugins/RxJavaObservableExecutionHook;

    iget-object v1, p0, Lrx/Observable;->a:Lrx/Observable$OnSubscribe;

    invoke-virtual {v0, p0, v1}, Lrx/plugins/RxJavaObservableExecutionHook;->a(Lrx/Observable;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/Observable$OnSubscribe;->a(Ljava/lang/Object;)V

    .line 8099
    sget-object v0, Lrx/Observable;->b:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaObservableExecutionHook;->a(Lrx/Subscription;)Lrx/Subscription;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    .line 8116
    :goto_14
    return-object v0

    .line 8100
    :catch_15
    move-exception v0

    .line 8102
    invoke-static {v0}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    .line 8105
    :try_start_19
    sget-object v1, Lrx/Observable;->b:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaObservableExecutionHook;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->a(Ljava/lang/Throwable;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_22} :catch_27

    .line 8116
    invoke-static {}, Lrx/subscriptions/Subscriptions;->b()Lrx/Subscription;

    move-result-object v0

    goto :goto_14

    .line 8106
    :catch_27
    move-exception v1

    .line 8107
    invoke-static {v1}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    .line 8110
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8112
    sget-object v0, Lrx/Observable;->b:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v0, v2}, Lrx/plugins/RxJavaObservableExecutionHook;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8114
    throw v2
.end method

.method public final a(Lrx/functions/Action1;)Lrx/Subscription;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 7910
    if-nez p1, :cond_b

    .line 7911
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7914
    :cond_b
    new-instance v0, Lrx/Observable$27;

    invoke-direct {v0, p0, p1}, Lrx/Observable$27;-><init>(Lrx/Observable;Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->b(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 8007
    if-nez p1, :cond_b

    .line 8008
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8010
    :cond_b
    if-nez p2, :cond_16

    .line 8011
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8013
    :cond_16
    if-nez p3, :cond_21

    .line 8014
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onComplete can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8017
    :cond_21
    new-instance v0, Lrx/Observable$29;

    invoke-direct {v0, p0, p3, p2, p1}, Lrx/Observable$29;-><init>(Lrx/Observable;Lrx/functions/Action0;Lrx/functions/Action1;Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->b(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5771
    new-instance v0, Lrx/internal/operators/OperatorMap;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorMap;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->a(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/Subscriber;)Lrx/Subscription;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 8158
    invoke-static {p1, p0}, Lrx/Observable;->a(Lrx/Subscriber;Lrx/Observable;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method
