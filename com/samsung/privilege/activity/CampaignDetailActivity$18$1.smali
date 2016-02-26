.class Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$18;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$18;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$18;

    .line 2709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$18;
    .registers 2

    .prologue
    .line 2709
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$18;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 2712
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$18;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$18;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$18;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$18;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v0

    const-string v1, "VISIBLE"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$38(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V

    .line 2714
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$18;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$18;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$18;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$18;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2724
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 2729
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 2733
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$18;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$18;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$18;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$18;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v0

    const-string v1, "SHOWING"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$38(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V

    .line 2734
    return-void
.end method
