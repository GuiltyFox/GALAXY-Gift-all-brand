.class public final enum Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

.field public static final enum BOTH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

.field public static final enum DISABLED:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

.field public static final enum MANUAL_REFRESH_ONLY:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

.field public static PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

.field public static final enum PULL_FROM_END:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

.field public static final enum PULL_FROM_START:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

.field public static PULL_UP_TO_REFRESH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;


# instance fields
.field private mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1337
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v2, v2}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 1344
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    const-string/jumbo v1, "PULL_FROM_START"

    invoke-direct {v0, v1, v3, v3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 1351
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    const-string/jumbo v1, "PULL_FROM_END"

    invoke-direct {v0, v1, v4, v4}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 1356
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    const-string/jumbo v1, "BOTH"

    invoke-direct {v0, v1, v5, v5}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 1363
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    const-string/jumbo v1, "MANUAL_REFRESH_ONLY"

    invoke-direct {v0, v1, v6, v6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 1332
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->$VALUES:[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 1368
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 1373
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "modeInt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1402
    iput p3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->mIntValue:I

    .line 1403
    return-void
.end method

.method static getDefault()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
    .registers 1

    .prologue
    .line 1395
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    return-object v0
.end method

.method static mapIntToValue(I)Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
    .registers 6
    .param p0, "modeInt"    # I

    .prologue
    .line 1384
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->values()[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 1385
    .local v0, "value":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->getIntValue()I

    move-result v4

    if-ne p0, v4, :cond_11

    .line 1391
    .end local v0    # "value":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
    :goto_10
    return-object v0

    .line 1384
    .restart local v0    # "value":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1391
    .end local v0    # "value":Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
    :cond_14
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->getDefault()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    goto :goto_10
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1332
    const-class v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public static values()[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
    .registers 1

    .prologue
    .line 1332
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->$VALUES:[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v0}, [Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    return-object v0
.end method


# virtual methods
.method getIntValue()I
    .registers 2

    .prologue
    .line 1427
    iget v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->mIntValue:I

    return v0
.end method

.method permitsPullToRefresh()Z
    .registers 2

    .prologue
    .line 1409
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_a

    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public showFooterLoadingLayout()Z
    .registers 2

    .prologue
    .line 1423
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public showHeaderLoadingLayout()Z
    .registers 2

    .prologue
    .line 1416
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
