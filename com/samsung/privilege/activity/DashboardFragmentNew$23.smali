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

    .line 2158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2160
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2162
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$23;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$23;->val$dashboardItem:Lcom/samsung/privilege/bean/DashboardItem;

    # invokes: Lcom/samsung/privilege/activity/DashboardFragmentNew;->doRedeem(Lcom/samsung/privilege/bean/DashboardItem;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$19(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V

    .line 2163
    return-void
.end method
