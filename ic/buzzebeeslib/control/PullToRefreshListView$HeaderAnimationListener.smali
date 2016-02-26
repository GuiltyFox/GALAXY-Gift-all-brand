.class Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/control/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderAnimationListener"
.end annotation


# instance fields
.field private height:I

.field private stateAtAnimationStart:Lic/buzzebeeslib/control/PullToRefreshListView$State;

.field final synthetic this$0:Lic/buzzebeeslib/control/PullToRefreshListView;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/control/PullToRefreshListView;)V
    .registers 2

    .prologue
    .line 434
    iput-object p1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/control/PullToRefreshListView;Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;)V
    .registers 3

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;-><init>(Lic/buzzebeeslib/control/PullToRefreshListView;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;)Lic/buzzebeeslib/control/PullToRefreshListView;
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 8
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 455
    iget-object v3, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->stateAtAnimationStart:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    sget-object v4, Lic/buzzebeeslib/control/PullToRefreshListView$State;->REFRESHING:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    if-ne v1, v4, :cond_44

    move v1, v2

    :goto_a
    # invokes: Lic/buzzebeeslib/control/PullToRefreshListView;->setHeaderPadding(I)V
    invoke-static {v3, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->access$4(Lic/buzzebeeslib/control/PullToRefreshListView;I)V

    .line 457
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 458
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 459
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    # getter for: Lic/buzzebeeslib/control/PullToRefreshListView;->scrollbarEnabled:Z
    invoke-static {v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->access$2(Lic/buzzebeeslib/control/PullToRefreshListView;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 462
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lic/buzzebeeslib/control/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 465
    :cond_2a
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    # getter for: Lic/buzzebeeslib/control/PullToRefreshListView;->bounceBackHeader:Z
    invoke-static {v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->access$5(Lic/buzzebeeslib/control/PullToRefreshListView;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 466
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-static {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->access$6(Lic/buzzebeeslib/control/PullToRefreshListView;Z)V

    .line 468
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    new-instance v2, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener$1;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener$1;-><init>(Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;)V

    .line 475
    const-wide/16 v4, 0x64

    .line 468
    invoke-virtual {v1, v2, v4, v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 479
    :cond_43
    :goto_43
    return-void

    .line 455
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_44
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    # getter for: Lic/buzzebeeslib/control/PullToRefreshListView;->header:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->access$3(Lic/buzzebeeslib/control/PullToRefreshListView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    goto :goto_a

    .line 476
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_50
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->stateAtAnimationStart:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    sget-object v2, Lic/buzzebeeslib/control/PullToRefreshListView$State;->REFRESHING:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    if-eq v1, v2, :cond_43

    .line 477
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    sget-object v2, Lic/buzzebeeslib/control/PullToRefreshListView$State;->PULL_TO_REFRESH:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    # invokes: Lic/buzzebeeslib/control/PullToRefreshListView;->setState(Lic/buzzebeeslib/control/PullToRefreshListView$State;)V
    invoke-static {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->access$8(Lic/buzzebeeslib/control/PullToRefreshListView;Lic/buzzebeeslib/control/PullToRefreshListView$State;)V

    goto :goto_43
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 483
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 441
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    # getter for: Lic/buzzebeeslib/control/PullToRefreshListView;->state:Lic/buzzebeeslib/control/PullToRefreshListView$State;
    invoke-static {v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->access$0(Lic/buzzebeeslib/control/PullToRefreshListView;)Lic/buzzebeeslib/control/PullToRefreshListView$State;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->stateAtAnimationStart:Lic/buzzebeeslib/control/PullToRefreshListView$State;

    .line 443
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 444
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->height:I

    .line 445
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    # getter for: Lic/buzzebeeslib/control/PullToRefreshListView;->headerContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->access$1(Lic/buzzebeeslib/control/PullToRefreshListView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 446
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    # getter for: Lic/buzzebeeslib/control/PullToRefreshListView;->scrollbarEnabled:Z
    invoke-static {v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->access$2(Lic/buzzebeeslib/control/PullToRefreshListView;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 449
    iget-object v1, p0, Lic/buzzebeeslib/control/PullToRefreshListView$HeaderAnimationListener;->this$0:Lic/buzzebeeslib/control/PullToRefreshListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/control/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 451
    :cond_38
    return-void
.end method
