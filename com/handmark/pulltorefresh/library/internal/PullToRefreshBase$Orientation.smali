.class public final enum Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

.field public static final enum b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

.field private static final synthetic c:[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1518
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    const-string/jumbo v1, "VERTICAL"

    invoke-direct {v0, v1, v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    const-string/jumbo v1, "HORIZONTAL"

    invoke-direct {v0, v1, v3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    .line 1517
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->c:[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1517
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;
    .registers 2

    .prologue
    .line 1517
    const-class v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method public static values()[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;
    .registers 1

    .prologue
    .line 1517
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->c:[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    invoke-virtual {v0}, [Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;

    return-object v0
.end method
