.class Lcom/samsung/privilege/activity/ProfileActivity$14$2;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity$14;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/ProfileActivity$14;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity$14;)V
    .registers 2

    .prologue
    .line 584
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$14$2;->a:Lcom/samsung/privilege/activity/ProfileActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 593
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 598
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 587
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$14$2;->a:Lcom/samsung/privilege/activity/ProfileActivity$14;

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity$14;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 588
    return-void
.end method
