.class Lcom/samsung/privilege/activity/CampaignListActivity$4;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity;->showDialogMessagePopup(Landroid/content/Context;Lcom/samsung/privilege/bean/MessagePopup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

.field private final synthetic val$activityContext:Landroid/content/Context;

.field private final synthetic val$messagePopup:Lcom/samsung/privilege/bean/MessagePopup;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;Lcom/samsung/privilege/bean/MessagePopup;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$messagePopup:Lcom/samsung/privilege/bean/MessagePopup;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$activityContext:Landroid/content/Context;

    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1029
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$messagePopup:Lcom/samsung/privilege/bean/MessagePopup;

    iget-object v0, v0, Lcom/samsung/privilege/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1030
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$messagePopup:Lcom/samsung/privilege/bean/MessagePopup;

    iget-object v0, v0, Lcom/samsung/privilege/bean/MessagePopup;->message_id:Ljava/lang/String;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$messagePopup:Lcom/samsung/privilege/bean/MessagePopup;

    iget-object v0, v0, Lcom/samsung/privilege/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 1031
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$messagePopup:Lcom/samsung/privilege/bean/MessagePopup;

    iget-object v0, v0, Lcom/samsung/privilege/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string v1, "2043"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1032
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$activityContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$messagePopup:Lcom/samsung/privilege/bean/MessagePopup;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MessagePopup;->message_text:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/privilege/activity/CampaignListActivity;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1063
    :goto_37
    return-void

    .line 1033
    :cond_38
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$messagePopup:Lcom/samsung/privilege/bean/MessagePopup;

    iget-object v0, v0, Lcom/samsung/privilege/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string v1, "2045"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1034
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$activityContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$messagePopup:Lcom/samsung/privilege/bean/MessagePopup;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->showDialogPointTransfer(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_37

    .line 1036
    :cond_50
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$activityContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$messagePopup:Lcom/samsung/privilege/bean/MessagePopup;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_37

    .line 1039
    :cond_5c
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$activityContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$messagePopup:Lcom/samsung/privilege/bean/MessagePopup;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_37

    .line 1041
    :cond_68
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$messagePopup:Lcom/samsung/privilege/bean/MessagePopup;

    iget-object v0, v0, Lcom/samsung/privilege/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string v1, "badge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 1042
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$messagePopup:Lcom/samsung/privilege/bean/MessagePopup;

    iget-object v0, v0, Lcom/samsung/privilege/bean/MessagePopup;->badgeAlert:Lcom/samsung/privilege/bean/BadgeAlert;

    iget-object v0, v0, Lcom/samsung/privilege/bean/BadgeAlert;->name:Ljava/lang/String;

    const-string v1, "Newbie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 1046
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$messagePopup:Lcom/samsung/privilege/bean/MessagePopup;

    iget-object v0, v0, Lcom/samsung/privilege/bean/MessagePopup;->badgeAlert:Lcom/samsung/privilege/bean/BadgeAlert;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$8(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/AnimationBadge;->showToastBadge(Lcom/samsung/privilege/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V

    goto :goto_37

    .line 1047
    :cond_96
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$messagePopup:Lcom/samsung/privilege/bean/MessagePopup;

    iget-object v0, v0, Lcom/samsung/privilege/bean/MessagePopup;->badgeAlert:Lcom/samsung/privilege/bean/BadgeAlert;

    iget-object v0, v0, Lcom/samsung/privilege/bean/BadgeAlert;->name:Ljava/lang/String;

    const-string v1, "GALAXY Newbie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 1049
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$messagePopup:Lcom/samsung/privilege/bean/MessagePopup;

    iget-object v0, v0, Lcom/samsung/privilege/bean/MessagePopup;->badgeAlert:Lcom/samsung/privilege/bean/BadgeAlert;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$8(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/AnimationBadge;->showToastBadge(Lcom/samsung/privilege/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V

    goto :goto_37

    .line 1051
    :cond_b8
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$messagePopup:Lcom/samsung/privilege/bean/MessagePopup;

    iget-object v0, v0, Lcom/samsung/privilege/bean/MessagePopup;->badgeAlert:Lcom/samsung/privilege/bean/BadgeAlert;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$8(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/AnimationBadge;->showToastBadge(Lcom/samsung/privilege/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V

    goto/16 :goto_37

    .line 1053
    :cond_c9
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$messagePopup:Lcom/samsung/privilege/bean/MessagePopup;

    iget-object v0, v0, Lcom/samsung/privilege/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string v1, "welcome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 1055
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->contentQT:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$9(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1056
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->viewTopShadow:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$10(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_37

    .line 1057
    :cond_e9
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$messagePopup:Lcom/samsung/privilege/bean/MessagePopup;

    iget-object v0, v0, Lcom/samsung/privilege/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string v1, "term"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 1058
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->val$activityContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->showDialogTerm(Landroid/content/Context;)V

    goto/16 :goto_37

    .line 1061
    :cond_fe
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$4;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iput-boolean v2, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsShowingMessage:Z

    goto/16 :goto_37
.end method
