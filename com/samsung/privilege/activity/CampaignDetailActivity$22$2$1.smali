.class Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2$1;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;

    .line 2987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2989
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$22;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;)Lcom/samsung/privilege/activity/CampaignDetailActivity$22;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$22;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v4, 0x7f1d000e

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2990
    .local v0, "layoutButtonGallery":Landroid/widget/RelativeLayout;
    const v3, 0x7f0203a4

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2991
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$22;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;)Lcom/samsung/privilege/activity/CampaignDetailActivity$22;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$22;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v4, 0x7f1d000f

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2992
    .local v1, "tvLineGallery":Landroid/widget/TextView;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2993
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$22;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$22$2;)Lcom/samsung/privilege/activity/CampaignDetailActivity$22;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$22;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$22;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v4, 0x7f1d000d

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2994
    .local v2, "tvLineMap2":Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2995
    return-void
.end method
