.class Lcom/samsung/privilege/activity/DashboardFragmentNew$3$2;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$3;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew$3;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$3$2;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$3;

    .line 1130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v7, 0x1

    .line 1132
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1134
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/auth/premium_user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1135
    .local v1, "url":Ljava/lang/String;
    const-string v2, "gift.dashboard"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    .local v0, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    new-instance v2, Lcom/samsung/privilege/bean/InputItem;

    const-string v3, "token"

    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$3$2;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$3;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v4}, Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$3;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    const-string v2, "gift.dashboard"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "token="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$3$2;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$3;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v4}, Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$3;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$3$2;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$3;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v2}, Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$3;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$3$2;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$3;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$3;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, ""

    iget-object v5, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$3$2;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$3;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v5}, Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$3;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v5

    const v6, 0x7f09018d

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v7, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$17(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/app/ProgressDialog;)V

    .line 1142
    new-instance v2, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;

    iget-object v3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$3$2;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$3;

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static {v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew$3;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$3;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;)V

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 1143
    return-void
.end method
