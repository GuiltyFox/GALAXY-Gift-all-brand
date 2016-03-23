.class Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/control/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderAnimationListener"
.end annotation


# instance fields
.field private height:I

.field private stateAtAnimationStart:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

.field final synthetic this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;


# direct methods
.method private constructor <init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)V
    .registers 2

    .prologue
    .line 429
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Lcom/bzbs/lib/survey/control/PullToRefreshListView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/bzbs/lib/survey/control/PullToRefreshListView;
    .param p2, "x1"    # Lcom/bzbs/lib/survey/control/PullToRefreshListView$1;

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;-><init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 8
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 450
    iget-object v3, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->stateAtAnimationStart:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v4, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->REFRESHING:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-ne v1, v4, :cond_44

    move v1, v2

    :goto_a
    # invokes: Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setHeaderPadding(I)V
    invoke-static {v3, v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->access$700(Lcom/bzbs/lib/survey/control/PullToRefreshListView;I)V

    .line 452
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 453
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 454
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    # getter for: Lcom/bzbs/lib/survey/control/PullToRefreshListView;->scrollbarEnabled:Z
    invoke-static {v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->access$500(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 457
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 460
    :cond_2a
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    # getter for: Lcom/bzbs/lib/survey/control/PullToRefreshListView;->bounceBackHeader:Z
    invoke-static {v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->access$800(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 461
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    # setter for: Lcom/bzbs/lib/survey/control/PullToRefreshListView;->bounceBackHeader:Z
    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->access$802(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Z)Z

    .line 463
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    new-instance v2, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener$1;

    invoke-direct {v2, p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener$1;-><init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 474
    :cond_43
    :goto_43
    return-void

    .line 450
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_44
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    # getter for: Lcom/bzbs/lib/survey/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->access$600(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    goto :goto_a

    .line 471
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_50
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->stateAtAnimationStart:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v2, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->REFRESHING:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-eq v1, v2, :cond_43

    .line 472
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    sget-object v2, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    # invokes: Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setState(Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V
    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->access$1000(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V

    goto :goto_43
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 478
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 436
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    # getter for: Lcom/bzbs/lib/survey/control/PullToRefreshListView;->state:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;
    invoke-static {v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->access$300(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->stateAtAnimationStart:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    .line 438
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 439
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->height:I

    .line 440
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    # getter for: Lcom/bzbs/lib/survey/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->access$400(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 441
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    # getter for: Lcom/bzbs/lib/survey/control/PullToRefreshListView;->scrollbarEnabled:Z
    invoke-static {v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->access$500(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 444
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 446
    :cond_38
    return-void
.end method
