.class Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

.field private b:I

.field private c:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;


# direct methods
.method private constructor <init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)V
    .registers 2

    .prologue
    .line 429
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Lcom/bzbs/lib/survey/control/PullToRefreshListView$1;)V
    .registers 3

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;-><init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 450
    iget-object v2, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->c:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v3, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->c:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-ne v0, v3, :cond_44

    move v0, v1

    :goto_a
    invoke-static {v2, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a(Lcom/bzbs/lib/survey/control/PullToRefreshListView;I)V

    .line 452
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 453
    iget v2, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->b:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 454
    iget-object v2, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-virtual {v2, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->c(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 457
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 460
    :cond_2a
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->e(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 461
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Z)Z

    .line 463
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    new-instance v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener$1;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener$1;-><init>(Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 474
    :cond_43
    :goto_43
    return-void

    .line 450
    :cond_44
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->d(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    goto :goto_a

    .line 471
    :cond_50
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->c:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->c:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    if-eq v0, v1, :cond_43

    .line 472
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    sget-object v1, Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a(Lcom/bzbs/lib/survey/control/PullToRefreshListView;Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;)V

    goto :goto_43
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 478
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 5

    .prologue
    .line 436
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->a(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->c:Lcom/bzbs/lib/survey/control/PullToRefreshListView$State;

    .line 438
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 439
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->b:I

    .line 440
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-static {v2}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->b(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 441
    iget-object v1, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    invoke-static {v0}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->c(Lcom/bzbs/lib/survey/control/PullToRefreshListView;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 444
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/PullToRefreshListView$HeaderAnimationListener;->a:Lcom/bzbs/lib/survey/control/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/control/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 446
    :cond_38
    return-void
.end method
