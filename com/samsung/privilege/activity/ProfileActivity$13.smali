.class Lcom/samsung/privilege/activity/ProfileActivity$13;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/ProfileActivity;

.field final synthetic val$imageAdditionalButtonArrow:Landroid/widget/ImageView;

.field final synthetic val$layoutAdditionalChild:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/ProfileActivity;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->val$layoutAdditionalChild:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->val$imageAdditionalButtonArrow:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 524
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->val$layoutAdditionalChild:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_31

    .line 528
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    const v5, 0x7f05004b

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 529
    .local v0, "animHide":Landroid/view/animation/Animation;
    new-instance v4, Lcom/samsung/privilege/activity/ProfileActivity$13$1;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/ProfileActivity$13$1;-><init>(Lcom/samsung/privilege/activity/ProfileActivity$13;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 546
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->val$layoutAdditionalChild:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 548
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    const v5, 0x7f050039

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 549
    .local v1, "animRotateDownToRight":Landroid/view/animation/Animation;
    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 550
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->val$imageAdditionalButtonArrow:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 578
    .end local v0    # "animHide":Landroid/view/animation/Animation;
    .end local v1    # "animRotateDownToRight":Landroid/view/animation/Animation;
    :goto_30
    return-void

    .line 555
    :cond_31
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    const v5, 0x7f05004c

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 556
    .local v3, "animShow":Landroid/view/animation/Animation;
    new-instance v4, Lcom/samsung/privilege/activity/ProfileActivity$13$2;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/ProfileActivity$13$2;-><init>(Lcom/samsung/privilege/activity/ProfileActivity$13;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 572
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->val$layoutAdditionalChild:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 574
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    const v5, 0x7f05003d

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 575
    .local v2, "animRotateRightToDown":Landroid/view/animation/Animation;
    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 576
    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileActivity$13;->val$imageAdditionalButtonArrow:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_30
.end method
