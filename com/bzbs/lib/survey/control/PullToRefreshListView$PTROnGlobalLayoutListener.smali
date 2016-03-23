.class Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/control/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PTROnGlobalLayoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;


# direct methods
.method private constructor <init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)V
    .registers 2

    .prologue
    .line 481
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Lcom/bzbs/lib/survey/control/PullToRefreshListView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/bzbs/lib/survey/control/PullToRefreshListView;
    .param p2, "x1"    # Lcom/bzbs/lib/survey/control/PullToRefreshListView$1;

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;-><init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .prologue
    .line 485
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    # getter for: Lcom/bzbs/lib/survey/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->access$600(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 487
    .local v0, "initialHeaderHeight":I
    if-lez v0, :cond_2e

    .line 488
    # setter for: Lcom/bzbs/lib/survey/control/PullToRefreshListView;->measuredHeaderHeight:I
    invoke-static {v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->access$1102(I)I

    .line 490
    # getter for: Lcom/bzbs/lib/survey/control/PullToRefreshListView;->measuredHeaderHeight:I
    invoke-static {}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->access$1100()I

    move-result v1

    if-lez v1, :cond_2e

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    # getter for: Lcom/bzbs/lib/survey/control/PullToRefreshListView;->state:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;
    invoke-static {v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->access$300(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    move-result-object v1

    sget-object v2, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->REFRESHING:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-eq v1, v2, :cond_2e

    .line 491
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    # getter for: Lcom/bzbs/lib/survey/control/PullToRefreshListView;->measuredHeaderHeight:I
    invoke-static {}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->access$1100()I

    move-result v2

    neg-int v2, v2

    # invokes: Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setHeaderPadding(I)V
    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->access$700(Lcom/bzbs/lib/survey/control/PullToRefreshListView;I)V

    .line 492
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->requestLayout()V

    .line 496
    :cond_2e
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$PTROnGlobalLayoutListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 497
    return-void
.end method
