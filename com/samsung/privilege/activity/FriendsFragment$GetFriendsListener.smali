.class public Lcom/samsung/privilege/activity/FriendsFragment$GetFriendsListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetFriendsListener"
.end annotation


# instance fields
.field private gIntOffset:I

.field final synthetic this$0:Lcom/samsung/privilege/activity/FriendsFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/FriendsFragment;I)V
    .registers 3
    .param p2, "offset"    # I

    .prologue
    .line 300
    iput-object p1, p0, Lcom/samsung/privilege/activity/FriendsFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 301
    iput p2, p0, Lcom/samsung/privilege/activity/FriendsFragment$GetFriendsListener;->gIntOffset:I

    .line 302
    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 306
    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/FriendsFragment;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(GetFriendsListener):response_code="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",response_text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 308
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_6c

    .line 310
    iget v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$GetFriendsListener;->gIntOffset:I

    if-nez v2, :cond_3a

    .line 311
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/FriendsFragment;->access$1(Lcom/samsung/privilege/activity/FriendsFragment;Ljava/util/ArrayList;)V

    .line 314
    :cond_3a
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # invokes: Lcom/samsung/privilege/activity/FriendsFragment;->ProcessJsonFriend(Ljava/lang/String;)V
    invoke-static {v2, p2}, Lcom/samsung/privilege/activity/FriendsFragment;->access$2(Lcom/samsung/privilege/activity/FriendsFragment;Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->gIsHasData:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/FriendsFragment;->access$3(Lcom/samsung/privilege/activity/FriendsFragment;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 317
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->gListOffset:I
    invoke-static {v2}, Lcom/samsung/privilege/activity/FriendsFragment;->access$4(Lcom/samsung/privilege/activity/FriendsFragment;)I

    move-result v2

    if-nez v2, :cond_5a

    .line 318
    const-string v2, "fql_friend"

    iget-object v3, p0, Lcom/samsung/privilege/activity/FriendsFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lcom/samsung/privilege/helper/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 322
    :cond_5a
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->gListOffset:I
    invoke-static {v2}, Lcom/samsung/privilege/activity/FriendsFragment;->access$4(Lcom/samsung/privilege/activity/FriendsFragment;)I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/FriendsFragment;->access$5(Lcom/samsung/privilege/activity/FriendsFragment;I)V

    .line 337
    :cond_65
    :goto_65
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/FriendsFragment;->access$8(Lcom/samsung/privilege/activity/FriendsFragment;Z)V

    .line 338
    return-void

    .line 324
    :cond_6c
    const-string v1, ""

    .line 326
    .local v1, "err_message":Ljava/lang/String;
    :try_start_6e
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0a02e4

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_7a} :catch_a8

    move-result-object v1

    .line 330
    :goto_7b
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    :cond_a2
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # invokes: Lcom/samsung/privilege/activity/FriendsFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/samsung/privilege/activity/FriendsFragment;->access$7(Lcom/samsung/privilege/activity/FriendsFragment;Ljava/lang/String;)V

    goto :goto_65

    .line 327
    :catch_a8
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/FriendsFragment$GetFriendsListener;->this$0:Lcom/samsung/privilege/activity/FriendsFragment;

    # getter for: Lcom/samsung/privilege/activity/FriendsFragment;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/FriendsFragment;->access$6(Lcom/samsung/privilege/activity/FriendsFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b
.end method
