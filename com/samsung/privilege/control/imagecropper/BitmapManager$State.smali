.class final enum Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;
.super Ljava/lang/Enum;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

.field public static final enum b:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

.field private static final synthetic c:[Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    const-string/jumbo v1, "CANCEL"

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;->a:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    new-instance v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    const-string/jumbo v1, "ALLOW"

    invoke-direct {v0, v1, v3}, Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;->b:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    sget-object v1, Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;->a:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;->b:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;->c:[Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;
    .registers 2

    .prologue
    .line 46
    const-class v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    return-object v0
.end method

.method public static values()[Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;->c:[Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    invoke-virtual {v0}, [Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    return-object v0
.end method
