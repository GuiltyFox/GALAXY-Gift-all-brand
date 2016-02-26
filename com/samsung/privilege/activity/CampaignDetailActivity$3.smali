.class Lcom/samsung/privilege/activity/CampaignDetailActivity$3;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;->initialLayout(Z)V
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
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 896
    invoke-static {p1, p2}, Lcom/samsung/privilege/util/BBUtil;->IsSlideToDown(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 897
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$35(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VISIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 899
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabGallery()V
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$36(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 904
    :cond_1a
    return v2
.end method
