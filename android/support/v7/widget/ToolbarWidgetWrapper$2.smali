.class Landroid/support/v7/widget/ToolbarWidgetWrapper$2;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/v7/widget/ToolbarWidgetWrapper;

.field private c:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ToolbarWidgetWrapper;I)V
    .registers 4

    .prologue
    .line 564
    iput-object p1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->b:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    iput p2, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->a:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->c:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->c:Z

    .line 582
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 574
    iget-boolean v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->c:Z

    if-nez v0, :cond_f

    .line 575
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->b:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    # getter for: Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;
    invoke-static {v0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->access$000(Landroid/support/v7/widget/ToolbarWidgetWrapper;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 577
    :cond_f
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 569
    iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->b:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    # getter for: Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;
    invoke-static {v0}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->access$000(Landroid/support/v7/widget/ToolbarWidgetWrapper;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 570
    return-void
.end method
