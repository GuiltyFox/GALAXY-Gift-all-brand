.class Lcom/samsung/privilege/activity/CampaignDetailActivity$18;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;->ShowTabInfo()V
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
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$18;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    .line 2697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$18;)Lcom/samsung/privilege/activity/CampaignDetailActivity;
    .registers 2

    .prologue
    .line 2697
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$18;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2700
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$18;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->inFromBottomAnimationSet()Landroid/view/animation/AnimationSet;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$37(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 2701
    .local v0, "inFromBottom":Landroid/view/animation/Animation;
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2702
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2703
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2705
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$18;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    const/high16 v3, 0x7f3f0000

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2706
    .local v1, "layoutInfo":Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2707
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2709
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$18;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2736
    return-void
.end method
