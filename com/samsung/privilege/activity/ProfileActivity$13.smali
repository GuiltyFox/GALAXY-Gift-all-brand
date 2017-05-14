.class Lcom/samsung/privilege/activity/ProfileActivity$13;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity;->i()V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/samsung/privilege/activity/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .registers 4

    .prologue
    .line 488
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->c:Lcom/samsung/privilege/activity/ProfileActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 491
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_31

    .line 495
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->c:Lcom/samsung/privilege/activity/ProfileActivity;

    const v1, 0x7f05004e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 496
    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$13$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/ProfileActivity$13$1;-><init>(Lcom/samsung/privilege/activity/ProfileActivity$13;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 513
    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 515
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->c:Lcom/samsung/privilege/activity/ProfileActivity;

    const v1, 0x7f05003c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 516
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 517
    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 545
    :goto_30
    return-void

    .line 522
    :cond_31
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->c:Lcom/samsung/privilege/activity/ProfileActivity;

    const v1, 0x7f05004f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 523
    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$13$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/ProfileActivity$13$2;-><init>(Lcom/samsung/privilege/activity/ProfileActivity$13;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 539
    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 541
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->c:Lcom/samsung/privilege/activity/ProfileActivity;

    const v1, 0x7f050040

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 542
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 543
    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_30
.end method
