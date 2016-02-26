.class Lcom/samsung/privilege/activity/CampaignListActivity$5$1;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignListActivity$5;

.field private final synthetic val$activityContext:Landroid/content/Context;

.field private final synthetic val$is_auto_login_fb:Z


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity$5;Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$5$1;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$5;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$5$1;->val$activityContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$5$1;->val$is_auto_login_fb:Z

    .line 1103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$5$1;->val$activityContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$5$1;->val$is_auto_login_fb:Z

    invoke-static {v0, v1}, Lcom/samsung/privilege/UserLogin;->Logout(Landroid/content/Context;Z)V

    .line 1107
    return-void
.end method
