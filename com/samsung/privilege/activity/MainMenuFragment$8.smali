.class Lcom/samsung/privilege/activity/MainMenuFragment$8;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

.field private final synthetic val$menuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/samsung/privilege/bean/MainMenuItemModel;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$8;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$8;->val$menuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 759
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 762
    :try_start_3
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$8;->val$menuItem:Lcom/samsung/privilege/bean/MainMenuItemModel;

    iget-object v2, v2, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    iget-object v1, v2, Lcom/samsung/privilege/bean/Purchasing;->InstallAppUrl:Ljava/lang/String;

    .line 763
    .local v1, "url":Ljava/lang/String;
    const-string v2, "{token}"

    iget-object v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$8;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 764
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$8;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$5(Lcom/samsung/privilege/activity/MainMenuFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(url install)="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$8;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_41} :catch_42

    .line 769
    .end local v1    # "url":Ljava/lang/String;
    :goto_41
    return-void

    .line 766
    :catch_42
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$8;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const-string v3, "Error while install application!"

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    goto :goto_41
.end method
