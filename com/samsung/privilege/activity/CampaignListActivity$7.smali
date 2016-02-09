.class Lcom/samsung/privilege/activity/CampaignListActivity$7;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity;->showDialogPointTransfer(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

.field private final synthetic val$activityContext:Landroid/content/Context;

.field private final synthetic val$dialogPoint:Landroid/app/Dialog;

.field private final synthetic val$imgOk:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$7;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$7;->val$dialogPoint:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$7;->val$imgOk:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/samsung/privilege/activity/CampaignListActivity$7;->val$activityContext:Landroid/content/Context;

    .line 1141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignListActivity$7;)Lcom/samsung/privilege/activity/CampaignListActivity;
    .registers 2

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$7;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$7;->val$dialogPoint:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1145
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$7;->val$imgOk:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$7$1;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$7;->val$activityContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/CampaignListActivity$7$1;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$7;Landroid/content/Context;)V

    .line 1150
    const-wide/16 v2, 0x3e8

    .line 1145
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1151
    return-void
.end method
