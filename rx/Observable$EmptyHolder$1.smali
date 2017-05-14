.class final Lrx/Observable$EmptyHolder$1;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Observable$EmptyHolder;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1070
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/Observable$EmptyHolder$1;->a(Lrx/Subscriber;)V

    return-void
.end method

.method public a(Lrx/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1073
    invoke-virtual {p1}, Lrx/Subscriber;->m_()V

    .line 1074
    return-void
.end method
