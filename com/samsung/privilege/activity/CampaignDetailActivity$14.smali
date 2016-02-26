.class Lcom/samsung/privilege/activity/CampaignDetailActivity$14;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;->doLikeAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

.field private final synthetic val$layoutLike:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Landroid/widget/RelativeLayout;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$14;->val$layoutLike:Landroid/widget/RelativeLayout;

    .line 2372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x1

    .line 2375
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->processLikeAction()V
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$13(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 2376
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doLike(Landroid/view/View;)V

    .line 2378
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$14;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2379
    .local v0, "likeClickAnimation2":Landroid/view/animation/Animation;
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2380
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2381
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2383
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$14;->val$layoutLike:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2384
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$14$1;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$14;->val$layoutLike:Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$14$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$14;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2470
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 2475
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$14;->val$layoutLike:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 2480
    return-void
.end method
