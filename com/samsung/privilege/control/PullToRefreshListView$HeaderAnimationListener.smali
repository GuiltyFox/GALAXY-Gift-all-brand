.class Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/control/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderAnimationListener"
.end annotation


# instance fields
.field private height:I

.field private stateAtAnimationStart:Lcom/samsung/privilege/control/PullToRefreshListView$State;

.field final synthetic this$0:Lcom/samsung/privilege/control/PullToRefreshListView;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/control/PullToRefreshListView;)V
    .registers 2

    .prologue
    .line 450
    iput-object p1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/control/PullToRefreshListView;Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;)V
    .registers 3

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;-><init>(Lcom/samsung/privilege/control/PullToRefreshListView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;)Lcom/samsung/privilege/control/PullToRefreshListView;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 8
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 471
    iget-object v3, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->stateAtAnimationStart:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    sget-object v4, Lcom/samsung/privilege/control/PullToRefreshListView$State;->REFRESHING:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    if-ne v1, v4, :cond_44

    move v1, v2

    :goto_a
    # invokes: Lcom/samsung/privilege/control/PullToRefreshListView;->setHeaderPadding(I)V
    invoke-static {v3, v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->access$4(Lcom/samsung/privilege/control/PullToRefreshListView;I)V

    .line 473
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 474
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 475
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    # getter for: Lcom/samsung/privilege/control/PullToRefreshListView;->scrollbarEnabled:Z
    invoke-static {v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->access$2(Lcom/samsung/privilege/control/PullToRefreshListView;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 478
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/privilege/control/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 481
    :cond_2a
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    # getter for: Lcom/samsung/privilege/control/PullToRefreshListView;->bounceBackHeader:Z
    invoke-static {v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->access$5(Lcom/samsung/privilege/control/PullToRefreshListView;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 482
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-static {v1, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->access$6(Lcom/samsung/privilege/control/PullToRefreshListView;Z)V

    .line 484
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    new-instance v2, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener$1;-><init>(Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;)V

    .line 491
    const-wide/16 v4, 0x64

    .line 484
    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/privilege/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 495
    :cond_43
    :goto_43
    return-void

    .line 471
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_44
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    # getter for: Lcom/samsung/privilege/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->access$3(Lcom/samsung/privilege/control/PullToRefreshListView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    goto :goto_a

    .line 492
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_50
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->stateAtAnimationStart:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    sget-object v2, Lcom/samsung/privilege/control/PullToRefreshListView$State;->REFRESHING:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    if-eq v1, v2, :cond_43

    .line 493
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    sget-object v2, Lcom/samsung/privilege/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    # invokes: Lcom/samsung/privilege/control/PullToRefreshListView;->setState(Lcom/samsung/privilege/control/PullToRefreshListView$State;)V
    invoke-static {v1, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->access$8(Lcom/samsung/privilege/control/PullToRefreshListView;Lcom/samsung/privilege/control/PullToRefreshListView$State;)V

    goto :goto_43
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 499
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 457
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    # getter for: Lcom/samsung/privilege/control/PullToRefreshListView;->state:Lcom/samsung/privilege/control/PullToRefreshListView$State;
    invoke-static {v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->access$0(Lcom/samsung/privilege/control/PullToRefreshListView;)Lcom/samsung/privilege/control/PullToRefreshListView$State;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->stateAtAnimationStart:Lcom/samsung/privilege/control/PullToRefreshListView$State;

    .line 459
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 460
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->height:I

    .line 461
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    # getter for: Lcom/samsung/privilege/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->access$1(Lcom/samsung/privilege/control/PullToRefreshListView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 462
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/control/PullToRefreshListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    # getter for: Lcom/samsung/privilege/control/PullToRefreshListView;->scrollbarEnabled:Z
    invoke-static {v1}, Lcom/samsung/privilege/control/PullToRefreshListView;->access$2(Lcom/samsung/privilege/control/PullToRefreshListView;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 465
    iget-object v1, p0, Lcom/samsung/privilege/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lcom/samsung/privilege/control/PullToRefreshListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/control/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 467
    :cond_38
    return-void
.end method
