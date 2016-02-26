.class Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1$1;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;

.field private final synthetic val$layoutMap:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;Landroid/widget/RelativeLayout;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1$1;->val$layoutMap:Landroid/widget/RelativeLayout;

    .line 2891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2893
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$21;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$21;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$21;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$21;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v1

    const v2, 0x7f1d0009

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2894
    .local v0, "layoutButtonMap":Landroid/widget/RelativeLayout;
    const v1, 0x7f020393

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2896
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1$1;->val$layoutMap:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2897
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$21;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$21;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$21;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$21;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gShowTab:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$40(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 2898
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$21;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$21;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$21;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$21;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gShowTab:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$40(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Info"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 2899
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$21;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$21;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$21;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$21;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v1

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->ShowTabInfo()V
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$45(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 2903
    :cond_53
    :goto_53
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$21;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$21;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$21;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$21;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$43(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V

    .line 2905
    :cond_61
    return-void

    .line 2900
    :cond_62
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$21;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$21;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$21;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$21;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gShowTab:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$40(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Gallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 2901
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1$1;->this$2:Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$21;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$21$1;)Lcom/samsung/privilege/activity/CampaignDetailActivity$21;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$21;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$21;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$21;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v1

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->ShowTabGallery()V
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$42(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    goto :goto_53
.end method
