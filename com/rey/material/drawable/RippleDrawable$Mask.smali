.class public Lcom/rey/material/drawable/RippleDrawable$Mask;
.super Ljava/lang/Object;
.source "RippleDrawable.java"


# instance fields
.field final a:I

.field final b:[F

.field final c:I

.field final d:I

.field final e:I

.field final f:I


# direct methods
.method public constructor <init>(IIIIIIIII)V
    .registers 13

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/rey/material/drawable/RippleDrawable$Mask;->b:[F

    .line 473
    iput p1, p0, Lcom/rey/material/drawable/RippleDrawable$Mask;->a:I

    .line 475
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable$Mask;->b:[F

    const/4 v1, 0x0

    int-to-float v2, p2

    aput v2, v0, v1

    .line 476
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable$Mask;->b:[F

    const/4 v1, 0x1

    int-to-float v2, p2

    aput v2, v0, v1

    .line 478
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable$Mask;->b:[F

    const/4 v1, 0x2

    int-to-float v2, p3

    aput v2, v0, v1

    .line 479
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable$Mask;->b:[F

    const/4 v1, 0x3

    int-to-float v2, p3

    aput v2, v0, v1

    .line 481
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable$Mask;->b:[F

    const/4 v1, 0x4

    int-to-float v2, p4

    aput v2, v0, v1

    .line 482
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable$Mask;->b:[F

    const/4 v1, 0x5

    int-to-float v2, p4

    aput v2, v0, v1

    .line 484
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable$Mask;->b:[F

    const/4 v1, 0x6

    int-to-float v2, p5

    aput v2, v0, v1

    .line 485
    iget-object v0, p0, Lcom/rey/material/drawable/RippleDrawable$Mask;->b:[F

    const/4 v1, 0x7

    int-to-float v2, p5

    aput v2, v0, v1

    .line 487
    iput p6, p0, Lcom/rey/material/drawable/RippleDrawable$Mask;->c:I

    .line 488
    iput p7, p0, Lcom/rey/material/drawable/RippleDrawable$Mask;->d:I

    .line 489
    iput p8, p0, Lcom/rey/material/drawable/RippleDrawable$Mask;->e:I

    .line 490
    iput p9, p0, Lcom/rey/material/drawable/RippleDrawable$Mask;->f:I

    .line 491
    return-void
.end method
