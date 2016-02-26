.class Lcom/samsung/privilege/activity/DashboardFragmentNew$23;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew;->handleDashboardItem(Lcom/samsung/privilege/bean/DashboardItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

.field private final synthetic val$dashboardItem:Lcom/samsung/privilege/bean/DashboardItem;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$23;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    iput-object p2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$23;->val$dashboardItem:Lcom/samsung/privilege/bean/DashboardItem;

    .line 2220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2222
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2224
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$23;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$23;->val$dashboardItem:Lcom/samsung/privilege/bean/DashboardItem;

    # invokes: Lcom/samsung/privilege/activity/DashboardFragmentNew;->doRedeem(Lcom/samsung/privilege/bean/DashboardItem;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$19(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V

    .line 2226
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$23;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dashboard "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$23;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->mScreenName:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$1(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Click Yes Campaign Autoredeem"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$23;->val$dashboardItem:Lcom/samsung/privilege/bean/DashboardItem;

    iget v4, v4, Lcom/samsung/privilege/bean/DashboardItem;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$23;->val$dashboardItem:Lcom/samsung/privilege/bean/DashboardItem;

    invoke-virtual {v4}, Lcom/samsung/privilege/bean/DashboardItem;->GetCampaignNameForGA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 2227
    return-void
.end method
