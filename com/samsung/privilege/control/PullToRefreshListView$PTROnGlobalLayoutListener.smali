.class Lcom/samsung/privilege/control/PullToRefreshListView$PTROnGlobalLayoutListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/control/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PTROnGlobalLayoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/control/PullToRefreshListView;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/control/PullToRefreshListView;)V
    .registers 2

    .prologue
    .line 500
    iput-object p1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/control/PullToRefreshListView;Lcom/samsung/privilege/control/PullToRefreshListView$PTROnGlobalLayoutListener;)V
    .registers 3

    .prologue
    .line 500
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/PullToRefreshListView$PTROnGlobalLayoutListener;-><init>(Lcom/samsung/privilege/control/PullToRefreshListView;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .prologue
    .line 504
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    # getter for: Lcom/samsung/privilege/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->access$3(Lcom/samsung/privilege/control/PullToRefreshListView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 506
    .local v0, "initialHeaderHeight":I
    if-lez v0, :cond_2e

    .line 507
    invoke-static {v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->access$9(I)V

    .line 509
    # getter for: Lcom/samsung/privilege/control/PullToRefreshListView;->measuredHeaderHeight:I
    invoke-static {}, Lcom/samsung/privilege/control/PullToRefreshListView;->access$10()I

    move-result v1

    if-lez v1, :cond_2e

    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    # getter for: Lcom/samsung/privilege/control/PullToRefreshListView;->state:Lcom/samsung/privilege/control/PullToRefreshListView$State;
    invoke-static {v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->access$0(Lcom/samsung/privilege/control/PullToRefreshListView;)Lcom/samsung/privilege/control/PullToRefreshListView$State;

    move-result-object v1

    sget-object v2, Lcom/samsung/privilege/control/PullToRefreshListView$State;->REFRESHING:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    if-eq v1, v2, :cond_2e

    .line 510
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    # getter for: Lcom/samsung/privilege/control/PullToRefreshListView;->measuredHeaderHeight:I
    invoke-static {}, Lcom/samsung/privilege/control/PullToRefreshListView;->access$10()I

    move-result v2

    neg-int v2, v2

    # invokes: Lcom/samsung/privilege/control/PullToRefreshListView;->setHeaderPadding(I)V
    invoke-static {v1, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->access$4(Lcom/samsung/privilege/control/PullToRefreshListView;I)V

    .line 511
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->requestLayout()V

    .line 515
    :cond_2e
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 516
    return-void
.end method
