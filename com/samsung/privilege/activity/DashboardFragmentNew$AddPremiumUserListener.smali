.class public Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "DashboardFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddPremiumUserListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;)V
    .registers 2

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;)Lcom/samsung/privilege/activity/DashboardFragmentNew;
    .registers 2

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 1158
    const-string v0, "gift.dashboard"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(AddPremiumUserListener|onComplete)response_code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_27

    .line 1247
    :goto_26
    return-void

    .line 1164
    :cond_27
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$6(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1166
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$7(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener$1;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_26
.end method
