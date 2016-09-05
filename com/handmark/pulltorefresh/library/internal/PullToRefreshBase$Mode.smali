.class public final enum Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

.field public static final enum b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

.field public static final enum c:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

.field public static final enum d:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

.field public static final enum e:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

.field public static f:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

.field public static g:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

.field private static final synthetic i:[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;


# instance fields
.field private h:I


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

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 1344
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    const-string/jumbo v1, "PULL_FROM_START"

    invoke-direct {v0, v1, v3, v3}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 1351
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    const-string/jumbo v1, "PULL_FROM_END"

    invoke-direct {v0, v1, v4, v4}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->c:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 1356
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    const-string/jumbo v1, "BOTH"

    invoke-direct {v0, v1, v5, v5}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->d:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 1363
    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    const-string/jumbo v1, "MANUAL_REFRESH_ONLY"

    invoke-direct {v0, v1, v6, v6}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->e:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 1332
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->c:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->d:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->e:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->i:[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 1368
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->f:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    .line 1373
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->c:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->g:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1402
    iput p3, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->h:I

    .line 1403
    return-void
.end method

.method static a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
    .registers 1

    .prologue
    .line 1395
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    return-object v0
.end method

.method static a(I)Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
    .registers 6

    .prologue
    .line 1384
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->values()[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_16

    aget-object v0, v2, v1

    .line 1385
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->e()I

    move-result v4

    if-ne p0, v4, :cond_12

    .line 1391
    :goto_11
    return-object v0

    .line 1384
    :cond_12
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1391
    :cond_16
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->a()Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    move-result-object v0

    goto :goto_11
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;
    .registers 2

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
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->i:[Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    invoke-virtual {v0}, [Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    return-object v0
.end method


# virtual methods
.method b()Z
    .registers 2

    .prologue
    .line 1409
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->a:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_a

    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->e:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 1416
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->b:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->d:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 1423
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->c:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->d:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->e:Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method e()I
    .registers 2

    .prologue
    .line 1427
    iget v0, p0, Lcom/handmark/pulltorefresh/library/internal/PullToRefreshBase$Mode;->h:I

    return v0
.end method
