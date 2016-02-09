.class public Lcom/tutorial/menuList/animations/CollapseAnimation;
.super Landroid/view/animation/Animation;
.source "CollapseAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static ANIMATION_DURATION:I

.field private static STEP_SIZE:I


# instance fields
.field private FromWidth:I

.field private LastWidth:I

.field private ToWidth:I

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/16 v0, 0x1e

    sput v0, Lcom/tutorial/menuList/animations/CollapseAnimation;->STEP_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;III)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "FromWidth"    # I
    .param p3, "ToWidth"    # I
    .param p4, "Duration"    # I

    .prologue
    const/4 v3, 0x0

    .line 17
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/tutorial/menuList/animations/CollapseAnimation;->view:Landroid/view/View;

    .line 19
    iget-object v1, p0, Lcom/tutorial/menuList/animations/CollapseAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 20
    .local v0, "lyp":Landroid/view/ViewGroup$LayoutParams;
    sput v3, Lcom/tutorial/menuList/animations/CollapseAnimation;->ANIMATION_DURATION:I

    .line 21
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/tutorial/menuList/animations/CollapseAnimation;->FromWidth:I

    .line 22
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/tutorial/menuList/animations/CollapseAnimation;->ToWidth:I

    .line 23
    sget v1, Lcom/tutorial/menuList/animations/CollapseAnimation;->ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/tutorial/menuList/animations/CollapseAnimation;->setDuration(J)V

    .line 24
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/tutorial/menuList/animations/CollapseAnimation;->setRepeatCount(I)V

    .line 25
    invoke-virtual {p0, v3}, Lcom/tutorial/menuList/animations/CollapseAnimation;->setFillAfter(Z)V

    .line 26
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, v1}, Lcom/tutorial/menuList/animations/CollapseAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 27
    invoke-virtual {p0, p0}, Lcom/tutorial/menuList/animations/CollapseAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 28
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 34
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 39
    iget-object v1, p0, Lcom/tutorial/menuList/animations/CollapseAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 40
    .local v0, "lyp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lcom/tutorial/menuList/animations/CollapseAnimation;->ToWidth:I

    div-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    iget-object v1, p0, Lcom/tutorial/menuList/animations/CollapseAnimation;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/tutorial/menuList/animations/CollapseAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 48
    .local v0, "lyp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/tutorial/menuList/animations/CollapseAnimation;->LastWidth:I

    .line 49
    return-void
.end method
