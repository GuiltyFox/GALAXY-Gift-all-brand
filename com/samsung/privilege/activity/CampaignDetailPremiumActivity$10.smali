.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$10;
.super Ljava/lang/Object;
.source "CampaignDetailPremiumActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doLikeAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

.field private final synthetic val$layoutLike:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Landroid/widget/LinearLayout;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$10;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$10;->val$layoutLike:Landroid/widget/LinearLayout;

    .line 1916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x1

    .line 1919
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$10;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->processLikeAction()V
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$13(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    .line 1920
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$10;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doLike(Landroid/view/View;)V

    .line 1922
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$10;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040010

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1923
    .local v0, "likeClickAnimation2":Landroid/view/animation/Animation;
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1924
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1925
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1927
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$10;->val$layoutLike:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1928
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$10$1;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$10;->val$layoutLike:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$10$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$10;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1944
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1949
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$10;->val$layoutLike:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1954
    return-void
.end method
