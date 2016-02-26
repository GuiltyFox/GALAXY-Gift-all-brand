.class Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1$1;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;

    .line 2714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2716
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$18;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$18;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$18;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$18;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$18;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v4, 0x7f1d0005

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2717
    .local v0, "layoutButtonInfo":Landroid/widget/RelativeLayout;
    const v3, 0x7f0203a4

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2718
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$18;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$18;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$18;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$18;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$18;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v4, 0x7f1d0008

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2719
    .local v1, "tvLineInfo":Landroid/widget/TextView;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2720
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$18;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$18$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$18;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$18;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$18;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$18;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v4, 0x7f1d000a

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2721
    .local v2, "tvLineMap":Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2722
    return-void
.end method
