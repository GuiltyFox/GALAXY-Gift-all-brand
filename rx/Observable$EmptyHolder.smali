.class final Lrx/Observable$EmptyHolder;
.super Ljava/lang/Object;
.source "Observable.java"


# static fields
.field static final a:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1070
    new-instance v0, Lrx/Observable$EmptyHolder$1;

    invoke-direct {v0}, Lrx/Observable$EmptyHolder$1;-><init>()V

    invoke-static {v0}, Lrx/Observable;->a(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    sput-object v0, Lrx/Observable$EmptyHolder;->a:Lrx/Observable;

    return-void
.end method
