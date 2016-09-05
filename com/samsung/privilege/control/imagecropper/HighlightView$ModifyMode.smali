.class final enum Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;
.super Ljava/lang/Enum;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

.field public static final enum b:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

.field public static final enum c:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

.field private static final synthetic d:[Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 441
    new-instance v0, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;->a:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    new-instance v0, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    const-string/jumbo v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;->b:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    new-instance v0, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    const-string/jumbo v1, "Grow"

    invoke-direct {v0, v1, v4}, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;->c:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    sget-object v1, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;->a:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;->b:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;->c:Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;->d:[Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

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
    .line 441
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;
    .registers 2

    .prologue
    .line 441
    const-class v0, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;
    .registers 1

    .prologue
    .line 441
    sget-object v0, Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;->d:[Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    invoke-virtual {v0}, [Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/privilege/control/imagecropper/HighlightView$ModifyMode;

    return-object v0
.end method
