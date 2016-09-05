.class public final Lrx/internal/util/UtilityFunctions;
.super Ljava/lang/Object;
.source "UtilityFunctions.java"


# static fields
.field private static final a:Lrx/internal/util/UtilityFunctions$NullFunction;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 93
    new-instance v0, Lrx/internal/util/UtilityFunctions$NullFunction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/util/UtilityFunctions$NullFunction;-><init>(Lrx/internal/util/UtilityFunctions$1;)V

    sput-object v0, Lrx/internal/util/UtilityFunctions;->a:Lrx/internal/util/UtilityFunctions$NullFunction;

    return-void
.end method

.method public static a()Lrx/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/functions/Func1",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lrx/internal/util/UtilityFunctions$1;

    invoke-direct {v0}, Lrx/internal/util/UtilityFunctions$1;-><init>()V

    return-object v0
.end method
