.class public final enum Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

.field public static final enum FLIP:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

.field public static final enum ROTATE:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1291
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    const-string/jumbo v1, "ROTATE"

    invoke-direct {v0, v1, v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .line 1297
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    const-string/jumbo v1, "FLIP"

    invoke-direct {v0, v1, v3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .line 1286
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

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
    .line 1286
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getDefault()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;
    .registers 1

    .prologue
    .line 1300
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method

.method static mapIntToValue(I)Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;
    .registers 2
    .param p0, "modeInt"    # I

    .prologue
    .line 1312
    packed-switch p0, :pswitch_data_a

    .line 1315
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .line 1317
    :goto_5
    return-object v0

    :pswitch_6
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    goto :goto_5

    .line 1312
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1286
    const-class v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method

.method public static values()[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;
    .registers 1

    .prologue
    .line 1286
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    invoke-virtual {v0}, [Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method


# virtual methods
.method createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1322
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$4;->$SwitchMap$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$AnimationStyle:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 1325
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 1327
    :goto_10
    return-object v0

    :pswitch_11
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    goto :goto_10

    .line 1322
    nop

    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_11
    .end packed-switch
.end method
