.class Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener$1;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;

    .line 2403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2405
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v1}, Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gProgressHistory:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$18(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 2407
    :try_start_c
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v1}, Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v1

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gProgressHistory:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$18(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2408
    const-string v1, "HISTORY"

    const-string v2, "gProgressHistory.setVisibility(View.GONE);"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_22} :catch_23

    .line 2413
    :cond_22
    :goto_22
    return-void

    .line 2409
    :catch_23
    move-exception v0

    .line 2410
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HISTORY"

    const-string v2, "gProgressHistory.setVisibility(View.GONE);"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method
