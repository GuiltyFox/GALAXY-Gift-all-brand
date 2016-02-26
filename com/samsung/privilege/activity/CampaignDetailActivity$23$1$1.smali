.class Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1$1;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;

.field private final synthetic val$layoutGallery:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;Landroid/widget/RelativeLayout;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1$1;->val$layoutGallery:Landroid/widget/RelativeLayout;

    .line 3031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    .line 3033
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$23;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$23;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$23;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$23;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v4, 0x7f1d000e

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 3034
    .local v0, "layoutButtonGallery":Landroid/widget/RelativeLayout;
    const v3, 0x7f020393

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 3035
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$23;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$23;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$23;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$23;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v4, 0x7f1d000f

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3036
    .local v1, "tvLineGallery":Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3037
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$23;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$23;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$23;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$23;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v4, 0x7f1d000d

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3038
    .local v2, "tvLineMap2":Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3040
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1$1;->val$layoutGallery:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3041
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$23;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$23;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$23;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$23;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gShowTab:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$40(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8e

    .line 3042
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$23;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$23;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$23;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$23;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gShowTab:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$40(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Info"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 3043
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$23;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$23;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$23;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$23;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->ShowTabInfo()V
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$45(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 3047
    :cond_80
    :goto_80
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$23;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$23;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$23;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$23;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$43(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V

    .line 3049
    :cond_8e
    return-void

    .line 3044
    :cond_8f
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$23;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$23;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$23;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$23;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gShowTab:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$40(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Map"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 3045
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$23;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$23$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$23;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$23;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$23;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->ShowTabMap()V
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$41(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    goto :goto_80
.end method
