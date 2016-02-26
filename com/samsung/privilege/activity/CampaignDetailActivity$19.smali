.class Lcom/samsung/privilege/activity/CampaignDetailActivity$19;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$19;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    .line 2742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$19;)Lcom/samsung/privilege/activity/CampaignDetailActivity;
    .registers 2

    .prologue
    .line 2742
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$19;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2745
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$19;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->outToBottomAnimationSet()Landroid/view/animation/AnimationSet;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$39(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    .line 2746
    .local v1, "outToBottom":Landroid/view/animation/Animation;
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2747
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2748
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2750
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$19;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    const/high16 v3, 0x7f3f0000

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2751
    .local v0, "layoutInfo":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2753
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailActivity$19$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$19$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$19;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2790
    return-void
.end method
