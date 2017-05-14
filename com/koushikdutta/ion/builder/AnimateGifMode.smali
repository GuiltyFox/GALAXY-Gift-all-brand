.class public final enum Lcom/koushikdutta/ion/builder/AnimateGifMode;
.super Ljava/lang/Enum;
.source "AnimateGifMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/koushikdutta/ion/builder/AnimateGifMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/koushikdutta/ion/builder/AnimateGifMode;

.field public static final enum b:Lcom/koushikdutta/ion/builder/AnimateGifMode;

.field public static final enum c:Lcom/koushikdutta/ion/builder/AnimateGifMode;

.field private static final synthetic d:[Lcom/koushikdutta/ion/builder/AnimateGifMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;

    const-string/jumbo v1, "NO_ANIMATE"

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/ion/builder/AnimateGifMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;->a:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    .line 14
    new-instance v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;

    const-string/jumbo v1, "ANIMATE"

    invoke-direct {v0, v1, v3}, Lcom/koushikdutta/ion/builder/AnimateGifMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;->b:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    .line 18
    new-instance v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;

    const-string/jumbo v1, "ANIMATE_ONCE"

    invoke-direct {v0, v1, v4}, Lcom/koushikdutta/ion/builder/AnimateGifMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;->c:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/koushikdutta/ion/builder/AnimateGifMode;

    sget-object v1, Lcom/koushikdutta/ion/builder/AnimateGifMode;->a:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/koushikdutta/ion/builder/AnimateGifMode;->b:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/koushikdutta/ion/builder/AnimateGifMode;->c:Lcom/koushikdutta/ion/builder/AnimateGifMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;->d:[Lcom/koushikdutta/ion/builder/AnimateGifMode;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/ion/builder/AnimateGifMode;
    .registers 2

    .prologue
    .line 6
    const-class v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;

    return-object v0
.end method

.method public static values()[Lcom/koushikdutta/ion/builder/AnimateGifMode;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/koushikdutta/ion/builder/AnimateGifMode;->d:[Lcom/koushikdutta/ion/builder/AnimateGifMode;

    invoke-virtual {v0}, [Lcom/koushikdutta/ion/builder/AnimateGifMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/ion/builder/AnimateGifMode;

    return-object v0
.end method
