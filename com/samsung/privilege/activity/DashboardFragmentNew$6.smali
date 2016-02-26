.class Lcom/samsung/privilege/activity/DashboardFragmentNew$6;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemBigAutoRedeem(Lcom/samsung/privilege/bean/DashboardItem;Landroid/view/ViewGroup;ZZZ)Landroid/view/View;
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
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$6;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    iput-object p2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$6;->val$dashboardItem:Lcom/samsung/privilege/bean/DashboardItem;

    .line 1471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$6;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$6;->val$dashboardItem:Lcom/samsung/privilege/bean/DashboardItem;

    # invokes: Lcom/samsung/privilege/activity/DashboardFragmentNew;->handleDashboardItem(Lcom/samsung/privilege/bean/DashboardItem;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$18(Lcom/samsung/privilege/activity/DashboardFragmentNew;Lcom/samsung/privilege/bean/DashboardItem;)V

    .line 1475
    return-void
.end method
