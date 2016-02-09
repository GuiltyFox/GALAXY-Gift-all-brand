.class final enum Lcom/control/imagecropper/BitmapManager$State;
.super Ljava/lang/Enum;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/control/imagecropper/BitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/control/imagecropper/BitmapManager$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALLOW:Lcom/control/imagecropper/BitmapManager$State;

.field public static final enum CANCEL:Lcom/control/imagecropper/BitmapManager$State;

.field private static final synthetic ENUM$VALUES:[Lcom/control/imagecropper/BitmapManager$State;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/control/imagecropper/BitmapManager$State;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v2}, Lcom/control/imagecropper/BitmapManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/control/imagecropper/BitmapManager$State;->CANCEL:Lcom/control/imagecropper/BitmapManager$State;

    new-instance v0, Lcom/control/imagecropper/BitmapManager$State;

    const-string v1, "ALLOW"

    invoke-direct {v0, v1, v3}, Lcom/control/imagecropper/BitmapManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/control/imagecropper/BitmapManager$State;->ALLOW:Lcom/control/imagecropper/BitmapManager$State;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/control/imagecropper/BitmapManager$State;

    sget-object v1, Lcom/control/imagecropper/BitmapManager$State;->CANCEL:Lcom/control/imagecropper/BitmapManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/control/imagecropper/BitmapManager$State;->ALLOW:Lcom/control/imagecropper/BitmapManager$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/control/imagecropper/BitmapManager$State;->ENUM$VALUES:[Lcom/control/imagecropper/BitmapManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/control/imagecropper/BitmapManager$State;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/control/imagecropper/BitmapManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/control/imagecropper/BitmapManager$State;

    return-object v0
.end method

.method public static values()[Lcom/control/imagecropper/BitmapManager$State;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/control/imagecropper/BitmapManager$State;->ENUM$VALUES:[Lcom/control/imagecropper/BitmapManager$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/control/imagecropper/BitmapManager$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
