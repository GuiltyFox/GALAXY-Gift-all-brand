.class Lic/buzzebeeslib/control/PullToRefreshListView$PTROnGlobalLayoutListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/control/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PTROnGlobalLayoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/control/PullToRefreshListView;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/control/PullToRefreshListView;)V
    .registers 2

    .prologue
    .line 486
    iput-object p1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/control/PullToRefreshListView;Lic/buzzebeeslib/control/PullToRefreshListView$PTROnGlobalLayoutListener;)V
    .registers 3

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lic/buzzebeeslib/control/PullToRefreshListView$PTROnGlobalLayoutListener;-><init>(Lic/buzzebeeslib/control/PullToRefreshListView;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .prologue
    .line 490
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    # getter for: Lic/buzzebeeslib/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->access$3(Lic/buzzebeeslib/control/PullToRefreshListView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 492
    .local v0, "initialHeaderHeight":I
    if-lez v0, :cond_2e

    .line 493
    invoke-static {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->access$9(I)V

    .line 495
    # getter for: Lic/buzzebeeslib/control/PullToRefreshListView;->measuredHeaderHeight:I
    invoke-static {}, Lic/buzzebeeslib/control/PullToRefreshListView;->access$10()I

    move-result v1

    if-lez v1, :cond_2e

    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    # getter for: Lic/buzzebeeslib/control/PullToRefreshListView;->state:Lic/buzzebeeslib/control/PullToRefreshListView$State;
    invoke-static {v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->access$0(Lic/buzzebeeslib/control/PullToRefreshListView;)Lic/buzzebeeslib/control/PullToRefreshListView$State;

    move-result-object v1

    sget-object v2, Lic/buzzebeeslib/control/PullToRefreshListView$State;->REFRESHING:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    if-eq v1, v2, :cond_2e

    .line 496
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    # getter for: Lic/buzzebeeslib/control/PullToRefreshListView;->measuredHeaderHeight:I
    invoke-static {}, Lic/buzzebeeslib/control/PullToRefreshListView;->access$10()I

    move-result v2

    neg-int v2, v2

    # invokes: Lic/buzzebeeslib/control/PullToRefreshListView;->setHeaderPadding(I)V
    invoke-static {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->access$4(Lic/buzzebeeslib/control/PullToRefreshListView;I)V

    .line 497
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->requestLayout()V

    .line 501
    :cond_2e
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 502
    return-void
.end method
