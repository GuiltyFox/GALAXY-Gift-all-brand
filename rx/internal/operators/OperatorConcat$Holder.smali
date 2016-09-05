.class final Lrx/internal/operators/OperatorConcat$Holder;
.super Ljava/lang/Object;
.source "OperatorConcat.java"


# static fields
.field static final a:Lrx/internal/operators/OperatorConcat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorConcat",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    new-instance v0, Lrx/internal/operators/OperatorConcat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorConcat;-><init>(Lrx/internal/operators/OperatorConcat$1;)V

    sput-object v0, Lrx/internal/operators/OperatorConcat$Holder;->a:Lrx/internal/operators/OperatorConcat;

    return-void
.end method
