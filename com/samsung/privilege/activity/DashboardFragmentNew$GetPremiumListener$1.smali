.class Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener$1;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener$1;->val$response_text:Ljava/lang/String;

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 834
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$GetPremiumListener$1;->val$response_text:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/activity/DashboardFragmentNew;->processJsonPremium(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$5(Lcom/samsung/privilege/activity/DashboardFragmentNew;Ljava/lang/String;)V

    .line 835
    return-void
.end method
