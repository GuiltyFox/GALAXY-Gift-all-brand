.class public Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/mathutils/Quotient;
.super Ljava/lang/Object;
.source "Quotient.java"


# instance fields
.field public denominator:I

.field public numerator:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "n"    # I
    .param p2, "d"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/mathutils/Quotient;->numerator:I

    .line 10
    iput p2, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/mathutils/Quotient;->denominator:I

    .line 11
    return-void
.end method


# virtual methods
.method public getDoubleValue()D
    .registers 5

    .prologue
    .line 14
    iget v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/mathutils/Quotient;->numerator:I

    int-to-double v0, v0

    iget v2, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/mathutils/Quotient;->denominator:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public inverse()Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/mathutils/Quotient;
    .registers 4

    .prologue
    .line 18
    new-instance v0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/mathutils/Quotient;

    iget v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/mathutils/Quotient;->denominator:I

    iget v2, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/mathutils/Quotient;->numerator:I

    invoke-direct {v0, v1, v2}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/mathutils/Quotient;-><init>(II)V

    return-object v0
.end method
