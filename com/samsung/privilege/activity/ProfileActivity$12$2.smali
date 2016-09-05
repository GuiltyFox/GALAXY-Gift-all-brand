.class Lcom/samsung/privilege/activity/ProfileActivity$12$2;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity$12;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/ProfileActivity$12;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity$12;)V
    .registers 2

    .prologue
    .line 497
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$12$2;->a:Lcom/samsung/privilege/activity/ProfileActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 506
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 511
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 500
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$12$2;->a:Lcom/samsung/privilege/activity/ProfileActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity$12;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 501
    return-void
.end method
