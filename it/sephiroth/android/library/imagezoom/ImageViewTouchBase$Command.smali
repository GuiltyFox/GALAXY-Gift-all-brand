.class public final enum Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;
.super Ljava/lang/Enum;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Center:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

.field private static final synthetic ENUM$VALUES:[Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

.field public static final enum Layout:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

.field public static final enum Move:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

.field public static final enum Reset:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

.field public static final enum Zoom:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    const-string v1, "Center"

    invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->Center:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    const-string v1, "Move"

    invoke-direct {v0, v1, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->Move:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    const-string v1, "Zoom"

    invoke-direct {v0, v1, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->Zoom:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    const-string v1, "Layout"

    invoke-direct {v0, v1, v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->Layout:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    const-string v1, "Reset"

    invoke-direct {v0, v1, v6}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->Reset:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->Center:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    aput-object v1, v0, v2

    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->Move:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    aput-object v1, v0, v3

    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->Zoom:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    aput-object v1, v0, v4

    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->Layout:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    aput-object v1, v0, v5

    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->Reset:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    aput-object v1, v0, v6

    sput-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->ENUM$VALUES:[Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    return-object v0
.end method

.method public static values()[Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->ENUM$VALUES:[Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    array-length v1, v0

    new-array v2, v1, [Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
