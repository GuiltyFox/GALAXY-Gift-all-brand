.class final enum Lcom/control/imagecropper/HighlightView$ModifyMode;
.super Ljava/lang/Enum;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/control/imagecropper/HighlightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ModifyMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/control/imagecropper/HighlightView$ModifyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/control/imagecropper/HighlightView$ModifyMode;

.field public static final enum Grow:Lcom/control/imagecropper/HighlightView$ModifyMode;

.field public static final enum Move:Lcom/control/imagecropper/HighlightView$ModifyMode;

.field public static final enum None:Lcom/control/imagecropper/HighlightView$ModifyMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 440
    new-instance v0, Lcom/control/imagecropper/HighlightView$ModifyMode;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/control/imagecropper/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/control/imagecropper/HighlightView$ModifyMode;->None:Lcom/control/imagecropper/HighlightView$ModifyMode;

    new-instance v0, Lcom/control/imagecropper/HighlightView$ModifyMode;

    const-string v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/control/imagecropper/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/control/imagecropper/HighlightView$ModifyMode;->Move:Lcom/control/imagecropper/HighlightView$ModifyMode;

    new-instance v0, Lcom/control/imagecropper/HighlightView$ModifyMode;

    const-string v1, "Grow"

    invoke-direct {v0, v1, v4}, Lcom/control/imagecropper/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/control/imagecropper/HighlightView$ModifyMode;->Grow:Lcom/control/imagecropper/HighlightView$ModifyMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/control/imagecropper/HighlightView$ModifyMode;

    sget-object v1, Lcom/control/imagecropper/HighlightView$ModifyMode;->None:Lcom/control/imagecropper/HighlightView$ModifyMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/control/imagecropper/HighlightView$ModifyMode;->Move:Lcom/control/imagecropper/HighlightView$ModifyMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/control/imagecropper/HighlightView$ModifyMode;->Grow:Lcom/control/imagecropper/HighlightView$ModifyMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/control/imagecropper/HighlightView$ModifyMode;->ENUM$VALUES:[Lcom/control/imagecropper/HighlightView$ModifyMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 440
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/control/imagecropper/HighlightView$ModifyMode;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/control/imagecropper/HighlightView$ModifyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/control/imagecropper/HighlightView$ModifyMode;

    return-object v0
.end method

.method public static values()[Lcom/control/imagecropper/HighlightView$ModifyMode;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/control/imagecropper/HighlightView$ModifyMode;->ENUM$VALUES:[Lcom/control/imagecropper/HighlightView$ModifyMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/control/imagecropper/HighlightView$ModifyMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
