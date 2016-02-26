.class Lcom/samsung/privilege/activity/CampaignDetailActivity$21;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabMap()V
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
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    .line 2875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$21;)Lcom/samsung/privilege/activity/CampaignDetailActivity;
    .registers 2

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2878
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->outToBottomAnimationSet()Landroid/view/animation/AnimationSet;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$39(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    .line 2879
    .local v1, "outToBottom":Landroid/view/animation/Animation;
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2880
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2881
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2883
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    const/high16 v3, 0x7f400000

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2884
    .local v0, "layoutMap":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2886
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$21;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2919
    return-void
.end method
