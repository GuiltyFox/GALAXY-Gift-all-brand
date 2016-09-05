.class final Lrx/internal/operators/OperatorMerge$HolderNoDelay;
.super Ljava/lang/Object;
.source "OperatorMerge.java"


# static fields
.field static final a:Lrx/internal/operators/OperatorMerge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorMerge",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 59
    new-instance v0, Lrx/internal/operators/OperatorMerge;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorMerge;-><init>(ZILrx/internal/operators/OperatorMerge$1;)V

    sput-object v0, Lrx/internal/operators/OperatorMerge$HolderNoDelay;->a:Lrx/internal/operators/OperatorMerge;

    return-void
.end method
