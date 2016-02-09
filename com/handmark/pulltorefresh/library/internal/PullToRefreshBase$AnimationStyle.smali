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
.field private static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$AnimationStyle:[I

.field private static final synthetic ENUM$VALUES:[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

.field public static final enum FLIP:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

.field public static final enum ROTATE:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;


# direct methods
.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$AnimationStyle()[I
    .registers 3

    .prologue
    .line 1286
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$AnimationStyle:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->values()[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23

    :goto_15
    :try_start_15
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21

    :goto_1e
    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$AnimationStyle:[I

    goto :goto_4

    :catch_21
    move-exception v1

    goto :goto_1e

    :catch_23
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1287
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    const-string v1, "ROTATE"

    invoke-direct {v0, v1, v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    .line 1291
    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .line 1293
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    const-string v1, "FLIP"

    invoke-direct {v0, v1, v3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    .line 1297
    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    .line 1286
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->ENUM$VALUES:[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

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

    .prologue
    .line 1
    const-class v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method

.method public static values()[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->ENUM$VALUES:[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    array-length v1, v0

    new-array v2, v1, [Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method createLoadingLayout(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1322
    .local p2, "mode":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;"
    .local p3, "scrollDirection":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;, "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;"
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$internal$PullToRefreshBase$AnimationStyle()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$AnimationStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 1325
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 1327
    :goto_12
    return-object v0

    :pswitch_13
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    goto :goto_12

    .line 1322
    nop

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_13
    .end packed-switch
.end method
