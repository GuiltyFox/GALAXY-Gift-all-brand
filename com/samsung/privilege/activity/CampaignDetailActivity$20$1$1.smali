.class Lcom/samsung/privilege/activity/CampaignDetailActivity$20$1$1;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$20$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$20$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$20$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$20$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$20$1;

    .line 2845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2847
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$20$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$20$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$20$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$20;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$20$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$20$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$20;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$20;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$20;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$20;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v1

    const v2, 0x7f1d0009

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2848
    .local v0, "layoutButtonMap":Landroid/widget/RelativeLayout;
    const v1, 0x7f0203a4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2855
    return-void
.end method
