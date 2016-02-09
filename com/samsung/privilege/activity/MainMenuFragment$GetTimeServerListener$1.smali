.class Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener$1;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;

    iput p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener$1;->val$response_code:I

    iput-object p3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener$1;->val$response_text:Ljava/lang/String;

    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const v10, 0x7f0a018c

    .line 1077
    iget v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener$1;->val$response_code:I

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_a5

    .line 1079
    :try_start_9
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener$1;->val$response_text:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1080
    .local v4, "server_time":J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1081
    .local v1, "dateNow":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_1c

    .line 1107
    .end local v1    # "dateNow":Ljava/util/Date;
    .end local v4    # "server_time":J
    :cond_1b
    :goto_1b
    return-void

    .line 1083
    :catch_1c
    move-exception v3

    .line 1084
    .local v3, "ex":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v6}, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-eqz v6, :cond_1b

    .line 1086
    const/4 v0, 0x0

    .line 1088
    .local v0, "blnIsAdmin":Z
    :try_start_2a
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v6}, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_37} :catch_6a

    move-result v6

    if-eqz v6, :cond_3b

    .line 1089
    const/4 v0, 0x1

    .line 1094
    :cond_3b
    :goto_3b
    if-eqz v0, :cond_8c

    .line 1095
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v6}, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v8}, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    goto :goto_1b

    .line 1091
    :catch_6a
    move-exception v2

    .line 1092
    .local v2, "e2":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v6}, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v6

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$5(Lcom/samsung/privilege/activity/MainMenuFragment;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception := "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 1097
    .end local v2    # "e2":Ljava/lang/Exception;
    :cond_8c
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v6}, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v7}, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 1103
    .end local v0    # "blnIsAdmin":Z
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_a5
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v6}, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-eqz v6, :cond_1b

    .line 1104
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v6}, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v7}, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f0a018b

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    goto/16 :goto_1b
.end method
