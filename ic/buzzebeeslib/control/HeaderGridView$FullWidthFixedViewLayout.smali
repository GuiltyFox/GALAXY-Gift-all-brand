.class Lic/buzzebeeslib/control/HeaderGridView$FullWidthFixedViewLayout;
.super Landroid/widget/FrameLayout;
.source "HeaderGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/control/HeaderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullWidthFixedViewLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/control/HeaderGridView;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/control/HeaderGridView;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    iput-object p1, p0, Lic/buzzebeeslib/control/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lic/buzzebeeslib/control/HeaderGridView;

    .line 184
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 185
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 189
    iget-object v1, p0, Lic/buzzebeeslib/control/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lic/buzzebeeslib/control/HeaderGridView;

    invoke-virtual {v1}, Lic/buzzebeeslib/control/HeaderGridView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lic/buzzebeeslib/control/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lic/buzzebeeslib/control/HeaderGridView;

    invoke-virtual {v2}, Lic/buzzebeeslib/control/HeaderGridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lic/buzzebeeslib/control/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lic/buzzebeeslib/control/HeaderGridView;

    invoke-virtual {v2}, Lic/buzzebeeslib/control/HeaderGridView;->getPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    .line 190
    .local v0, "targetWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 191
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 192
    return-void
.end method
