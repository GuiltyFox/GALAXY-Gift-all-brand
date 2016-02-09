.class public Lcom/tutorial/menuList/animations/ExpandHeightAnimation;
.super Landroid/view/animation/Animation;
.source "ExpandHeightAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static ANIMATION_DURATION:I

.field private static STEP_SIZE:I


# instance fields
.field private FromHeight:I

.field private LastHeight:I

.field private ToHeight:I

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/16 v0, 0xa

    sput v0, Lcom/tutorial/menuList/animations/ExpandHeightAnimation;->STEP_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;III)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "FromHeight"    # I
    .param p3, "ToHeight"    # I
    .param p4, "Duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/tutorial/menuList/animations/ExpandHeightAnimation;->view:Landroid/view/View;

    .line 20
    sput v2, Lcom/tutorial/menuList/animations/ExpandHeightAnimation;->ANIMATION_DURATION:I

    .line 21
    iput p2, p0, Lcom/tutorial/menuList/animations/ExpandHeightAnimation;->FromHeight:I

    .line 22
    iput p3, p0, Lcom/tutorial/menuList/animations/ExpandHeightAnimation;->ToHeight:I

    .line 23
    sget v0, Lcom/tutorial/menuList/animations/ExpandHeightAnimation;->ANIMATION_DURATION:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/tutorial/menuList/animations/ExpandHeightAnimation;->setDuration(J)V

    .line 24
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/tutorial/menuList/animations/ExpandHeightAnimation;->setRepeatCount(I)V

    .line 25
    invoke-virtual {p0, v2}, Lcom/tutorial/menuList/animations/ExpandHeightAnimation;->setFillAfter(Z)V

    .line 26
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tutorial/menuList/animations/ExpandHeightAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 27
    invoke-virtual {p0, p0}, Lcom/tutorial/menuList/animations/ExpandHeightAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 28
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 33
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 37
    const-string v1, "MyLog"

    const-string v2, "onAnimationRepeat**************************************************"

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/tutorial/menuList/animations/ExpandHeightAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 39
    .local v0, "lyp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/tutorial/menuList/animations/ExpandHeightAnimation;->LastHeight:I

    iget v2, p0, Lcom/tutorial/menuList/animations/ExpandHeightAnimation;->ToHeight:I

    div-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tutorial/menuList/animations/ExpandHeightAnimation;->LastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    iget-object v1, p0, Lcom/tutorial/menuList/animations/ExpandHeightAnimation;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 52
    const-string v1, "MyLog"

    const-string v2, "onAnimationStart**************************************************"

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/tutorial/menuList/animations/ExpandHeightAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 54
    .local v0, "lyp":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    iget-object v1, p0, Lcom/tutorial/menuList/animations/ExpandHeightAnimation;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iput v3, p0, Lcom/tutorial/menuList/animations/ExpandHeightAnimation;->LastHeight:I

    .line 62
    return-void
.end method
