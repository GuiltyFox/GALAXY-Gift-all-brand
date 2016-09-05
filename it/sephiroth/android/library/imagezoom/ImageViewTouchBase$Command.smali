.class public final enum Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;
.super Ljava/lang/Enum;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

.field public static final enum b:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

.field public static final enum c:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

.field public static final enum d:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

.field public static final enum e:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

.field private static final synthetic f:[Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;


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

    const-string/jumbo v1, "Center"

    invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    const-string/jumbo v1, "Move"

    invoke-direct {v0, v1, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    const-string/jumbo v1, "Zoom"

    invoke-direct {v0, v1, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->c:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    const-string/jumbo v1, "Layout"

    invoke-direct {v0, v1, v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->d:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    const-string/jumbo v1, "Reset"

    invoke-direct {v0, v1, v6}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->e:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    aput-object v1, v0, v2

    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    aput-object v1, v0, v3

    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->c:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    aput-object v1, v0, v4

    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->d:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    aput-object v1, v0, v5

    sget-object v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->e:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    aput-object v1, v0, v6

    sput-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->f:[Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;
    .registers 2

    .prologue
    .line 21
    const-class v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    return-object v0
.end method

.method public static values()[Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->f:[Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    invoke-virtual {v0}, [Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$Command;

    return-object v0
.end method
