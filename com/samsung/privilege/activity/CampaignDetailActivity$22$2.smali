.class Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$22;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$22;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$22;

    .line 2982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;)Lcom/samsung/privilege/activity/CampaignDetailActivity$22;
    .registers 2

    .prologue
    .line 2982
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$22;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 2985
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$22;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$22;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v0

    const-string v1, "VISIBLE"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$46(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V

    .line 2987
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$22;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$22;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2997
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3002
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3006
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$22;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$22;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v0

    const-string v1, "SHOWING"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$46(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V

    .line 3007
    return-void
.end method
