.class public Lcom/tutorial/menuList/animations/ExpandAnimation;
.super Landroid/view/animation/Animation;
.source "ExpandAnimation.java"

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
    .line 14
    const/16 v0, 0x1e

    sput v0, Lcom/tutorial/menuList/animations/ExpandAnimation;->STEP_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;III)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "FromWidth"    # I
    .param p3, "ToWidth"    # I
    .param p4, "Duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tutorial/menuList/animations/ExpandAnimation;->view:Landroid/view/View;

    .line 18
    sput v2, Lcom/tutorial/menuList/animations/ExpandAnimation;->ANIMATION_DURATION:I

    .line 19
    iput p2, p0, Lcom/tutorial/menuList/animations/ExpandAnimation;->FromWidth:I

    .line 20
    iput p3, p0, Lcom/tutorial/menuList/animations/ExpandAnimation;->ToWidth:I

    .line 21
    sget v0, Lcom/tutorial/menuList/animations/ExpandAnimation;->ANIMATION_DURATION:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/tutorial/menuList/animations/ExpandAnimation;->setDuration(J)V

    .line 22
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/tutorial/menuList/animations/ExpandAnimation;->setRepeatCount(I)V

    .line 23
    invoke-virtual {p0, v2}, Lcom/tutorial/menuList/animations/ExpandAnimation;->setFillAfter(Z)V

    .line 24
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tutorial/menuList/animations/ExpandAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 25
    invoke-virtual {p0, p0}, Lcom/tutorial/menuList/animations/ExpandAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 26
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 32
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 37
    iget-object v1, p0, Lcom/tutorial/menuList/animations/ExpandAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 38
    .local v0, "lyp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/tutorial/menuList/animations/ExpandAnimation;->LastWidth:I

    iget v2, p0, Lcom/tutorial/menuList/animations/ExpandAnimation;->ToWidth:I

    div-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tutorial/menuList/animations/ExpandAnimation;->LastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 39
    iget-object v1, p0, Lcom/tutorial/menuList/animations/ExpandAnimation;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v1, p0, Lcom/tutorial/menuList/animations/ExpandAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 46
    .local v0, "lyp":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 47
    iget-object v1, p0, Lcom/tutorial/menuList/animations/ExpandAnimation;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iput v2, p0, Lcom/tutorial/menuList/animations/ExpandAnimation;->LastWidth:I

    .line 49
    return-void
.end method
