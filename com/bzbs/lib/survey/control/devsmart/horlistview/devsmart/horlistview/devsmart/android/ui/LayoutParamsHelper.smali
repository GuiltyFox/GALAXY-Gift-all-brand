.class public Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ui/LayoutParamsHelper;
.super Ljava/lang/Object;
.source "LayoutParamsHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFillWrap()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 13
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 14
    .local v0, "retval":Landroid/view/ViewGroup$LayoutParams;
    return-object v0
.end method

.method public static createWrapWrap()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    const/4 v1, -0x2

    .line 8
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 9
    .local v0, "retval":Landroid/view/ViewGroup$LayoutParams;
    return-object v0
.end method
