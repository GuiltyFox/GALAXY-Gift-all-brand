.class Lcom/samsung/privilege/activity/CampaignListActivity$5;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

.field private final synthetic val$activityContext:Landroid/content/Context;

.field private final synthetic val$dialogConfirm:Landroid/app/Dialog;

.field private final synthetic val$imgOk:Landroid/widget/ImageView;

.field private final synthetic val$is_auto_login_fb:Z


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;Z)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$5;->val$dialogConfirm:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$5;->val$imgOk:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/samsung/privilege/activity/CampaignListActivity$5;->val$activityContext:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/samsung/privilege/activity/CampaignListActivity$5;->val$is_auto_login_fb:Z

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$5;->val$dialogConfirm:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1089
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$5;->val$imgOk:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$5$1;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$5;->val$activityContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$5;->val$is_auto_login_fb:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/privilege/activity/CampaignListActivity$5$1;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$5;Landroid/content/Context;Z)V

    .line 1094
    const-wide/16 v2, 0x1f4

    .line 1089
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1095
    return-void
.end method
