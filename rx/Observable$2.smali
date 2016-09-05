.class Lrx/Observable$2;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->a(Lrx/Observable$Operator;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/Observable$Operator;

.field final synthetic b:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/Observable$Operator;)V
    .registers 3

    .prologue
    .line 154
    iput-object p1, p0, Lrx/Observable$2;->b:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$2;->a:Lrx/Observable$Operator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 154
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/Observable$2;->a(Lrx/Subscriber;)V

    return-void
.end method

.method public a(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 158
    :try_start_0
    invoke-static {}, Lrx/Observable;->b()Lrx/plugins/RxJavaObservableExecutionHook;

    move-result-object v0

    iget-object v1, p0, Lrx/Observable$2;->a:Lrx/Observable$Operator;

    invoke-virtual {v0, v1}, Lrx/plugins/RxJavaObservableExecutionHook;->a(Lrx/Observable$Operator;)Lrx/Observable$Operator;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/Observable$Operator;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscriber;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_23

    .line 161
    :try_start_10
    invoke-virtual {v0}, Lrx/Subscriber;->d()V

    .line 162
    iget-object v1, p0, Lrx/Observable$2;->b:Lrx/Observable;

    iget-object v1, v1, Lrx/Observable;->a:Lrx/Observable$OnSubscribe;

    invoke-interface {v1, v0}, Lrx/Observable$OnSubscribe;->a(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1a} :catch_1b

    .line 176
    :goto_1a
    return-void

    .line 163
    :catch_1b
    move-exception v1

    .line 167
    :try_start_1c
    invoke-static {v1}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    .line 168
    invoke-virtual {v0, v1}, Lrx/Subscriber;->a(Ljava/lang/Throwable;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_22} :catch_23

    goto :goto_1a

    .line 170
    :catch_23
    move-exception v0

    .line 171
    invoke-static {v0}, Lrx/exceptions/Exceptions;->a(Ljava/lang/Throwable;)V

    .line 174
    invoke-virtual {p1, v0}, Lrx/Subscriber;->a(Ljava/lang/Throwable;)V

    goto :goto_1a
.end method
